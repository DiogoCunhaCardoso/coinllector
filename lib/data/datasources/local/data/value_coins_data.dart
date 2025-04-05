import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';

class CoinDisplayData {
  static final List<CoinDisplay> coinTypes = [
    CoinDisplay(
      image: "assets/value/value-commemorative.png",
      type: CoinType.COMMEMORATIVE,
    ),
    CoinDisplay(
      image: "assets/value/value-two_euro.png",
      type: CoinType.TWO_EURO,
    ),
    CoinDisplay(
      image: "assets/value/value-one_euro.png",
      type: CoinType.ONE_EURO,
    ),
    CoinDisplay(
      image: "assets/value/value-fifty_cent.png",
      type: CoinType.FIFTY_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-twenty_cent.png",
      type: CoinType.TWENTY_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-ten_cent.png",
      type: CoinType.TEN_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-five_cent.png",
      type: CoinType.FIVE_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-two_cent.png",
      type: CoinType.TWO_CENT,
    ),
    CoinDisplay(
      image: "assets/value/value-one_cent.png",
      type: CoinType.ONE_CENT,
    ),
  ];
}
