import 'package:coinllector_app/shared/enums/country_names_enum.dart';

class Country {
  final CountryNames name;
  final String flagImage;
  final String joinedOn;

  Country({
    required this.name,
    required this.flagImage,
    required this.joinedOn,
  });
}
