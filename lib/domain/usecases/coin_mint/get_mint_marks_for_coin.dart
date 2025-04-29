import 'package:coinllector_app/domain/interfaces/coin_mint_interface.dart';
import 'package:coinllector_app/data/models/coin_mint_model.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetMintMarksForCoinUseCase
    implements UseCase<List<CoinMintModel>, Params<int>> {
  final ICoinMintRepository repository;

  GetMintMarksForCoinUseCase(this.repository);

  @override
  Future<Result<List<CoinMintModel>>> call(Params<int> params) async {
    return await repository.getMintMarksForCoin(params.data);
  }
}
