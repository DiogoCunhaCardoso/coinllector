import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class AddCoinUseCase implements UseCase<void, Params<int>> {
  final IUserCoinRepository repository;

  AddCoinUseCase(this.repository);

  @override
  Future<Result<void>> call(Params<int> params) async {
    return await repository.addCoin(params.data);
  }
}
