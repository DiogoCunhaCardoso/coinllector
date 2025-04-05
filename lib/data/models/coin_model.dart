// ignore_for_file: constant_identifier_names

import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

class CoinModel {
  final int id;
  final CoinType type;
  final String image;
  final int? quantity;
  final String periodStartDate;
  final String? periodEndDate;
  final String description;
  final CountryNames country;

  CoinModel({
    required this.id,
    required this.type,
    required this.image,
    this.quantity,
    required this.periodStartDate,
    this.periodEndDate,
    required this.description,
    required this.country,
  });

  // TO ENTITY ------------------------------------------------------------

  Coin toEntity() {
    return Coin(
      id: id,
      type: type,
      image: image,
      periodStartDate: periodStartDate,
      periodEndDate: periodEndDate,
      description: description,
      country: country,
      quantity: quantity,
    );
  }

  // TO MAP ------------------------------------------------------------

  Map<String, dynamic> toMap() {
    return {
      DatabaseTables.id: id,
      DatabaseTables.type: type.name, // Store CoinType as a string
      DatabaseTables.image: image,
      DatabaseTables.quantity: quantity,
      DatabaseTables.periodStartDate: periodStartDate,
      DatabaseTables.periodEndDate: periodEndDate,
      DatabaseTables.description: description,
      DatabaseTables.country: country.name, // Store CountryEnum as a string
    };
  }

  // FROM MAP -----------------------------------------------------------

  factory CoinModel.fromMap(Map<String, dynamic> map) {
    final coinType = CoinType.values.byName(map[DatabaseTables.type]);
    final countryEnum = CountryNames.values.byName(map[DatabaseTables.country]);

    return CoinModel(
      id: map[DatabaseTables.id] as int,
      type: coinType,
      image: map[DatabaseTables.image] as String,
      quantity: map[DatabaseTables.quantity] as int?,
      periodStartDate: map[DatabaseTables.periodStartDate] as String,
      periodEndDate: map[DatabaseTables.periodEndDate] as String?,
      description: map[DatabaseTables.description] as String,
      country: countryEnum,
    );
  }
}
