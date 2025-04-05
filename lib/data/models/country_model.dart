// ignore_for_file: constant_identifier_names

import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

class CountryModel {
  final CountryNames name;
  final String flagImage;
  final String joinedOn;

  CountryModel({
    required this.name,
    required this.flagImage,
    required this.joinedOn,
  });

  // TO ENTITY ------------------------------------------------------------

  Country toEntity() {
    return Country(name: name, flagImage: flagImage, joinedOn: joinedOn);
  }

  // TO MAP ------------------------------------------------------------

  Map<String, dynamic> toMap() {
    return {
      DatabaseTables.countryName: name.name, // for ENUM
      DatabaseTables.flagImage: flagImage,
      DatabaseTables.joinedOn: joinedOn,
    };
  }

  // FROM MAP -----------------------------------------------------------

  factory CountryModel.fromMap(Map<String, dynamic> map) {
    final countryName = map[DatabaseTables.countryName] as String;
    final CountryNames countryEnum = CountryNames.values.byName(
      countryName.toUpperCase().replaceAll(" ", "_"),
    );

    return CountryModel(
      name: countryEnum,
      flagImage: map[DatabaseTables.flagImage] as String,
      joinedOn: map[DatabaseTables.joinedOn] as String,
    );
  }
}
