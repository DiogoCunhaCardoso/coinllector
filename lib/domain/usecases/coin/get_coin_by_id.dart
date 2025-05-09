import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetCoinByIdUseCase implements UseCase<Coin?, Params<int>> {
  final ICoinRepository repository;

  GetCoinByIdUseCase(this.repository);

  @override
  Future<Result<Coin?>> call(Params<int> params) {
    return repository.getCoinById(params.data);
  }
}
