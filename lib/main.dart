import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';

// App-specific imports
import 'package:coinllector_app/config/router/router.dart';
import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/common.dart';
import 'package:coinllector_app/data/datasources/local/preferences/user_preferences.dart';
import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/utils/service_locator.dart';

void main() async {
  Logger.root.level = Level.ALL;
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize preferences and dependencies
  await UserPreferences().init();
  await setupDependencies();

  // Stripe & dotenv
  await dotenv.load();
  final publishableKey = dotenv.env["STRIPE_PUBLISHABLE_KEY"];
  if (publishableKey == null) {
    throw Exception("STRIPE_PUBLISHABLE_KEY is missing in .env");
  }
  Stripe.publishableKey = publishableKey;

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
        theme: _buildAppTheme(context),
      ),
    );
  }

  ThemeData _buildAppTheme(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.openSansTextTheme().apply(
        bodyColor: AppColors.onSurface,
      ),
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
      appBarTheme: CustomWidgetStyles.getAppBarTheme(
        Theme.of(context).colorScheme,
      ),
      cardTheme: CustomWidgetStyles.getCardTheme(Theme.of(context).colorScheme),
      scaffoldBackgroundColor: AppColors.surface,
    );
  }
}
