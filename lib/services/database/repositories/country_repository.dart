import 'package:logging/logging.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/models/country.dart';
import '../core/database_tables.dart';

class CountryRepository {
  final Database db;
  final _log = Logger('COUNTRY_REPOSITORY');

  CountryRepository(this.db);

  Future<List<Country>> getCountries() async {
    try {
      final data = await db.query(DatabaseTables.countries);
      _log.info('Found ${data.length} countries');

      return data.map((e) => Country.fromMap(e)).toList();
    } catch (e) {
      _log.severe('Error fetching countries: $e');
      rethrow;
    }
  }

  Future<Country?> getCountryByEnum(CountryNames countryEnum) async {
    try {
      final data = await db.query(
        DatabaseTables.countries,
        where: '${DatabaseTables.countryName} = ?',
        whereArgs: [countryEnum.name],
        limit: 1,
      );

      if (data.isEmpty) {
        _log.warning('No country found for enum: $countryEnum');
        return null;
      }

      _log.info('Found country: ${countryEnum.name}');
      return Country.fromMap(data.first);
    } catch (e) {
      _log.severe('Error fetching country by enum: $e');
      rethrow;
    }
  }

  Future<void> insertInitialCountries(List<Country> countries) async {
    try {
      for (var country in countries) {
        await db.insert(
          DatabaseTables.countries,
          country.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }

      _log.info('Successfully inserted all countries');
    } catch (e) {
      _log.severe('Error inserting countries: $e');
      rethrow;
    }
  }
}
