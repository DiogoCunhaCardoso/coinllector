import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/presentation/providers/coin_mint_provider.dart';
import 'package:coinllector_app/presentation/providers/user_prefs_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
/* import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_stripe/flutter_stripe.dart'; */
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';

// App-specific imports
import 'package:coinllector_app/config/router/router.dart';

import 'package:coinllector_app/presentation/providers/coin_provider.dart';
import 'package:coinllector_app/presentation/providers/country_provider.dart';
import 'package:coinllector_app/presentation/providers/user_coin_provider.dart';
import 'package:coinllector_app/utils/service_locator.dart';

void main() async {
  Logger.root.level = Level.ALL;
  WidgetsFlutterBinding.ensureInitialized();

  // ADS
  MobileAds.instance.initialize();
  RequestConfiguration requestConfiguration = RequestConfiguration(
    testDeviceIds: ['62f3e530-9fd2-46f3-be66-18547939e2b1'],
  );
  MobileAds.instance.updateRequestConfiguration(requestConfiguration);

  // Initialize dependencies
  await setupDependencies();

  // Stripe & dotenv (when/if I add premium fetures in the future)
  /*   await dotenv.load();
  final publishableKey = dotenv.env["STRIPE_PUBLISHABLE_KEY"];
  if (publishableKey == null) {
    throw Exception("STRIPE_PUBLISHABLE_KEY is missing in .env");
  }
  Stripe.publishableKey = publishableKey; */

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

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
          create: (_) => serviceLocator<CoinMintProvider>(),
        ),
        ChangeNotifierProvider(
          create: (_) => serviceLocator<UserCoinProvider>(),
        ),
        ChangeNotifierProvider(
          create: (_) => serviceLocator<CountryProvider>(),
        ),
        ChangeNotifierProvider(
          create: (_) => serviceLocator<UserPreferencesProvider>(),
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
