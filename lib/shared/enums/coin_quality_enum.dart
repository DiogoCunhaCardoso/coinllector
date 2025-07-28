// ignore_for_file: constant_identifier_names

enum CoinQuality { POOR, AVERAGE, GOOD, UNC, BU, PROOF }

// GROUPS

extension CoinQualityGroups on CoinQuality {
  static const List<CoinQuality> circulation = [
    CoinQuality.POOR,
    CoinQuality.AVERAGE,
    CoinQuality.GOOD,
    CoinQuality.UNC,
  ];

  static const List<CoinQuality> collector = [
    CoinQuality.BU,
    CoinQuality.PROOF,
  ];
}

// DISPLAY NAMES

extension CoinQualityExtension on CoinQuality {
  String get displayName {
    switch (this) {
      case CoinQuality.POOR:
        return "Poor";
      case CoinQuality.AVERAGE:
        return "Average";
      case CoinQuality.GOOD:
        return "Good";
      case CoinQuality.UNC:
        return "Unc";
      case CoinQuality.BU:
        return "BU";
      case CoinQuality.PROOF:
        return "Proof";
    }
  }
}
