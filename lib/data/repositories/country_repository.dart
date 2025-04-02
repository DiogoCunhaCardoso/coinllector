import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:logging/logging.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/data/models/country_model.dart';
import '../local/database/database_tables.dart';

class CountryRepository implements ICountryRepository {
  final Database db;
  final _log = Logger('COUNTRY_REPOSITORY');

  CountryRepository(this.db);

  @override
  Future<List<Country>> getCountries() async {
    try {
      final data = await db.query(DatabaseTables.countries);
      _log.info('Found ${data.length} countries');

      return data.map((e) {
        final countryModel = CountryModel.fromMap(e);
        return countryModel.toEntity(); // Convert to Country
      }).toList();
    } catch (e) {
      _log.severe('Error fetching countries: $e');
      rethrow;
    }
  }

  @override
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
      final countryModel = CountryModel.fromMap(data.first);
      return countryModel.toEntity(); // Convert to Country entity
    } catch (e) {
      _log.severe('Error fetching country by enum: $e');
      rethrow;
    }
  }

  @override
  Future<void> insertInitialCountries(List<CountryModel> countries) async {
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
