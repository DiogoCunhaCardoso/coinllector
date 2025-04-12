import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class CheckIfUserOwnsCoinUseCase implements UseCase<bool, Params<int>> {
  final IUserCoinRepository repository;

  CheckIfUserOwnsCoinUseCase(this.repository);

  @override
  Future<Result<bool>> call(Params<int> params) async {
    return await repository.userOwnsCoin(params.data);
  }
}
