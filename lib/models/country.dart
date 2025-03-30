// ignore_for_file: constant_identifier_names

import 'package:coinllector_app/services/database/core/database_tables.dart';

enum CountryNames {
  EU,
  ANDORRA,
  AUSTRIA,
  BELGIUM,
  CROATIA,
  CYPRUS,
  ESTONIA,
  FINLAND,
  GERMANY,
  GREECE,
  FRANCE,
  IRELAND,
  ITALY,
  LATVIA,
  LITHUANIA,
  LUXEMBOURG,
  MALTA,
  MONACO,
  NETHERLANDS,
  PORTUGAL,
  SAN_MARINO,
  SLOVAKIA,
  SLOVENIA,
  SPAIN,
  VATICANO,
}

class Country {
  final CountryNames name;
  final String flagImage;
  final String joinedOn;

  Country({
    required this.name,
    required this.flagImage,
    required this.joinedOn,
  });

  // TO MAP ------------------------------------------------------------

  Map<String, dynamic> toMap() {
    return {
      DatabaseTables.countryName: name.name, // for ENUM
      DatabaseTables.flagImage: flagImage,
      DatabaseTables.joinedOn: joinedOn,
    };
  }

  // FROM MAP -----------------------------------------------------------

  factory Country.fromMap(Map<String, dynamic> map) {
    final countryName = map[DatabaseTables.countryName] as String;
    final CountryNames countryEnum = CountryNames.values.byName(
      countryName.toUpperCase().replaceAll(" ", "_"),
    );

    return Country(
      name: countryEnum,
      flagImage: map[DatabaseTables.flagImage] as String,
      joinedOn: map[DatabaseTables.joinedOn] as String,
    );
  }
}
