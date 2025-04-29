import 'package:coinllector_app/data/mappers/coin_mint_mapper.dart';
import 'package:coinllector_app/data/models/coin_mint_model.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:sqflite/sqflite.dart';
import '../local/database/database_tables.dart';

class CoinMintRemoteDataSource {
  final Database db;

  CoinMintRemoteDataSource(this.db);

  Future<void> insertMintMark(int coinId, MintMark mintMark) async {
    await db.insert(DatabaseTables.coinMints, {
      DatabaseTables.userCoinId: coinId,
      'mint_mark': mintMark.name,
    });
  }

  Future<void> removeMintMark(int coinId, MintMark mintMark) async {
    await db.delete(
      DatabaseTables.coinMints,
      where: '${DatabaseTables.userCoinId} = ? AND mint_mark = ?',
      whereArgs: [coinId, mintMark.name],
    );
  }

  Future<List<CoinMintModel>> getMintMarksForCoin(int coinId) async {
    final result = await db.query(
      DatabaseTables.coinMints,
      where: '${DatabaseTables.userCoinId} = ?',
      whereArgs: [coinId],
    );
    return result.map((row) => CoinMintMapper.fromMap(row)).toList();
  }

  Future<bool> hasMintMark(int coinId, MintMark mintMark) async {
    final result = await db.query(
      DatabaseTables.coinMints,
      where: '${DatabaseTables.userCoinId} = ? AND mint_mark = ?',
      whereArgs: [coinId, mintMark.name],
      limit: 1,
    );
    return result.isNotEmpty;
  }
}
