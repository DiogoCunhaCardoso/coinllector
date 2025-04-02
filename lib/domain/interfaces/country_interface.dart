import 'package:coinllector_app/data/models/country_model.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

abstract class ICountryRepository {
  Future<List<Country>> getCountries();
  Future<Country?> getCountryByEnum(CountryNames countryEnum);
  Future<void> insertInitialCountries(List<CountryModel> countries);
}
