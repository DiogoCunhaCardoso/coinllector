// lib/data/mappers/country_mapper.dart

import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/data/models/country_model.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

class CountryMapper {
  // FROM ENTITY (Convert from domain entity to data model) ---------------------------
  // I am not using but I will leave it here commented (because I dont add new countries in the app)

  /* static CountryModel fromEntity(Country entity) {
    return CountryModel(
      name: entity.name,
      flagImage: entity.flagImage,
      joinedOn: entity.joinedOn,
    );
  } */

  // TO ENTITY (Convert from data model to domain entity) ------------------------------

  static Country toEntity(CountryModel model) {
    return Country(
      name: model.name,
      flagImage: model.flagImage,
      joinedOn: model.joinedOn,
    );
  }

  // FROM MAP (Convert from database map to data model) --------------------------------

  static CountryModel fromMap(Map<String, dynamic> map) {
    final countryEnum = CountryNames.values.byName(
      map[DatabaseTables.countryName],
    );

    return CountryModel(
      name: countryEnum,
      flagImage: map[DatabaseTables.flagImage] as String,
      joinedOn: map[DatabaseTables.joinedOn] as String,
    );
  }

  // TO MAP (Convert from data model to database map) ----------------------------------

  static Map<String, dynamic> toMap(CountryModel model) {
    return {
      DatabaseTables.countryName: model.name.name,
      DatabaseTables.flagImage: model.flagImage,
      DatabaseTables.joinedOn: model.joinedOn,
    };
  }
}
