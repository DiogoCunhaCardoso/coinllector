import 'package:coinllector_app/domain/entities/coin_mint.dart';
import 'package:coinllector_app/domain/interfaces/coin_mint_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetMintMarksForCoinUseCase
    implements UseCase<List<CoinMint>, Params<int>> {
  final ICoinMintRepository repository;

  GetMintMarksForCoinUseCase(this.repository);

  @override
  Future<Result<List<CoinMint>>> call(Params<int> params) async {
    return await repository.getMintMarksForCoin(params.data);
  }
}
