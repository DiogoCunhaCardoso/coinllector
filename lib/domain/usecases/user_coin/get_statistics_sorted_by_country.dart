// lib/domain/usecases/user_coin/get_statistics_sorted_by_country.dart
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coin_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/country/get_countries.dart';
import 'package:coinllector_app/presentation/model/coin_stats.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';

// BUSINESS RULES: ---------------------------------------------------
// 1. Fetch all available countries from repository
// 2. Get user's owned coins count per country
// 3. For each country, get the total available coins count
// 4. Calculate statistics and sort countries by:
//    - Primary: Highest number of owned coins (descending)
//    - Secondary: Highest collection percentage (owned/total)

class GetStatisticsSortedByCountryUseCase
    implements UseCase<List<CoinStats>, NoParams> {
  final IUserCoinRepository userCoinRepository;
  final GetCountriesUseCase getCountriesUseCase;
  final GetCountryCoinCountUseCase getCountryCoinCountUseCase;
  final ICoinRepository coinRepository;

  GetStatisticsSortedByCountryUseCase(
    this.userCoinRepository,
    this.getCountriesUseCase,
    this.getCountryCoinCountUseCase,
    this.coinRepository,
  );

  @override
  Future<Result<List<CoinStats>>> call(NoParams _) async {
    try {
      // Fetch countries
      final countriesResult = await getCountriesUseCase(NoParams(null));
      final List countries;
      switch (countriesResult) {
        case Success(value: final data):
          countries = data;
        case Error(error: final e):
          return Result.error(Exception('Failed to get countries: $e'));
      }

      // Fetch user's coins per country
      final coinsByCountryResult =
          await userCoinRepository.getUserCoinsByCountry();
      final Map<CountryNames, int> coinsByCountry;
      switch (coinsByCountryResult) {
        case Success(value: final data):
          coinsByCountry = data;
        case Error(error: final e):
          return Result.error(Exception('Failed to get coins by country: $e'));
      }

      // Build stats for all countries
      final List<CoinStats> allStats = [];
      for (final country in countries) {
        final countryEnum = country.name;
        final ownedCount = coinsByCountry[countryEnum] ?? 0;

        // Get total coins count for the country
        final totalCountResult = await getCountryCoinCountUseCase.call(
          Params(countryEnum),
        );
        final int totalCount;
        switch (totalCountResult) {
          case Success(value: final count):
            totalCount = count;
          case Error(error: final e):
            return Result.error(
              Exception('Failed to get total coins for $countryEnum: $e'),
            );
        }

        allStats.add(CoinStats.fromCountry(country, ownedCount, totalCount));
      }

      // Sort countries by owned coins and collection percentage
      allStats.sort((a, b) {
        final ownedComparison = b.coinsOwned.compareTo(a.coinsOwned);
        if (ownedComparison != 0) return ownedComparison;

        return b.collectionPercentage.compareTo(a.collectionPercentage);
      });

      return Result.success(allStats);
    } catch (e) {
      return Result.error(Exception('Failed to get country statistics: $e'));
    }
  }
}
