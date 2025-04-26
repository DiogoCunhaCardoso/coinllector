import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetOwnedCoinsByTypeMapUseCase
    implements UseCase<Map<CoinType, int>, NoParams> {
  final IUserCoinRepository repository;

  GetOwnedCoinsByTypeMapUseCase(this.repository);

  @override
  Future<Result<Map<CoinType, int>>> call(NoParams _) async {
    return await repository.getUserCoinsByType();
  }
}
