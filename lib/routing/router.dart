import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/ui/coin_showcase/coin_showcase_view.dart';
import 'package:coinllector_app/ui/coins/coins_view.dart';
import 'package:coinllector_app/ui/coins_type/coins_type_view.dart';
import 'package:coinllector_app/ui/menu_view.dart';
import 'package:coinllector_app/ui/profile/profile_view.dart';
import 'package:coinllector_app/ui/settings/settings_view.dart';
import 'package:coinllector_app/ui/settings_about/about_view.dart';
import 'package:coinllector_app/ui/profile_statistics/profile_statistics_view.dart';
import 'package:go_router/go_router.dart';

// Routing Configuration
final GoRouter router = GoRouter(
  initialLocation: AppRoutes.coinsView,
  debugLogDiagnostics: true,
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MenuView(child: child);
      },
      routes: [
        GoRoute(
          path: AppRoutes.coinsView,
          builder: (context, state) => const CoinsView(),
          routes: [
            GoRoute(
              path: ':type', // Now dynamic
              builder: (context, state) {
                final type = state.pathParameters['type']!;
                return CoinsByTypeView(type: type);
              },
              routes: [
                GoRoute(
                  path:
                      AppRoutes.showcaseViewRelative, // Now using the variable
                  builder: (context, state) {
                    final type = state.pathParameters['type']!;
                    return CoinShowcase(type: type);
                  },
                ),
              ],
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.profileView,
          builder: (context, state) => const ProfileView(),
          routes: [
            GoRoute(
              path: AppRoutes.profileStatisticsViewRelative,
              builder: (context, state) => const ProfileStatisticsView(),
            ),
          ],
        ),
        GoRoute(
          path: AppRoutes.settingsView,
          builder: (context, state) => const SettingsView(),
          routes: [
            GoRoute(
              path: AppRoutes.settingsAboutViewRelative,
              builder: (context, state) => const ProfileSettingsAboutView(),
            ),
          ],
        ),
      ],
    ),
  ],
);
