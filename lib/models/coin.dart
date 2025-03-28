// ignore_for_file: constant_identifier_names

import 'package:coinllector_app/models/country.dart';

enum CoinType {
  COMMEMORATIVE,
  TWO_EURO,
  ONE_EURO,
  FIFTY_CENT,
  TWENTY_CENT,
  TEN_CENT,
  FIVE_CENT,
  TWO_CENT,
  ONE_CENT,
}

class Coin {
  final int id;
  final CoinType type;
  final String image;
  final int quantity;
  final String periodStartDate;
  final String? periodEndDate;
  final String description;
  final CountryEnum country;

  Coin({
    required this.id,
    required this.type,
    required this.image,
    required this.quantity,
    required this.periodStartDate,
    this.periodEndDate,
    required this.description,
    required this.country,
  });
}
