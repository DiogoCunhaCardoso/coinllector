import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/data/models/country_model.dart';
import 'package:logging/logging.dart';

import '../datasources/remote/country_local_datasource.dart';

class CountryRepositoryImpl implements ICountryRepository {
  final CountryLocalDataSource dataSource;
  final _log = Logger('COUNTRY_REPOSITORY');

  CountryRepositoryImpl(this.dataSource);

  @override
  Future<Result<List<Country>>> getAllCountries() async {
    try {
      final models = await dataSource.getCountries();
      final countries = models.map((e) => e.toEntity()).toList();
      _log.info('Found ${models.length} countries');
      return Result.success(countries);
    } catch (e) {
      _log.severe('Error fetching countries: $e');
      return Result.error(Exception('Failed to fetch countries: $e'));
    }
  }

  @override
  Future<Result<Country?>> getCountryByEnum(CountryNames countryEnum) async {
    try {
      final model = await dataSource.getCountryByEnum(countryEnum);
      if (model == null) {
        _log.warning('No country found for enum: $countryEnum');
        return Result.success(null);
      }

      _log.info('Found country: ${countryEnum.name}');
      return Result.success(model.toEntity());
    } catch (e) {
      _log.severe('Error fetching country by enum: $e');
      return Result.error(Exception('Failed to fetch country: $e'));
    }
  }

  @override
  Future<Result<void>> insertInitialCountries(
    List<CountryModel> countries,
  ) async {
    try {
      await dataSource.insertInitialCountries(countries);
      _log.info('Successfully inserted all countries');
      return Result.success(null);
    } catch (e) {
      _log.severe('Error inserting countries: $e');
      return Result.error(Exception('Failed to insert countries: $e'));
    }
  }
}
