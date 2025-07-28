// lib/data/mappers/coin_mapper.dart
import 'package:coinllector_app/data/datasources/local/database/database_tables.dart';
import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/domain/entities/coin.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

class CoinMapper {
  // FROM ENTITY (Convert from domain entity to data model) ---------------------------
  // I am not using but I will leave it here commented (because I dont add new coins in the app)

  /* static CoinModel fromEntity(Coin entity) {
    return CoinModel(
      id: entity.id,
      type: entity.type,
      image: entity.image,
      quantity: entity.quantity,
      periodStartDate: entity.periodStartDate,
      periodEndDate: entity.periodEndDate,
      description: entity.description,
      country: entity.country,
      allowedQualities: model.allowedQualities,
    );
  } */

  // TO ENTITY (Convert from data model to domain entity) -----------------------------

  static Coin toEntity(CoinModel model) {
    return Coin(
      id: model.id,
      type: model.type,
      image: model.image,
      periodStartDate: model.periodStartDate,
      periodEndDate: model.periodEndDate,
      description: model.description,
      country: model.country,
      quantity: model.quantity,
      allowedQualities: model.allowedQualities,
    );
  }

  // FROM MAP (Convert from database map to data model) --------------------------------

  static CoinModel fromMap(Map<String, dynamic> map) {
    final coinType = CoinType.values.byName(map[DatabaseTables.type]);
    final countryEnum = CountryNames.values.byName(map[DatabaseTables.country]);

    // You’ll need to store qualities as a comma-separated string (e.g., "BU,PROOF")
    final allowedQualitiesStr = map[DatabaseTables.allowedQualities] as String?;
    final allowedQualities =
        allowedQualitiesStr
            ?.split(',')
            .map((q) => CoinQuality.values.byName(q.trim()))
            .toList();

    return CoinModel(
      id: map[DatabaseTables.coinId] as int,
      type: coinType,
      image: map[DatabaseTables.image] as String,
      quantity: map[DatabaseTables.quantity] as int?,
      periodStartDate: map[DatabaseTables.periodStartDate] as String,
      periodEndDate: map[DatabaseTables.periodEndDate] as String?,
      description: map[DatabaseTables.description] as String,
      country: countryEnum,
      allowedQualities: allowedQualities,
    );
  }

  // TO MAP (Convert from data model to database map) ----------------------------------

  static Map<String, dynamic> toMap(CoinModel model) {
    final map = <String, dynamic>{
      DatabaseTables.type: model.type.name,
      DatabaseTables.image: model.image,
      DatabaseTables.quantity: model.quantity,
      DatabaseTables.periodStartDate: model.periodStartDate,
      DatabaseTables.periodEndDate: model.periodEndDate,
      DatabaseTables.description: model.description,
      DatabaseTables.country: model.country.name,
      DatabaseTables.coinId: model.id,
    };

    if (model.allowedQualities != null) {
      map['allowedQualities'] = model.allowedQualities!
          .map((q) => q.name)
          .join(',');
    }

    return map;
  }
}
