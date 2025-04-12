import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// PARAMS -----------------------------------------------------------
class UpdateCoinQualityParams {
  final int coinId;
  final CoinQuality quality;

  UpdateCoinQualityParams(this.coinId, this.quality);
}

// BUSINESS RULES: ---------------------------------------------------
// 1. User must own the coin to update its quality.
// 2. Only premium users can assign quality. (TODO: in future)
// - (Free users can own coins but can't assign a quality.)

class UpdateQualityOfOwnedCoinUseCase
    implements UseCase<void, Params<UpdateCoinQualityParams>> {
  final IUserCoinRepository repository;

  UpdateQualityOfOwnedCoinUseCase(this.repository);

  @override
  Future<Result<void>> call(Params<UpdateCoinQualityParams> params) async {
    final ownershipResult = await repository.userOwnsCoin(params.data.coinId);

    if (ownershipResult is Error) {
      return Result.error(Exception('Failed to verify coin ownership'));
    }

    final isOwned = (ownershipResult as Success<bool>).value;
    if (!isOwned) {
      return Result.error(Exception('User does not own this coin'));
    }

    return await repository.updateCoinQuality(
      params.data.coinId,
      params.data.quality,
    );
  }
}
