import 'package:coinllector_app/data/models/country_model.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:sqflite/sqflite.dart';
import '../local/database/database_tables.dart';

class CountryRemoteDataSource {
  final Database db;

  CountryRemoteDataSource(this.db);

  Future<List<CountryModel>> getCountries() async {
    final data = await db.query(DatabaseTables.countries);
    return data.map((e) => CountryModel.fromMap(e)).toList();
  }

  Future<CountryModel?> getCountryByEnum(CountryNames countryEnum) async {
    final data = await db.query(
      DatabaseTables.countries,
      where: '${DatabaseTables.countryName} = ?',
      whereArgs: [countryEnum.name],
      limit: 1,
    );

    if (data.isEmpty) return null;
    return CountryModel.fromMap(data.first);
  }

  Future<void> insertInitialCountries(List<CountryModel> countries) async {
    for (var country in countries) {
      await db.insert(
        DatabaseTables.countries,
        country.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    }
  }
}
