// lib/domain/usecases/user_coin/get_coin_quality.dart
import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// BUSINESS RULES: ---------------------------------------------------
// 1. User must own the coin to get its quality

class GetCoinQualityUseCase implements UseCase<CoinQuality?, Params<int>> {
  final IUserCoinRepository repository;

  GetCoinQualityUseCase(this.repository);

  @override
  Future<Result<CoinQuality?>> call(Params<int> params) async {
    final ownershipResult = await repository.userOwnsCoin(params.data);

    if (ownershipResult is Error) {
      return Result.error(Exception('Failed to verify coin ownership'));
    }

    final isOwned = (ownershipResult as Success<bool>).value;
    if (!isOwned) {
      return Result.error(Exception('User does not own this coin'));
    }

    return await repository.getCoinQuality(params.data);
  }
}
