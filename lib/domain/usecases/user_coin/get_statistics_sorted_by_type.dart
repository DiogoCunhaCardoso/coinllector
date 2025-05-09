import 'package:coinllector_app/domain/usecases/coin/get_coin_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type_map.dart';
import 'package:coinllector_app/presentation/model/coin_stats.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

class GetStatisticsSortedByTypeUseCase
    implements UseCase<List<CoinStats>, NoParams> {
  final GetOwnedCoinsByTypeMapUseCase getOwnedCoinsByTypeMapUseCase;
  final GetTypeCoinCountUseCase getTypeCoinCountUseCase;

  GetStatisticsSortedByTypeUseCase(
    this.getOwnedCoinsByTypeMapUseCase,
    this.getTypeCoinCountUseCase,
  );

  @override
  Future<Result<List<CoinStats>>> call(NoParams _) async {
    try {
      // 1. Get owned coins count by type (with microstates filter applied)
      final coinsByTypeResult = await getOwnedCoinsByTypeMapUseCase(
        NoParams(null),
      );
      final Map<CoinType, int> coinsByType;

      switch (coinsByTypeResult) {
        case Success(value: final data):
          coinsByType = data;
        case Error(error: final e):
          return Result.error(Exception('Failed to get coins by type: $e'));
      }

      // 2. Build stats for all coin types
      final List<CoinStats> allStats = [];

      for (final coinType in CoinType.values) {
        final ownedCount = coinsByType[coinType] ?? 0;

        // 3. Get total coins count for the type (with microstates filter applied)
        final totalCountResult = await getTypeCoinCountUseCase(
          TypeCoinCountParams(coinType),
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

      // 4. Sort by owned count (descending) then by percentage (descending)
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
