import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetOwnedCoinsUseCase implements UseCase<List<int>, NoParams> {
  final IUserCoinRepository repository;

  GetOwnedCoinsUseCase(this.repository);

  @override
  Future<Result<List<int>>> call(NoParams _) async {
    return await repository.getOwnedCoins();
  }
}
