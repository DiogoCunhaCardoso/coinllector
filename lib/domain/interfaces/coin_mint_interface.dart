import 'package:coinllector_app/domain/entities/coin_mint.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class ICoinMintRepository {
  // MINTS -----------------------------------------------------------

  Future<Result<void>> addMintMark(int coinId, MintMark mintMark);

  Future<Result<void>> removeMintMark(int coinId, MintMark mintMark);

  Future<Result<List<CoinMint>>> getMintMarksForCoin(int coinId);
}
