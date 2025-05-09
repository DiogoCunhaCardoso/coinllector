import 'package:coinllector_app/domain/entities/coin_mint.dart';
import 'package:coinllector_app/domain/usecases/coin_mint/add_mint_mark.dart';
import 'package:coinllector_app/domain/usecases/coin_mint/get_mint_marks_for_coin.dart';
import 'package:coinllector_app/domain/usecases/coin_mint/remove_mint_mark.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

class CoinMintProvider extends ChangeNotifier {
  final _log = Logger('COIN_MINT_PROVIDER');

  final AddMintMarkUseCase _addMintMarkUseCase;
  final RemoveMintMarkUseCase _removeMintMarkUseCase;
  final GetMintMarksForCoinUseCase _getMintMarksForCoinUseCase;

  final UserCoinProvider _userCoinProvider;

  CoinMintProvider({
    required AddMintMarkUseCase addMintMarkUseCase,
    required RemoveMintMarkUseCase removeMintMarkUseCase,
    required GetMintMarksForCoinUseCase getMintMarksForCoinUseCase,
    required UserCoinProvider userCoinProvider,
  }) : _addMintMarkUseCase = addMintMarkUseCase,
       _removeMintMarkUseCase = removeMintMarkUseCase,
       _getMintMarksForCoinUseCase = getMintMarksForCoinUseCase,
       _userCoinProvider = userCoinProvider;

  List<CoinMint> _mintMarks = [];

  Future<bool> addMintMark(int coinId, MintMark mintMark) async {
    final result = await _addMintMarkUseCase(
      AddMintMarkParams(coinId, mintMark),
    );

    switch (result) {
      case Success():
        notifyListeners();
        return true;
      case Error(error: final e):
        _log.severe('Error adding mint mark: $e');
        return false;
    }
  }

  Future<bool> removeMintMark(int coinId, MintMark mintMark) async {
    final result = await _removeMintMarkUseCase(
      RemoveMintMarkParams(coinId, mintMark),
    );

    switch (result) {
      case Success():
        notifyListeners();
        return true;
      case Error(error: final e):
        _log.severe('Error removing mint mark: $e');
        return false;
    }
  }

  Future<void> toggleMintMark(int coinId, MintMark mintMark) async {
    final hasMint = await hasMintMark(coinId, mintMark);

    if (hasMint) {
      await removeMintMark(coinId, mintMark);
    } else {
      await addMintMark(coinId, mintMark);
    }

    // Ensure the base coin is owned if adding a mint mark
    if (!hasMint && !_userCoinProvider.isOwned(coinId)) {
      await _userCoinProvider.toggleCoinOwnership(coinId);
    }

    notifyListeners();
  }

  Future<List<CoinMint>> getMintMarksForCoin(int coinId) async {
    final result = await _getMintMarksForCoinUseCase(Params(coinId));

    switch (result) {
      case Success(value: final mints):
        return mints;
      case Error(error: final e):
        _log.severe('Error getting mint marks: $e');
        return [];
    }
  }

  Future<bool> hasMintMark(int coinId, MintMark mintMark) async {
    final result = await _getMintMarksForCoinUseCase(Params(coinId));

    switch (result) {
      case Success(value: final mints):
        return mints.any((m) => m.mintMark == mintMark);
      case Error(error: final e):
        _log.severe('Error checking mint mark: $e');
        return false;
    }
  }

  Future<bool> hasAllMintMarks(int coinId) async {
    final result = await _getMintMarksForCoinUseCase(Params(coinId));

    switch (result) {
      case Success(value: final mints):
        // Check if the coin has all possible mint marks
        final mintCount = mints.length;
        return mintCount == MintMark.values.length;
      case Error(error: final e):
        _log.severe('Error checking mint marks: $e');
        return false;
    }
  }

  Future<int> getOwnedMintCount(int coinId) async {
    // First check local cache
    final localCount =
        _mintMarks.where((mint) => mint.userCoinId == coinId).length;
    if (localCount > 0) return localCount;

    // Fetch from database if not in cache
    final result = await _getMintMarksForCoinUseCase(Params(coinId));

    switch (result) {
      case Success(value: final mints):
        return mints.length;
      case Error():
        return 0;
    }
  }
}
