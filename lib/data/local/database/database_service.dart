import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/data/local/coins_data.dart';
import 'package:coinllector_app/data/local/countries_data.dart';
import 'database_config.dart';
import 'database_tables.dart';
import '../../repositories/coin_repository.dart';
import '../../repositories/country_repository.dart';
import '../../repositories/user_coin_repository.dart';

class DatabaseService {
  static final DatabaseService instance = DatabaseService._constructor();
  static Database? _db;
  final _log = Logger('DATABASE_SERVICE');

  late final CoinRepository coinRepository;
  late final CountryRepository countryRepository;
  late final UserCoinRepository userCoinRepository;

  DatabaseService._constructor();

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();

    // Initialize repositories
    coinRepository = CoinRepository(_db!);
    countryRepository = CountryRepository(_db!);
    userCoinRepository = UserCoinRepository(_db!);

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
    final coinRepo = CoinRepository(db);
    final countryRepo = CountryRepository(db);

    // Insert initial data
    await countryRepo.insertInitialCountries(countriesData);
    await coinRepo.insertInitialCoins(coinsData);
  }
}
