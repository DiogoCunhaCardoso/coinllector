// lib/domain/usecases/user_coin/get_statistics_sorted_by_country.dart
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/presentation/model/country_coin_stats.dart';
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
    implements UseCase<List<CountryCoinStats>, NoParams> {
  final IUserCoinRepository userCoinRepository;
  final ICountryRepository countryRepository;
  final ICoinRepository coinRepository;

  GetStatisticsSortedByCountryUseCase(
    this.userCoinRepository,
    this.countryRepository,
    this.coinRepository,
  );

  @override
  Future<Result<List<CountryCoinStats>>> call(NoParams _) async {
    try {
      // Fetch all countries
      final countriesResult = await countryRepository.getAllCountries();
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
      final List<CountryCoinStats> allStats = [];
      for (final country in countries) {
        final countryEnum = country.name;
        final ownedCount = coinsByCountry[countryEnum] ?? 0;

        // Get total coins count for the country
        final totalCountResult = await coinRepository.getCountryTotalCoinCount(
          countryEnum,
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

        allStats.add(
          CountryCoinStats(
            name: countryEnum,
            coinsOwned: ownedCount,
            totalCoins: totalCount,
            flagImage: country.flagImage,
          ),
        );
      }

      // Sort countries by owned coins and collection percentage
      allStats.sort((a, b) {
        final ownedComparison = b.coinsOwned.compareTo(a.coinsOwned);
        if (ownedComparison != 0) return ownedComparison;

        final aPercentage = a.totalCoins > 0 ? a.coinsOwned / a.totalCoins : 0;
        final bPercentage = b.totalCoins > 0 ? b.coinsOwned / b.totalCoins : 0;
        return bPercentage.compareTo(aPercentage);
      });

      return Result.success(allStats); // Return all stats
    } catch (e) {
      return Result.error(Exception('Failed to get country statistics: $e'));
    }
  }
}
