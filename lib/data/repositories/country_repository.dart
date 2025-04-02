import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/domain/interfaces/country_interface.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:coinllector_app/utils/result.dart';
import 'package:logging/logging.dart';
import 'package:sqflite/sqflite.dart';
import 'package:coinllector_app/data/models/country_model.dart';
import '../local/database/database_tables.dart';

class CountryRepository implements ICountryRepository {
  final Database db;
  final _log = Logger('COUNTRY_REPOSITORY');

  CountryRepository(this.db);

  @override
  Future<Result<List<Country>>> getCountries() async {
    try {
      final data = await db.query(DatabaseTables.countries);
      _log.info('Found ${data.length} countries');

      final countries =
          data.map((e) {
            final countryModel = CountryModel.fromMap(e);
            return countryModel.toEntity();
          }).toList();

      return Result.success(countries);
    } catch (e) {
      _log.severe('Error fetching countries: $e');
      return Result.error(Exception('Failed to fetch countries: $e'));
    }
  }

  @override
  Future<Result<Country?>> getCountryByEnum(CountryNames countryEnum) async {
    try {
      final data = await db.query(
        DatabaseTables.countries,
        where: '${DatabaseTables.countryName} = ?',
        whereArgs: [countryEnum.name],
        limit: 1,
      );

      if (data.isEmpty) {
        _log.warning('No country found for enum: $countryEnum');
        return Result.success(null);
      }

      _log.info('Found country: ${countryEnum.name}');
      final countryModel = CountryModel.fromMap(data.first);
      return Result.success(countryModel.toEntity());
    } catch (e) {
      _log.severe('Error fetching country by enum: $e');
      return Result.error(Exception('Failed to fetch country: $e'));
    }
  }

  @override
  Future<Result<void>> insertInitialCountries(
    List<CountryModel> countries,
  ) async {
    try {
      for (var country in countries) {
        await db.insert(
          DatabaseTables.countries,
          country.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      }

      _log.info('Successfully inserted all countries');
      return Result.success(null);
    } catch (e) {
      _log.severe('Error inserting countries: $e');
      return Result.error(Exception('Failed to insert countries: $e'));
    }
  }
}
