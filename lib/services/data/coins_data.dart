import 'package:coinllector_app/models/coin.dart';
import 'package:coinllector_app/models/country.dart';

final List<Coin> coinsData = [
  Coin(
    id: 1,
    type: CoinType.TWO_EURO,
    image: 'assets/value/value-two_euro.png',
    quantity: 100,
    periodStartDate: '2023-01-01',
    periodEndDate: '2023-12-31',
    description: 'A valuable 2 euro coin.',
    country: CountryEnum.GERMANY,
  ),
  Coin(
    id: 2,
    type: CoinType.TWO_EURO,
    image: 'assets/value/value-two_euro.png',
    quantity: 200,
    periodStartDate: '2023-01-01',
    periodEndDate: '2023-12-31',
    description: 'A shiny 2 euro coin.',
    country: CountryEnum.FRANCE,
  ),
  // Add more Coin objects as needed
];
