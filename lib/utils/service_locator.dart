// lib/service_locator.dart
import 'package:coinllector_app/data/datasources/local/database/database_service.dart';
import 'package:coinllector_app/data/repositories/user_prefs_repository.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/coin_mint_interface.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_prefs_interface.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coin_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coin_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coins_by_country.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coins_by_type.dart';
import 'package:coinllector_app/domain/usecases/coin/get_total_coin_count.dart';
import 'package:coinllector_app/domain/usecases/country/get_countries.dart';
import 'package:coinllector_app/domain/usecases/country/get_country_by_enum.dart';
import 'package:coinllector_app/domain/usecases/user_coin/add_coin.dart';
import 'package:coinllector_app/domain/usecases/coin_mint/add_mint_mark.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_coin_quality.dart';
import 'package:coinllector_app/domain/usecases/coin_mint/get_mint_marks_for_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_country_map.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type_map.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_statistics_sorted_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_statistics_sorted_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/remove_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/check_if_user_owns_coin.dart';
import 'package:coinllector_app/domain/usecases/coin_mint/remove_mint_mark.dart';
import 'package:coinllector_app/domain/usecases/user_coin/toggle_coin_ownership.dart';
import 'package:coinllector_app/domain/usecases/user_coin/update_quality_of_owned_coin.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_coin_mints.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_coin_quality.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_micro_states.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_removal_confirmation.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/get_user_profile_image.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_coin_mints.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_coin_quality.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_micro_states.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_removal_confirmation.dart';
import 'package:coinllector_app/domain/usecases/user_prefs/set_user_profile_image.dart';
import 'package:coinllector_app/presentation/providers/coin_mint_provider.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt serviceLocator = GetIt.instance;

