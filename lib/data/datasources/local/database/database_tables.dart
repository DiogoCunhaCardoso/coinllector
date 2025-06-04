class DatabaseTables {
  // Table Names
  static const String coins = "coins";
  static const String userCoins = "user_coins";
  static const String countries = "countries";

  // Coins Columns
  static const String coinId = "id";
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

  // Mint Columms
  static const String coinMints = "coinMints";
  static const String mintId = "mintId";
  static const String mintMark = "mint_mark";

  // Table Creation Statements
  static const String createCoinsTable = '''
    CREATE TABLE $coins (
      $coinId INTEGER PRIMARY KEY,
      $type TEXT NOT NULL,
      $image TEXT,
      $quantity INTEGER,
      $periodStartDate TEXT NOT NULL,
      $periodEndDate TEXT,
      $description TEXT NOT NULL,
      $country TEXT NOT NULL,
      FOREIGN KEY ($country) REFERENCES $countries($countryName)
    )
  ''';

  static const String createUserCoinsTable = '''
    CREATE TABLE $userCoins (
      $userCoinId INTEGER,
      $quality TEXT DEFAULT NULL,
      FOREIGN KEY ($userCoinId) REFERENCES $coins($coinId)
    )
  ''';

  static const String createCoinMintsTable = '''
    CREATE TABLE $coinMints (
      $mintId INTEGER PRIMARY KEY AUTOINCREMENT,
      $userCoinId INTEGER NOT NULL,
      $mintMark TEXT NOT NULL,
      FOREIGN KEY ($userCoinId) 
        REFERENCES $userCoins($userCoinId),
      UNIQUE ($userCoinId, $mintMark)
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
