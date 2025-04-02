import 'package:coinllector_app/domain/entities/coin.dart';

abstract class AppRoutes {
  // Base paths
  static const coinsView = '/coins';
  static const settingsView = '/settings';
  static const profileView = '/profile';

  // Relative paths
  static const showcaseViewRelative = 'showcase';
  static const profileStatisticsViewRelative = 'statistics';
  static const settingsAboutViewRelative = 'about';

  // Dynamic paths
  static String coinsWithValue(String value) => '$coinsView/type/$value';
  static String coinsWithCountry(String name) => '$coinsView/country/$name';
  static String coinsShowcase(Coin coin) =>
      '${coinsWithValue(coin.type.name)}/$showcaseViewRelative';

  static String profileStatistics() =>
      '$profileView/$profileStatisticsViewRelative';
  static String settingsAbout() => '$settingsView/$settingsAboutViewRelative';
}
