class DatabaseTables {
  // Table Names
  static const String coins = "coins";
  static const String userCoins = "user_coins";
  static const String countries = "countries";

  // Coins Columns
  static const String id = "id";
  static const String type = "type";
  static const String image = "image";
  static const String quantity = "quantity";
  static const String periodStartDate = "periodStartDate";
  static const String periodEndDate = "periodEndDate";
  static const String description = "description";
  static const String country = "country";

  // User Coins Columns
  static const String userCoinId = "coin_id";
  static const String quality = "quality";

  // Countries Columns
  static const String countryName = "name";
  static const String flagImage = "flagImage";
  static const String joinedOn = "joinedOn";

  // Table Creation Statements
  static const String createCoinsTable = '''
    CREATE TABLE $coins (
      $id INTEGER PRIMARY KEY,
      $type TEXT NOT NULL,
      $image TEXT,
      $quantity INTEGER,
      $periodStartDate TEXT NOT NULL,
      $periodEndDate TEXT,
      $description TEXT NOT NULL,
      $country TEXT NOT NULL
    )
  ''';

  static const String createUserCoinsTable = '''
    CREATE TABLE $userCoins (
      $userCoinId INTEGER,
      $quality TEXT DEFAULT NULL,
      FOREIGN KEY ($userCoinId) REFERENCES $coins($id)
    )
  ''';

  static const String createCountriesTable = '''
    CREATE TABLE $countries (
      $countryName TEXT PRIMARY KEY,
      $flagImage TEXT NOT NULL,
      $joinedOn TEXT NOT NULL
    )
  ''';
}
