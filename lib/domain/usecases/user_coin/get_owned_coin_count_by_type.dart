import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetOwnedCoinCountForTypeUseCase
    implements UseCase<int, Params<CoinType>> {
  final IUserCoinRepository repository;

  GetOwnedCoinCountForTypeUseCase(this.repository);

  @override
  Future<Result<int>> call(Params<CoinType> params) {
    return repository.getUserCoinsByType(params.data);
  }
}
