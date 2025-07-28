import 'package:coinllector_app/data/datasources/local/data/coins_data.dart';
import 'package:coinllector_app/data/datasources/local/data/countries_data.dart';
import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/data/datasources/remote/coin_mint_remote_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/coin_remote_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/country_remote_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/user_coin_remote_datasource.dart';
import 'package:coinllector_app/data/repositories/coin_mint_repository.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import '../../../repositories/coin_repository.dart';
import '../../../repositories/country_repository.dart';
import '../../../repositories/user_coin_repository.dart';

// CONFIG

class DatabaseConfig {
  static const String databaseName = "master_db.db";
  static const int databaseVersion = 1;
}

// SERVICE

class DatabaseService {
  static final DatabaseService instance = DatabaseService._constructor();
  static Database? _db;
  final _log = Logger('DATABASE_SERVICE');

  late final CoinRepositoryImpl coinRepository;
  late final CoinMintRepositoryImpl coinMintRepository;
  late final CountryRepositoryImpl countryRepository;
  late final UserCoinRepositoryImpl userCoinRepository;

  DatabaseService._constructor();

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();

    // Initialize repositories
    coinRepository = CoinRepositoryImpl(CoinRemoteDataSource(_db!));
    coinMintRepository = CoinMintRepositoryImpl(CoinMintRemoteDataSource(_db!));
    countryRepository = CountryRepositoryImpl(CountryRemoteDataSource(_db!));
    userCoinRepository = UserCoinRepositoryImpl(UserCoinRemoteDataSource(_db!));

    return _db!;
  }

  Future<Database> _initDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, DatabaseConfig.databaseName);

    /* await deleteDatabase(databasePath); */

    return await openDatabase(
      databasePath,
      version: DatabaseConfig.databaseVersion,

      onCreate: _onCreate,

      // for future upgrades

      /* onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {}
      }, */
    );
  }

  // FIRST TIME

  Future<void> _onCreate(Database db, int version) async {
    _log.info('Creating database...');

    await db.execute(DatabaseTables.createCoinsTable);
    await db.execute(DatabaseTables.createUserCoinsTable);
    await db.execute(DatabaseTables.createCoinMintsTable);
    await db.execute(DatabaseTables.createCountriesTable);

    final coinRepo = CoinRepositoryImpl(CoinRemoteDataSource(db));
    final countryRepo = CountryRepositoryImpl(CountryRemoteDataSource(db));

    await countryRepo.insertInitialCountries(countriesData);
    await coinRepo.insertInitialCoins(coinsData);
  }

  // for futre update
  /*  Future<void> updateOne(Map<String, dynamic> coinData) async {
        final db = await database;
    await db.insert(DatabaseTables.coins, coinData);
  } */
}
