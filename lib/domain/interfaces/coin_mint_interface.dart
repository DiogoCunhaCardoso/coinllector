import 'package:coinllector_app/data/models/coin_mint_model.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class ICoinMintRepository {
  // MODIFY COLLECTION --------------------------------------------------------

  // MINTS -----------------------------------------------------------

  Future<Result<void>> addMintMark(int coinId, MintMark mintMark);

  Future<Result<void>> removeMintMark(int coinId, MintMark mintMark);

  //TODO change to CoinMint not CoinMintModel. Should use a mapper
  Future<Result<List<CoinMintModel>>> getMintMarksForCoin(int coinId);
}
