import 'package:coinllector_app/config/router/router.dart';
import 'package:coinllector_app/data/local/preferences/user_preferences.dart';
import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logging/logging.dart';

void main() async {
  Logger.root.level = Level.ALL;

  WidgetsFlutterBinding.ensureInitialized();

  final userSettings = UserSettings();
  await userSettings.loadSettings();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
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
    );
  }
}
