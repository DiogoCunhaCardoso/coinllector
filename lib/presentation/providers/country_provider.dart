import 'dart:collection';

import 'package:coinllector_app/domain/usecases/country/get_countries.dart';
import 'package:coinllector_app/domain/usecases/country/get_country_by_enum.dart';
import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:coinllector_app/utils/use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

/// Manages country data and provides it to the Presentation Layer
class CountryProvider extends ChangeNotifier {
  final _log = Logger("COUNTRY_PROVIDER");

  // ---------------------------------------------------------------------------
  // Private Use Cases
  // ---------------------------------------------------------------------------

  final GetCountriesUseCase _getCountriesUseCase;
  final GetCountryByEnumUseCase _getCountryByEnumUseCase;

  CountryProvider({
    required GetCountriesUseCase getCountriesUseCase,
    required GetCountryByEnumUseCase getCountryByEnumUseCase,
  }) : _getCountriesUseCase = getCountriesUseCase,
       _getCountryByEnumUseCase = getCountryByEnumUseCase;

  // ---------------------------------------------------------------------------
  // State
  // ---------------------------------------------------------------------------

  bool _isLoading = false;
  String? _error;

  List<Country> _countries = [];

  // ---------------------------------------------------------------------------
  // Getters
  // ---------------------------------------------------------------------------

  UnmodifiableListView<CoinDisplay> get countries => UnmodifiableListView(
    _countries.map((country) => CoinDisplay.fromCountry(country)).toList(),
  );

  bool get isLoading => _isLoading;
  String? get error => _error;

  // ============================ PUBLIC METHODS ============================ //

  // Init ---------------------------------------------------------------------

  Future<void> init() async {
    if (_isLoading) return;

    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _countries = await _fetchCountries();
      _error = null;
    } catch (e) {
      _error = e.toString();
      _log.severe('Error initializing countries: $_error');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Gets a country by enum, using cache if available
  Future<Country?> getCountry(CountryNames countryEnum) async {
    return await _fetchCountryByEnum(countryEnum);
  }

  // ====================== PRIVATE METHODS ====================== //

  /// Fetches all countries from the use case
  Future<List<Country>> _fetchCountries() async {
    final result = await _getCountriesUseCase(NoParams(null));

    switch (result) {
      case Success(value: final countries):
        _log.info('Successfully loaded ${countries.length} countries');
        return countries;

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

  /// Refetches countries - used when User Preference is changed
  void refreshCountries() {
    _log.info('Refreshing countries due to microstate preference change');
    _countries = [];
    notifyListeners();
    init();
  }
}
