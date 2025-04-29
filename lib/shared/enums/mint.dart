enum MintMark {
  A,
  D,
  F,
  G,
  J;

  String get displayName => name; // "A", "D", etc.

  String get fullName {
    switch (this) {
      case MintMark.A:
        return 'Berlin';
      case MintMark.D:
        return 'Munich';
      case MintMark.F:
        return 'Stuttgart';
      case MintMark.G:
        return 'Karlsruhe';
      case MintMark.J:
        return 'Hamburg';
    }
  }

  static MintMark? fromString(String? value) {
    if (value == null) return null;
    try {
      return MintMark.values.firstWhere((e) => e.name == value);
    } catch (e) {
      return null;
    }
  }
}
