abstract class AppRoutes {
  // Base paths
  static const coinsView = '/coins';
  static const settingsView = '/settings';
  static const profileView = '/profile';

  // Relative paths
  static const showcaseViewRelative =
      'showcase'; // Removed leading `/` to make it relative
  static const profileStatisticsViewRelative = 'statistics';
  static const settingsAboutViewRelative = 'about';

  // Dynamic paths
  static String coinsWithType(String type) => '$coinsView/$type';
  static String coinsShowcase(String type) =>
      '${coinsWithType(type)}/$showcaseViewRelative';

  static String profileStatistics() =>
      '$profileView/$profileStatisticsViewRelative';
  static String settingsAbout() => '$settingsView/$settingsAboutViewRelative';
}
