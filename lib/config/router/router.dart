import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/presentation/views/coin_showcase/coin_showcase_view.dart';
import 'package:coinllector_app/presentation/views/coins/coins_view.dart';
import 'package:coinllector_app/presentation/views/coins_filter_country/coins_filter_country_view.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/coins_filter_value_view.dart';
import 'package:coinllector_app/presentation/menu_view.dart';
import 'package:coinllector_app/presentation/views/profile/profile_view.dart';
import 'package:coinllector_app/presentation/views/settings/settings_view.dart';
import 'package:coinllector_app/presentation/views/settings_about/about_view.dart';
import 'package:coinllector_app/presentation/views/profile_statistics/profile_statistics_view.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:go_router/go_router.dart';
/* import 'package:logging/logging.dart'; */

/// Routing Configuration using Go Router
/* Logger _log = Logger("ROUTER"); */
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
              path: '/type/:type',
              builder: (context, state) {
                final typeStr = state.pathParameters['type']!;
                final type = CoinType.values.byName(typeStr);
                return ValueFilterView(type: type);
              },
              routes: [
                GoRoute(
                  path: AppRoutes.showcaseViewRelative,
                  builder: (context, state) {
                    final extra = state.extra as Map<String, dynamic>;
                    return CoinShowcase(
                      coin: extra['coin'] as Coin,
                      coins: extra['coins'] as List<Coin>,
                      currentIndex: extra['currentIndex'] as int,
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: '/country/:name',
              builder: (context, state) {
                final nameStr = state.pathParameters['name']!;
                final name = CountryNames.values.byName(nameStr);
                return CountriesFilterView(name: name);
              },
              routes: [
                GoRoute(
                  path: AppRoutes.showcaseViewRelative,
                  builder: (context, state) {
                    // Get the navigation data from extra
                    final extra = state.extra as Map<String, dynamic>;
                    final coin = extra['coin'] as Coin;
                    final coins = extra['coins'] as List<Coin>;
                    final currentIndex = extra['currentIndex'] as int;

                    return CoinShowcase(
                      coin: coin,
                      coins: coins,
                      currentIndex: currentIndex,
                    );
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
