import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class RemoveCoinUseCase implements UseCase<void, Params<int>> {
  final IUserCoinRepository repository;

  RemoveCoinUseCase(this.repository);

  @override
  Future<Result<void>> call(Params<int> params) async {
    return await repository.removeCoin(params.data);
  }
}
