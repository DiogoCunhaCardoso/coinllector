import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetOwnedCoinCountUseCase implements UseCase<int, NoParams> {
  final IUserCoinRepository repository;

  GetOwnedCoinCountUseCase(this.repository);

  @override
  Future<Result<int>> call(NoParams _) async {
    return await repository.getOwnedCoinsCount();
  }
}
