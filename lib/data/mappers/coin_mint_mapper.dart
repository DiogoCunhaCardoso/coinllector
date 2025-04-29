import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/data/models/coin_mint_model.dart';
import 'package:coinllector_app/shared/enums/mint.dart';

class CoinMintMapper {
  // FROM MAP (Convert from database map to data model) --------------------------------
  static CoinMintModel fromMap(Map<String, dynamic> map) {
    final mintMark = MintMark.values.byName(
      map[DatabaseTables.mintMark] as String,
    );
    return CoinMintModel(
      mintId: map[DatabaseTables.mintId] as int,
      userCoinId: map[DatabaseTables.userCoinId] as int,
      mintMark: mintMark,
    );
  }
}
