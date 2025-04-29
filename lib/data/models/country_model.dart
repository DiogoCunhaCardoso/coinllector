import 'package:coinllector_app/shared/enums/country_names_enum.dart';

/// Data Layer
class CountryModel {
  final CountryNames name;
  final String flagImage;
  final String joinedOn;

  CountryModel({
    required this.name,
    required this.flagImage,
    required this.joinedOn,
  });
}
