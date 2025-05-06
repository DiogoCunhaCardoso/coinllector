import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coin_count_by_type.dart';
import 'package:coinllector_app/presentation/model/coin_stats.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// BUSINESS RULES: ---------------------------------------------------
// 1. Get user's owned coins count per coin type
// 2. For each coin type, get the total available coins count
// 3. Calculate statistics and sort coin types by:
//    - Primary: Highest number of owned coins (descending)
//    - Secondary: Highest collection percentage (owned/total)

class GetStatisticsSortedByTypeUseCase
    implements UseCase<List<CoinStats>, NoParams> {
  final IUserCoinRepository userCoinRepository;
  final GetTypeCoinCountUseCase getTypeCoinCountUseCase;

  GetStatisticsSortedByTypeUseCase(
    this.userCoinRepository,
    this.getTypeCoinCountUseCase,
  );

  @override
  Future<Result<List<CoinStats>>> call(NoParams _) async {
    try {
      // Fetch user's owned coins by type
      final coinsByTypeResult = await userCoinRepository.getUserCoinsByType();
      final Map<CoinType, int> coinsByType;
      switch (coinsByTypeResult) {
        case Success(value: final data):
          coinsByType = data;
        case Error(error: final e):
          return Result.error(Exception('Failed to get coins by type: $e'));
      }

      // Build stats for all coin types
      final List<CoinStats> allStats = [];
      for (final coinType in CoinType.values) {
        final ownedCount = coinsByType[coinType] ?? 0;

        // Get total coins count for the coin type
        final totalCountResult = await getTypeCoinCountUseCase.call(
          Params(coinType),
        );
        final int totalCount;
        switch (totalCountResult) {
          case Success(value: final count):
            totalCount = count;
          case Error(error: final e):
            return Result.error(
              Exception('Failed to get total coins for $coinType: $e'),
            );
        }

        allStats.add(CoinStats.fromType(coinType, ownedCount, totalCount));
      }

      // Sort coin types by owned coins and collection percentage
      allStats.sort((a, b) {
        final ownedComparison = b.coinsOwned.compareTo(a.coinsOwned);
        if (ownedComparison != 0) return ownedComparison;

        return b.collectionPercentage.compareTo(a.collectionPercentage);
      });

      return Result.success(allStats);
    } catch (e) {
      return Result.error(Exception('Failed to get coin type statistics: $e'));
    }
  }
}

// I know according to clean arquitecture I should retrun a domain model for this and then convert that domain model into the presentation model.
// But I just did the presentation directly here. This I already did this with another domain models, so I already understand it.