Future setupDependencies() async {
  // Database Service
  final databaseService = DatabaseService.instance;
  await databaseService.database;
  serviceLocator.registerSingleton(databaseService);

  // User Preferences
  final sharedPrefs = await SharedPreferences.getInstance();

  // ==========================================================
  // REPOSITORIES
  // ==========================================================

  serviceLocator.registerLazySingleton<ICoinRepository>(
    () => databaseService.coinRepository,
  );

  serviceLocator.registerLazySingleton<ICoinMintRepository>(
    () => databaseService.coinMintRepository,
  );

  serviceLocator.registerLazySingleton<IUserCoinRepository>(
    () => databaseService.userCoinRepository,
  );

  serviceLocator.registerLazySingleton<ICountryRepository>(
    () => databaseService.countryRepository,
  );

  serviceLocator.registerLazySingleton<IUserPreferencesRepository>(
    () => UserPreferencesRepositoryImpl(sharedPrefs),
  );

  // ==========================================================
  // COIN USE CASES
  // ==========================================================

  serviceLocator.registerLazySingleton<GetCoinsByTypeUseCase>(
    () => GetCoinsByTypeUseCase(
      serviceLocator<ICoinRepository>(),
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton<GetCoinsByCountryUseCase>(
    () => GetCoinsByCountryUseCase(serviceLocator<ICoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetTotalCoinCountUseCase>(
    () => GetTotalCoinCountUseCase(
      serviceLocator<ICoinRepository>(),
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton<GetTypeCoinCountUseCase>(
    () => GetTypeCoinCountUseCase(
      serviceLocator<ICoinRepository>(),
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton<GetCountryCoinCountUseCase>(
    () => GetCountryCoinCountUseCase(serviceLocator<ICoinRepository>()),
  );

  // ==========================================================
  // COIN MINT USE CASES
  // ==========================================================

  serviceLocator.registerLazySingleton<AddMintMarkUseCase>(
    () => AddMintMarkUseCase(serviceLocator<ICoinMintRepository>()),
  );

  serviceLocator.registerLazySingleton<RemoveMintMarkUseCase>(
    () => RemoveMintMarkUseCase(serviceLocator<ICoinMintRepository>()),
  );

  serviceLocator.registerLazySingleton<GetMintMarksForCoinUseCase>(
    () => GetMintMarksForCoinUseCase(serviceLocator<ICoinMintRepository>()),
  );

  // ==========================================================
  // COUNTRY USE CASES
  // ==========================================================

  serviceLocator.registerLazySingleton<GetCountriesUseCase>(
    () => GetCountriesUseCase(
      serviceLocator<ICountryRepository>(),
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton<GetCountryByEnumUseCase>(
    () => GetCountryByEnumUseCase(serviceLocator<ICountryRepository>()),
  );

  // ==========================================================
  // USER COIN USE CASES
  // ==========================================================

  serviceLocator.registerLazySingleton<AddCoinUseCase>(
    () => AddCoinUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<RemoveCoinUseCase>(
    () => RemoveCoinUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<ToggleCoinOwnershipUseCase>(
    () => ToggleCoinOwnershipUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetCoinQualityUseCase>(
    () => GetCoinQualityUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<UpdateQualityOfOwnedCoinUseCase>(
    () =>
        UpdateQualityOfOwnedCoinUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinsUseCase>(
    () => GetOwnedCoinsUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinCountUseCase>(
    () => GetOwnedCoinCountUseCase(
      serviceLocator<IUserCoinRepository>(),
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton<CheckIfUserOwnsCoinUseCase>(
    () => CheckIfUserOwnsCoinUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinsByTypeMapUseCase>(
    () => GetOwnedCoinsByTypeMapUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinsByCountryMapUseCase>(
    () =>
        GetOwnedCoinsByCountryMapUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetUserCoinCountByCountryUseCase>(
    () =>
        GetUserCoinCountByCountryUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetUserCoinCountByTypeUseCase>(
    () => GetUserCoinCountByTypeUseCase(
      serviceLocator<IUserCoinRepository>(),
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => GetStatisticsSortedByCountryUseCase(
      serviceLocator<IUserCoinRepository>(),
      serviceLocator<GetCountriesUseCase>(),
      serviceLocator<GetCountryCoinCountUseCase>(),
      serviceLocator<ICoinRepository>(),
    ),
  );

  serviceLocator.registerLazySingleton<GetStatisticsSortedByTypeUseCase>(
    () => GetStatisticsSortedByTypeUseCase(
      serviceLocator<IUserCoinRepository>(),
      serviceLocator<GetTypeCoinCountUseCase>(),
    ),
  );

  // ==========================================================
  // USER PREFERENCES USE CASES
  // ==========================================================
  serviceLocator.registerLazySingleton(
    () =>
        GetCoinMintsPrefsUseCase(serviceLocator<IUserPreferencesRepository>()),
  );
  serviceLocator.registerLazySingleton(
    () =>
        SetCoinMintsPrefsUseCase(serviceLocator<IUserPreferencesRepository>()),
  );
  serviceLocator.registerLazySingleton(
    () => GetMicroStatesPrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => SetMicroStatesPrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => GetCoinQualityPrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => SetCoinQualityPrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => GetRemovalConfirmationPrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => SetRemovalConfirmationPrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => GetUserProfileImagePrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );
  serviceLocator.registerLazySingleton(
    () => SetUserProfileImagePrefsUseCase(
      serviceLocator<IUserPreferencesRepository>(),
    ),
  );

  // ==========================================================
  // PROVIDERS
  // ==========================================================

  // Coin Provider
  serviceLocator.registerLazySingleton<CoinProvider>(
    () => CoinProvider(
      getCoinsByTypeUseCase: serviceLocator<GetCoinsByTypeUseCase>(),
      getTotalCoinCountUseCase: serviceLocator<GetTotalCoinCountUseCase>(),
      getCoinsByCountryUseCase: serviceLocator<GetCoinsByCountryUseCase>(),
      getTypeTotalCoinCount: serviceLocator<GetTypeCoinCountUseCase>(),
      getCountryTotalCoinCount: serviceLocator<GetCountryCoinCountUseCase>(),
    )..init(),
  );

  // Coin Mint Provider
  serviceLocator.registerLazySingleton<CoinMintProvider>(
    () => CoinMintProvider(
      addMintMarkUseCase: serviceLocator<AddMintMarkUseCase>(),
      removeMintMarkUseCase: serviceLocator<RemoveMintMarkUseCase>(),
      getMintMarksForCoinUseCase: serviceLocator<GetMintMarksForCoinUseCase>(),
      userCoinProvider: serviceLocator<UserCoinProvider>(),
    ),
  );

  // Country Provider
  serviceLocator.registerLazySingleton<CountryProvider>(
    () => CountryProvider(
      getCountriesUseCase: serviceLocator<GetCountriesUseCase>(),
      getCountryByEnumUseCase: serviceLocator<GetCountryByEnumUseCase>(),
    )..init(),
  );

  // User Coin Provider
  serviceLocator.registerLazySingleton<UserCoinProvider>(
    () => UserCoinProvider(
      toggleCoinOwnershipUseCase: serviceLocator<ToggleCoinOwnershipUseCase>(),
      getCoinQualityUseCase: serviceLocator<GetCoinQualityUseCase>(),
      updateQualityOfOwnedCoinUseCase:
          serviceLocator<UpdateQualityOfOwnedCoinUseCase>(),
      getOwnedCoinsUseCase: serviceLocator<GetOwnedCoinsUseCase>(),
      getOwnedCoinCountUseCase: serviceLocator<GetOwnedCoinCountUseCase>(),
      userOwnsCoinUseCase: serviceLocator<CheckIfUserOwnsCoinUseCase>(),
      getOwnedCoinsCountByTypeUseCase:
          serviceLocator<GetOwnedCoinsByTypeMapUseCase>(),
      getOwnedCoinsByCountryUseCase:
          serviceLocator<GetOwnedCoinsByCountryMapUseCase>(),
      getUserCoinCountByCountryUseCase:
          serviceLocator<GetUserCoinCountByCountryUseCase>(),
      getUserCoinCountByTypeUseCase:
          serviceLocator<GetUserCoinCountByTypeUseCase>(),
      getStatisticsSortedByTypeUseCase:
          serviceLocator<GetStatisticsSortedByTypeUseCase>(),
      getStatisticsSortedByCountryUseCase:
          serviceLocator<GetStatisticsSortedByCountryUseCase>(),
    )..init(),
  );

  // User Preferences Provider
  serviceLocator.registerLazySingleton<UserPreferencesProvider>(
    () => UserPreferencesProvider(
      getCoinMints: serviceLocator<GetCoinMintsPrefsUseCase>(),
      setCoinMints: serviceLocator<SetCoinMintsPrefsUseCase>(),
      getMicroStates: serviceLocator<GetMicroStatesPrefsUseCase>(),
      setMicroStates: serviceLocator<SetMicroStatesPrefsUseCase>(),
      getCoinQuality: serviceLocator<GetCoinQualityPrefsUseCase>(),
      setCoinQuality: serviceLocator<SetCoinQualityPrefsUseCase>(),
      getRemovalConfirmation:
          serviceLocator<GetRemovalConfirmationPrefsUseCase>(),
      setRemovalConfirmation:
          serviceLocator<SetRemovalConfirmationPrefsUseCase>(),
      getUserProfileImage: serviceLocator<GetUserProfileImagePrefsUseCase>(),
      setUserProfileImage: serviceLocator<SetUserProfileImagePrefsUseCase>(),
    )..init(),
  );
}
