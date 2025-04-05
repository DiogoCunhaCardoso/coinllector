import 'package:coinllector_app/config/router/router.dart';
import 'package:coinllector_app/data/datasources/local/preferences/user_preferences.dart';
import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/common.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

void main() async {
  Logger.root.level = Level.ALL;

  WidgetsFlutterBinding.ensureInitialized();

  final userSettings = UserSettings();
  await userSettings.loadSettings();

  await setupDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => serviceLocator<CoinProvider>()),
        ChangeNotifierProvider(
          create: (_) => serviceLocator<UserCoinProvider>(),
        ),
        ChangeNotifierProvider(
          create: (_) => serviceLocator<CountryProvider>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        title: 'Coinllector',
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme().apply(
            bodyColor: AppColors.onSurface,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: CustomWidgetStyles.getAppBarTheme(
            Theme.of(context).colorScheme,
          ),
          cardTheme: CustomWidgetStyles.getCardTheme(
            Theme.of(context).colorScheme,
          ),
          scaffoldBackgroundColor: AppColors.surface,
        ),
      ),
    );
  }
}
