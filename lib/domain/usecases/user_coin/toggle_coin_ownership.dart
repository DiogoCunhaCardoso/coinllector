import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// BUSINESS RULES: ---------------------------------------------------
// 1. Check if user already owns the coin
// 2. If owned, remove it from collection
//      2.1 Set Quality to null (can only have quality if owned)
// 3. If not owned, add it to collection
// 4. Return whether the coin is now owned (true) or not owned (false)

class ToggleCoinOwnershipUseCase implements UseCase<bool, Params<int>> {
  final IUserCoinRepository repository;

  ToggleCoinOwnershipUseCase(this.repository);

  @override
  Future<Result<bool>> call(Params<int> params) async {
    final coinId = params.data;

    // Check current ownership status
    final ownershipResult = await repository.userOwnsCoin(coinId);

    if (ownershipResult is Error) {
      return Result.error(Exception('Failed to check coin ownership status'));
    }

    final isCurrentlyOwned = (ownershipResult as Success<bool>).value;
    Result<void> operationResult;

    // Toggle based on current status
    if (isCurrentlyOwned) {
      // Remove the coin if already owned & remove quality

      operationResult = await repository.removeCoin(coinId);
      await repository.updateCoinQuality(coinId, null);
      if (operationResult is Error) {
        return Result.error(
          Exception('Failed to remove coin: ${operationResult.error}'),
        );
      }
      return Result.success(false); // Now not owned
    } else {
      // Add the coin if not owned
      operationResult = await repository.addCoin(coinId);
      if (operationResult is Error) {
        return Result.error(
          Exception('Failed to add coin: ${operationResult.error}'),
        );
      }
      return Result.success(true); // Now owned
    }
  }
}
