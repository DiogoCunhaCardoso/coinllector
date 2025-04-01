import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/ui/coin_showcase/coin_showcase_view.dart';
import 'package:coinllector_app/ui/coins/coins_view.dart';
import 'package:coinllector_app/ui/coins_filter_country/coins_filter_country_view.dart';
import 'package:coinllector_app/ui/coins_filter_value/coins_filter_value_view.dart';
import 'package:coinllector_app/ui/menu_view.dart';
import 'package:coinllector_app/ui/profile/profile_view.dart';
import 'package:coinllector_app/ui/settings/settings_view.dart';
import 'package:coinllector_app/ui/settings_about/about_view.dart';
import 'package:coinllector_app/ui/profile_statistics/profile_statistics_view.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

final _log = Logger('ROUTER');

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
              path: '/type/:type',
              builder: (context, state) {
                final typeStr = state.pathParameters['type']!;
                final type = CoinType.values.byName(typeStr);
                return CoinsFilterView(type: type);
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
                final typeStr = state.pathParameters['name']!;
                final name = CountryNames.values.byName(typeStr);
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
