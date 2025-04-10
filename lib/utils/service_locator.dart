// lib/service_locator.dart
import 'package:coinllector_app/data/datasources/local/database/database_service.dart';
import 'package:coinllector_app/domain/interfaces/coin_interface.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/domain/interfaces/user_coin_interface.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coins_by_country.dart';
import 'package:coinllector_app/domain/usecases/coin/get_coins_by_type.dart';
import 'package:coinllector_app/domain/usecases/coin/get_total_coin_count.dart';
import 'package:coinllector_app/domain/usecases/country/get_countries.dart';
import 'package:coinllector_app/domain/usecases/country/get_country_by_enum.dart';
import 'package:coinllector_app/domain/usecases/user_coin/add_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coins_count_by_country.dart';
import 'package:coinllector_app/domain/usecases/user_coin/get_owned_coin_count_by_type.dart';
import 'package:coinllector_app/domain/usecases/user_coin/remove_coin.dart';
import 'package:coinllector_app/domain/usecases/user_coin/user_owns_coin.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

Future setupDependencies() async {
  // Database Service
  final databaseService = DatabaseService.instance;
  await databaseService.database;
  serviceLocator.registerSingleton(databaseService);

  //USE CASES -----------------------------------------------

  serviceLocator.registerLazySingleton<GetCoinsByTypeUseCase>(
    () => GetCoinsByTypeUseCase(serviceLocator<ICoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetCoinsByCountryUseCase>(
    () => GetCoinsByCountryUseCase(serviceLocator<ICoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetTotalCoinCountUseCase>(
    () => GetTotalCoinCountUseCase(serviceLocator<ICoinRepository>()),
  );

  //

  serviceLocator.registerLazySingleton<GetCountriesUseCase>(
    () => GetCountriesUseCase(serviceLocator<ICountryRepository>()),
  );

  serviceLocator.registerLazySingleton<GetCountryByEnumUseCase>(
    () => GetCountryByEnumUseCase(serviceLocator<ICountryRepository>()),
  );

  //

  serviceLocator.registerLazySingleton<ICoinRepository>(
    () => databaseService.coinRepository,
  );

  serviceLocator.registerLazySingleton<IUserCoinRepository>(
    () => databaseService.userCoinRepository,
  );

  serviceLocator.registerLazySingleton<ICountryRepository>(
    () => databaseService.countryRepository,
  );

  // Use Cases
  serviceLocator.registerLazySingleton<AddCoinUseCase>(
    () => AddCoinUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<RemoveCoinUseCase>(
    () => RemoveCoinUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinsUseCase>(
    () => GetOwnedCoinsUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinCountUseCase>(
    () => GetOwnedCoinCountUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<UserOwnsCoinUseCase>(
    () => UserOwnsCoinUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinCountForTypeUseCase>(
    () =>
        GetOwnedCoinCountForTypeUseCase(serviceLocator<IUserCoinRepository>()),
  );

  serviceLocator.registerLazySingleton<GetOwnedCoinsByCountryUseCase>(
    () => GetOwnedCoinsByCountryUseCase(serviceLocator<IUserCoinRepository>()),
  );

  // Providers - Register as singletons so state is shared app-wide

  serviceLocator.registerLazySingleton<CoinProvider>(
    () => CoinProvider(
      getCoinsByTypeUseCase: serviceLocator<GetCoinsByTypeUseCase>(),
      getTotalCoinCountUseCase: serviceLocator<GetTotalCoinCountUseCase>(),
      getCoinsByCountryUseCase: serviceLocator<GetCoinsByCountryUseCase>(),
    )..init(),
  );

  //

  serviceLocator.registerLazySingleton<UserCoinProvider>(
    () => UserCoinProvider(
      addCoinUseCase: serviceLocator<AddCoinUseCase>(),
      removeCoinUseCase: serviceLocator<RemoveCoinUseCase>(),
      getOwnedCoinsUseCase: serviceLocator<GetOwnedCoinsUseCase>(),
      getOwnedCoinCountUseCase: serviceLocator<GetOwnedCoinCountUseCase>(),
      userOwnsCoinUseCase: serviceLocator<UserOwnsCoinUseCase>(),
      getOwnedCoinsCountByTypeUseCase:
          serviceLocator<GetOwnedCoinCountForTypeUseCase>(),
      getOwnedCoinsByCountryUseCase:
          serviceLocator<GetOwnedCoinsByCountryUseCase>(),
    )..init(),
  );

  //

  serviceLocator.registerLazySingleton<CountryProvider>(
    () => CountryProvider(
      getCountriesUseCase: serviceLocator<GetCountriesUseCase>(),
      getCountryByEnumUseCase: serviceLocator<GetCountryByEnumUseCase>(),
    )..init(),
  );
}
