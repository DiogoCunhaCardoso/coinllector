import 'package:coinllector_app/data/models/country_model.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';

abstract class ICountryRepository {
  Future<Result<List<Country>>> getCountries();
  Future<Result<Country?>> getCountryByEnum(CountryNames countryEnum);
  Future<Result<void>> insertInitialCountries(List<CountryModel> countries);
}
