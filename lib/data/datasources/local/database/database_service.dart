import 'package:coinllector_app/data/datasources/remote/coin_local_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/country_local_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/user_coin_local_datasource.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/data/datasources/local/data/coins_data.dart';
import 'package:coinllector_app/data/datasources/local/data/countries_data.dart';
import 'database_tables.dart';
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
  late final CountryRepositoryImpl countryRepository;
  late final UserCoinRepositoryImpl userCoinRepository;

  DatabaseService._constructor();

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();

    // Initialize repositories
    coinRepository = CoinRepositoryImpl(CoinLocalDataSource(_db!));
    countryRepository = CountryRepositoryImpl(CountryLocalDataSource(_db!));
    userCoinRepository = UserCoinRepositoryImpl(UserCoinLocalDataSource(_db!));

    return _db!;
  }

  Future<Database> _initDatabase() async {
    final databaseDirPath = await getDatabasesPath();
    final databasePath = join(databaseDirPath, DatabaseConfig.databaseName);

    await deleteDatabase(databasePath);

    return await openDatabase(
      databasePath,
      version: DatabaseConfig.databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    _log.info('Creating database...');

    // Create tables
    await db.execute(DatabaseTables.createCoinsTable);
    await db.execute(DatabaseTables.createUserCoinsTable);
    await db.execute(DatabaseTables.createCountriesTable);

    // Initialize repositories for data insertion
    final coinRepo = CoinRepositoryImpl(CoinLocalDataSource(db));
    final countryRepo = CountryRepositoryImpl(CountryLocalDataSource(db));

    // Insert initial data
    await countryRepo.insertInitialCountries(countriesData);
    await coinRepo.insertInitialCoins(coinsData);
  }
}
