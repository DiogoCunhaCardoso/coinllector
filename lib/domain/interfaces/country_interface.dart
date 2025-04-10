import 'package:coinllector_app/data/models/country_model.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class ICountryRepository {
  /// Retrieves a list of all countries.
  Future<Result<List<Country>>> getAllCountries();

  /// Retrieves a country based on its enum value.
  Future<Result<Country?>> getCountryByEnum(CountryNames countryEnum);

  /// Inserts a list of initial countries into the repository.
  Future<Result<void>> insertInitialCountries(List<CountryModel> countries);
}
