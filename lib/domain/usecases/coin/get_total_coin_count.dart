import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetTotalCoinCountUseCase implements UseCase<int, NoParams> {
  final ICoinRepository repository;

  GetTotalCoinCountUseCase(this.repository);

  @override
  Future<Result<int>> call(NoParams _) {
    return repository.getTotalCoinCount();
  }
}
