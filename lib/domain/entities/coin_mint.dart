import 'package:coinllector_app/shared/enums/mint.dart';

/// Domain Layer
class CoinMint {
  final int mintId;
  final int userCoinId;
  final MintMark mintMark;

  CoinMint({
    required this.mintId,
    required this.userCoinId,
    required this.mintMark,
  });
}
