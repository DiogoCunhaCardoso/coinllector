import 'package:coinllector_app/presentation/model/coin_display.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';

class CoinDisplayData {
  static final List<CoinDisplay> coinTypes = [
    CoinDisplay(
      image: "assets/value/value-commemorative.png",
      label: CoinType.COMMEMORATIVE.name,
    ),
    CoinDisplay(
      image: "assets/value/value-two_euro.png",
      label: CoinType.TWO_EURO.name,
    ),
    CoinDisplay(
      image: "assets/value/value-one_euro.png",
      label: CoinType.ONE_EURO.name,
    ),
    CoinDisplay(
      image: "assets/value/value-fifty_cent.png",
      label: CoinType.FIFTY_CENT.name,
    ),
    CoinDisplay(
      image: "assets/value/value-twenty_cent.png",
      label: CoinType.TWENTY_CENT.name,
    ),
    CoinDisplay(
      image: "assets/value/value-ten_cent.png",
      label: CoinType.TEN_CENT.name,
    ),
    CoinDisplay(
      image: "assets/value/value-five_cent.png",
      label: CoinType.FIVE_CENT.name,
    ),
    CoinDisplay(
      image: "assets/value/value-two_cent.png",
      label: CoinType.TWO_CENT.name,
    ),
    CoinDisplay(
      image: "assets/value/value-one_cent.png",
      label: CoinType.ONE_CENT.name,
    ),
  ];
}
