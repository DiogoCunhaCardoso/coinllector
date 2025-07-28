import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

/// Data Layer
class CoinModel {
  final int id;
  final CoinType type;
  final String image;
  final int? quantity;
  final String periodStartDate;
  final String? periodEndDate;
  final String description;
  final CountryNames country;
  final List<CoinQuality>? allowedQualities;

  CoinModel({
    required this.id,
    required this.type,
    required this.image,
    this.quantity,
    required this.periodStartDate,
    this.periodEndDate,
    required this.description,
    required this.country,
    this.allowedQualities, // Default is null (meaning all qualities)
  });
}
