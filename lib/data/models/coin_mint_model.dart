import 'package:coinllector_app/shared/enums/mint.dart';

/// Data Layer
class CoinMintModel {
  final int mintId;
  final int userCoinId;
  final MintMark mintMark;

  CoinMintModel({
    required this.mintId,
    required this.userCoinId,
    required this.mintMark,
  });
}
