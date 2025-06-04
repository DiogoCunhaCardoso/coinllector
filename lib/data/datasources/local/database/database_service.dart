import 'package:coinllector_app/data/datasources/remote/coin_mint_remote_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/coin_remote_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/country_remote_datasource.dart';
import 'package:coinllector_app/data/datasources/remote/user_coin_remote_datasource.dart';
import 'package:coinllector_app/data/repositories/coin_mint_repository.dart';
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

      // Handle database creation - iterate through all versions
      onCreate: (Database db, int newVersion) async {
        _log.info('Creating database from scratch to version $newVersion');
        // Start from version 1 to current version and create DB
        for (int version = 0; version < newVersion; version++) {
          await _performDBUpgrade(db, version + 1);
        }
      },

      // Handle database upgrades - iterate from old to new version
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        _log.info('Upgrading database from version $oldVersion to $newVersion');
        // Iterate from the current version to the latest version and execute SQL statements
        for (int version = oldVersion; version < newVersion; version++) {
          await _performDBUpgrade(db, version + 1);
        }
      },
    );
  }

  /// Call to upgrade the database. [upgradeToVersion] is the version of SQL statements that should be
  /// executed. A version of 1 is the initial creation of the database. Anything higher would
  /// be an upgrade of the database. This function should be called once for every version upgrade.
  /// For example, if current version is 1 and user is now performing an update and new version is
  /// 5, then this function should be called 4 times (from `onUpgrade`), where [upgradeToVersion]
  /// would be passed a 2, 3, 4 and 5.
  Future<void> _performDBUpgrade(Database db, int upgradeToVersion) async {
    _log.info('Performing upgrade to version $upgradeToVersion');

    switch (upgradeToVersion) {
      // Upgrade to V1 (initial creation)
      case 1:
        await _dbUpdatesVersion_1(db);
        break;

      // Upgrades for V2 - Add new test coin
      case 2:
        await _dbUpdatesVersion_2(db);
        break;

      default:
        _log.warning('No upgrade logic defined for version $upgradeToVersion');
    }
  }

  ///(initial creation)
  Future<void> _dbUpdatesVersion_1(Database db) async {
    _log.info('Setting up initial database structure (Version 1)');

    try {
      // Create all tables
      await db.execute(DatabaseTables.createCoinsTable);
      await db.execute(DatabaseTables.createUserCoinsTable);
      await db.execute(DatabaseTables.createCoinMintsTable);
      await db.execute(DatabaseTables.createCountriesTable);

      // Initialize repositories for data insertion
      final coinRepo = CoinRepositoryImpl(CoinRemoteDataSource(db));
      final countryRepo = CountryRepositoryImpl(CountryRemoteDataSource(db));

      // Insert initial data
      await countryRepo.insertInitialCountries(countriesData);
      await coinRepo.insertInitialCoins(coinsData);

      _log.info('Version 1 setup completed successfully');
    } catch (e, stackTrace) {
      _log.severe('Error in version 1 setup', e, stackTrace);
      rethrow;
    }
  }

  Future<void> _dbUpdatesVersion_2(Database db) async {
    _log.info('Applying version 2 updates - Syncing with updated coinsData');

    try {
      final coinDataSource = CoinRemoteDataSource(db);
      await coinDataSource.syncCoinsWithReplace(coinsData);

      _log.info('Version 2 updates completed successfully');
    } catch (e, stackTrace) {
      _log.severe('Error in version 2 updates', e, stackTrace);
      rethrow;
    }
  }
}
