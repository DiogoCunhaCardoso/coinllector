import 'package:coinllector_app/routing/router.dart';
import 'package:coinllector_app/shared_preferences/user_settings.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/common.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final userSettings = UserSettings();
  await userSettings.loadSettings();

  runApp(MyApp(userSettings: userSettings));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.userSettings});

  final UserSettings userSettings;

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
