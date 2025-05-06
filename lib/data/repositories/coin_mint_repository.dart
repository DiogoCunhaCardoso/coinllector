import 'package:coinllector_app/data/datasources/remote/coin_mint_remote_datasource.dart';
import 'package:coinllector_app/data/mappers/coin_mint_mapper.dart';
import 'package:coinllector_app/domain/entities/coin_mint.dart';
import 'package:coinllector_app/domain/interfaces/coin_mint_interface.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:logging/logging.dart';

class CoinMintRepositoryImpl implements ICoinMintRepository {
  final _log = Logger('COIN_MINT_REPOSITORY');
  final CoinMintRemoteDataSource dataSource;

  CoinMintRepositoryImpl(this.dataSource);

  // MINTS -----------------------------------------------------------------

  @override
  Future<Result<void>> addMintMark(int coinId, MintMark mintMark) async {
    try {
      await dataSource.insertMintMark(coinId, mintMark);
      _log.info("Added mint mark ${mintMark.name} for coin $coinId");
      return Result.success(null);
    } catch (e, stackTrace) {
      _log.severe('Error adding mint mark', e, stackTrace);
      return Result.error(Exception('Failed to add mint mark'));
    }
  }

  @override
  Future<Result<void>> removeMintMark(int coinId, MintMark mintMark) async {
    try {
      await dataSource.removeMintMark(coinId, mintMark);
      _log.info("Removed mint mark ${mintMark.name} for coin $coinId");
      return Result.success(null);
    } catch (e, stackTrace) {
      _log.severe('Error removing mint mark', e, stackTrace);
      return Result.error(Exception('Failed to remove mint mark'));
    }
  }

  @override
  Future<Result<List<CoinMint>>> getMintMarksForCoin(int coinId) async {
    try {
      final mints = await dataSource.getMintMarksForCoin(coinId);
      _log.info('Found ${mints.length} mint marks for coin $coinId');

      final mintMarks = mints.map((el) => CoinMintMapper.toEntity(el)).toList();

      return Result.success(mintMarks);
    } catch (e, stackTrace) {
      _log.severe('Error getting mint marks', e, stackTrace);
      return Result.error(Exception('Failed to get mint marks'));
    }
  }
}
