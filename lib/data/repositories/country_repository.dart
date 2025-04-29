import 'package:coinllector_app/data/mappers/country_mapper.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/data/models/country_model.dart';
import 'package:logging/logging.dart';

import '../datasources/remote/country_remote_datasource.dart';

class CountryRepositoryImpl implements ICountryRepository {
  final CountryRemoteDataSource dataSource;
  final _log = Logger('COUNTRY_REPOSITORY');

  CountryRepositoryImpl(this.dataSource);

  // GET ---------------------------------------------------------------------------

  @override
  Future<Result<List<Country>>> getAllCountries() async {
    try {
      final model = await dataSource.getCountries();
      final countries = model.map((el) => CountryMapper.toEntity(el)).toList();
      _log.info('Found ${model.length} countries');
      return Result.success(countries);
    } catch (e, stackTrace) {
      _log.severe('Error fetching getAllCountries', e, stackTrace);
      return Result.error(Exception('Failed to fetch countries.'));
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
      return Result.success(CountryMapper.toEntity(model));
    } catch (e, stackTrace) {
      _log.severe('Error fetching getCountryByEnum', e, stackTrace);
      return Result.error(Exception('Failed to fetch country.'));
    }
  }

  // ON INIT ------------------------------------------------------------------------

  @override
  Future<Result<void>> insertInitialCountries(
    List<CountryModel> countries,
  ) async {
    try {
      await dataSource.insertInitialCountries(countries);
      _log.info('Successfully inserted all countries');
      return Result.success(null);
    } catch (e, stackTrace) {
      _log.severe('Error loading insertInitialCountries', e, stackTrace);
      return Result.error(Exception('Failed to insert countries.'));
    }
  }
}
