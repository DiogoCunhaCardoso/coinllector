import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:coinllector_app/utils/result.dart';

class CountryProvider extends ChangeNotifier {
  final _log = Logger("COUNTRY_PROVIDER");
  final ICountryRepository _countryRepository;

  List<Country> _countries = [];
  bool _isLoading = false;

  CountryProvider({required ICountryRepository countryRepository})
    : _countryRepository = countryRepository;

  // Getters
  List<Country> get countries => _countries;
  bool get isLoading => _isLoading;

  // Initialize country data
  Future<void> init() async {
    _isLoading = true;
    notifyListeners();

    await _loadCountries();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> _loadCountries() async {
    final result = await _countryRepository.getCountries();

    switch (result) {
      case Success():
        _countries = result.value;
        _log.info('Loaded ${_countries.length} countries');
      case Error():
        _log.severe('Error loading countries: ${result.error}');
    }
  }

  // Get a specific country by enum
  Future<Country?> getCountryByEnum(CountryNames countryEnum) async {
    // Otherwise fetch from repository
    final result = await _countryRepository.getCountryByEnum(countryEnum);

    switch (result) {
      case Success():
        return result.value;
      case Error():
        _log.severe('Error fetching country by enum: ${result.error}');
        return null;
    }
  }
}
