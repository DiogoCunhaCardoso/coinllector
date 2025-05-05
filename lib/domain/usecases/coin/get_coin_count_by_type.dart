import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

//TODO: Mudar coin count se user prefs tirar as microstates
class GetTypeCoinCountUseCase implements UseCase<int, Params<CoinType>> {
  final ICoinRepository repository;

  GetTypeCoinCountUseCase(this.repository);

  @override
  Future<Result<int>> call(Params<CoinType> params) {
    return repository.getTypeTotalCoinCount(params.data);
  }
}
