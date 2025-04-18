import 'package:coinllector_app/config/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/* import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart'; */
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';

// App-specific imports
import 'package:coinllector_app/config/router/router.dart';

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

  // Stripe & dotenv (when/if I add premium fetures in the future)
  /*   await dotenv.load();
  final publishableKey = dotenv.env["STRIPE_PUBLISHABLE_KEY"];
  if (publishableKey == null) {
    throw Exception("STRIPE_PUBLISHABLE_KEY is missing in .env");
  }
  Stripe.publishableKey = publishableKey; */

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final materialTheme = MaterialTheme(GoogleFonts.openSansTextTheme());
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
        theme: materialTheme.dark(),
      ),
    );
  }
}
