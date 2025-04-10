import 'package:coinllector_app/data/datasources/local/preferences/user_preferences.dart';
import 'package:coinllector_app/domain/usecases/country/get_countries.dart';
import 'package:coinllector_app/domain/usecases/country/get_country_by_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

/// Manages country data and provides it to the Presentation Layer
class CountryProvider extends ChangeNotifier {
  final _log = Logger("COUNTRY_PROVIDER");

  // Dependencies (use cases)
  final GetCountriesUseCase _getCountriesUseCase;
  final GetCountryByEnumUseCase _getCountryByEnumUseCase;

  final List<CountryNames> _microstatesToHide = [
    CountryNames.ANDORRA,
    CountryNames.MONACO,
    CountryNames.SAN_MARINO,
    CountryNames.VATICANO,
  ];

  CountryProvider({
    required GetCountriesUseCase getCountriesUseCase,
    required GetCountryByEnumUseCase getCountryByEnumUseCase,
  }) : _getCountriesUseCase = getCountriesUseCase,
       _getCountryByEnumUseCase = getCountryByEnumUseCase;

  // State
  List<Country> _countries = [];
  bool _isLoading = false;
  Exception? _loadError;

  // Cache
  final Map<CountryNames, Country> _countryCache = {};
  Future<List<Country>>? _countriesFuture; // For FutureBuilder compatibility

  // Public getters
  List<Country> get countries => _countries;
  bool get isLoading => _isLoading;
  Exception? get error => _loadError;

  // ====================== PUBLIC METHODS ====================== //

  /// Initializes the provider by loading countries if not already loading
  Future<void> init() async {
    if (_isLoading) return;

    _startLoading();

    try {
      _countriesFuture = _fetchCountries();
      _countries = await _countriesFuture!;
    } catch (e) {
      _handleLoadError(e);
    } finally {
      _stopLoading();
    }
  }

  /// Loads countries, returns existing future if already loading
  Future<List<Country>> getCountries() {
    if (_countriesFuture != null) {
      return _countriesFuture!;
    }

    if (!_isLoading && _countries.isEmpty) {
      init();
    }

    _countriesFuture = _fetchCountries();
    return _countriesFuture!;
  }

  /// Gets a country by enum, using cache if available
  Future<Country?> getCountry(CountryNames countryEnum) async {
    // Return cached country if available
    if (_countryCache.containsKey(countryEnum)) {
      return _countryCache[countryEnum];
    }

    // Fetch and cache the country
    final country = await _fetchCountryByEnum(countryEnum);
    if (country != null) {
      _countryCache[countryEnum] = country;
    }

    return country;
  }

  // ====================== PRIVATE METHODS ====================== //

  /// Fetches all countries from the use case
  Future<List<Country>> _fetchCountries() async {
    final result = await _getCountriesUseCase(NoParams(null));

    switch (result) {
      case Success(value: final allCountries):
        _log.info('Successfully loaded ${allCountries.length} countries');

        // Check if microstates should be shown
        final showMicrostates = UserPreferences().microStates;

        if (!showMicrostates) {
          _log.info('Filtering out microstates based on user preference');
          final filteredCountries =
              allCountries
                  .where(
                    (country) => !_microstatesToHide.contains(country.name),
                  )
                  .toList();

          _log.info(
            'Filtered countries: ${filteredCountries.length} (removed ${allCountries.length - filteredCountries.length} microstates)',
          );
          return filteredCountries;
        }

        return allCountries;
      case Error(error: final e):
        _log.severe('Failed to load countries', e);
        throw e;
    }
  }

  /// Fetches a single country by enum
  Future<Country?> _fetchCountryByEnum(CountryNames countryEnum) async {
    final result = await _getCountryByEnumUseCase(Params(countryEnum));

    switch (result) {
      case Success(value: final country):
        return country;
      case Error(error: final e):
        _log.severe('Error fetching country $countryEnum', e);
        return null;
    }
  }

  void refreshCountries() {
    _log.info('Refreshing countries due to microstate preference change');
    _countriesFuture = null;
    _countryCache.clear();
    _countries = []; // This is important to clear the current list
    notifyListeners(); // Notify immediately to update UI
    init(); // Then reload data
  }

  // ====================== STATE MANAGEMENT ====================== //

  void _startLoading() {
    _isLoading = true;
    _loadError = null;
    notifyListeners();
  }

  void _stopLoading() {
    _isLoading = false;
    notifyListeners();
  }

  void _handleLoadError(dynamic error) {
    _loadError = error is Exception ? error : Exception('Country load failed');
    _log.severe('Country data initialization error', error);
  }
}
