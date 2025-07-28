import 'package:coinllector_app/data/datasources/local/data/coin_data_commemoratives.dart';
import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/shared/enums/coin_quality_enum.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

final List<CoinModel> coinsData = [
  // ANDORRA
  CoinModel(
    id: 1,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/andorra/models/two_euro.png',
    periodStartDate: '2013-06-01',
    description:
        'The €2 coin shows the coat of arms of Andorra with the motto "virtus unita fortior" (virtue united is stronger). Edge-lettering of the €2 coin: 2 **, repeated 6 times.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 2,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/andorra/models/one_euro.png',
    periodStartDate: '2013-06-01',
    description:
        'The €1 coin features Casa de la Vall, the former seat of parliament and a building of cultural and historical interest.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 3,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/andorra/models/fifty_cent.png',
    periodStartDate: '2013-06-01',
    description:
        'The 50 cent coin shows the Romanesque church of Santa Coloma, one of Andorra\'s most iconic historical buildings.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 4,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/andorra/models/twenty_cent.png',
    periodStartDate: '2013-06-01',
    description:
        'The 20 cent coin features the Romanesque church of Santa Coloma, showcasing Andorra\'s rich architectural heritage.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 5,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/andorra/models/ten_cent.png',
    periodStartDate: '2013-06-01',
    description:
        'The 10 cent coin displays the Romanesque church of Santa Coloma, representing Andorra\'s cultural history.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 6,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/andorra/models/five_cent.png',
    periodStartDate: '2013-06-01',
    description:
        'The 5 cent coin depicts a Pyrenean chamois and a golden eagle, symboliThe third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").ing Andorra\'s wildlife and natural beauty.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 7,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/andorra/models/two_cent.png',
    periodStartDate: '2013-06-01',
    description:
        'The 2 cent coin features a Pyrenean chamois and golden eagle, representing Andorra\'s mountain fauna.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 8,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/andorra/models/one_cent.png',
    periodStartDate: '2013-06-01',
    description:
        'The 1 cent coin shows a Pyrenean chamois and golden eagle, highlighting Andorra\'s natural environment.',
    country: CountryNames.ANDORRA,
  ),

  // AUSTRIA
  CoinModel(
    id: 9,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/austria/models/two_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'This coin bears a portrait of the pacifist Bertha von Suttner, a symbol of Austria\'s efforts over many decades to support peace. Edge lettering: 2 EURO ***, repeated four times, alternately upright and inverted.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 10,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/austria/models/one_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'Depicted on this coin is Wolfgang Amadeus Mozart, the famous Austrian composer, in reference to Austria as a land of music.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 11,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/austria/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'Austria chose to produce a series of coins illustrating flowers, architecture and famous people from its history. The designs were chosen by a national panel and public opinion poll. Austrian artist Josef Kaiser created the designs. This coin shows the secession building in Vienna, illustrating the birth of art nouveau in Austria. The building symbolises the birth of a new age and represents a bridge to a new monetary era.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 12,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/austria/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'This design features the Belvedere Palace, one of the most beautiful baroque palaces in Austria. It was here that the treaty re-establishing the sovereignty of Austria was signed in 1955.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 13,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/austria/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'St. Stephen\'s Cathedral, one of the jewels of Viennese Gothic architecture and a popular tourist venue, is depicted on this coin.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 14,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/austria/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'This coin features alpine primroses, as part of a floral series, symbolising a duty to the environment and the part Austria is playing in environmental policy.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 15,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/austria/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'This coin features an edelweiss, as part of a floral series, symbolising a duty to the environment and Austria\'s role in environmental policy.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 16,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/austria/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'This coin features a gentian, as part of a floral series, symbolising a duty to the environment and Austria\'s commitment to environmental protection.',
    country: CountryNames.AUSTRIA,
  ),

  // BELGIUM

  // BELGIUM - 2 Euro coins
  CoinModel(
    id: 17,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/belgium/models/two_euro.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: King Albert II in inner part, royal monogram "A" under crown among 12 stars in outer part with year of issuance.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 18,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/belgium/models/two_euro_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with royal monogram, year, mint marks and country code "BE" in inner part to comply with EU guidelines.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 19,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/belgium/models/two_euro_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: King Philippe with royal monogram "FP", country code "BE", and mint marks flanking the year.',
    country: CountryNames.BELGIUM,
  ),

  // BELGIUM - 1 Euro coins
  CoinModel(
    id: 20,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/belgium/models/one_euro.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: King Albert II in inner part, royal monogram "A" under crown among 12 stars in outer part with year.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 21,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/belgium/models/one_euro_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with royal monogram, year, mint marks and "BE" in inner part per EU guidelines.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 22,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/belgium/models/one_euro_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: King Philippe with monogram "FP", "BE" code, and mint marks beside year.',
    country: CountryNames.BELGIUM,
  ),

  // BELGIUM - 50 Cent coins
  CoinModel(
    id: 23,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/belgium/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: King Albert II portrait with outer ring showing monogram "A" under crown among 12 stars and year.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 24,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/belgium/models/fifty_cent_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with inner design including monogram, year, mint marks and "BE" country code.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 25,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/belgium/models/fifty_cent_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: King Philippe design with "FP" monogram, "BE" code, and mint marks adjacent to year.',
    country: CountryNames.BELGIUM,
  ),

  // BELGIUM - 20 Cent coins
  CoinModel(
    id: 26,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/belgium/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: Features King Albert II with outer ring containing royal monogram "A" under crown, 12 stars and year.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 27,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/belgium/models/twenty_cent_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with inner design including monogram, year, mint marks and "BE" code.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 28,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/belgium/models/twenty_cent_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: King Philippe portrait with "FP" monogram, "BE" country code, and mint marks by year.',
    country: CountryNames.BELGIUM,
  ),

  // BELGIUM - 10 Cent coins
  CoinModel(
    id: 29,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/belgium/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: King Albert II with outer ring showing monogram "A" under crown among 12 stars and issuance year.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 30,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/belgium/models/ten_cent_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with inner design containing monogram, year, mint marks and "BE" code.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 31,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/belgium/models/ten_cent_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: Features King Philippe with "FP" monogram, "BE" country code, and flanking mint marks.',
    country: CountryNames.BELGIUM,
  ),

  // BELGIUM - 5 Cent coins
  CoinModel(
    id: 32,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/belgium/models/five_cent.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: King Albert II portrait with outer ring of monogram "A" under crown, 12 stars and year.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 33,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/belgium/models/five_cent_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with inner design including monogram, year, mint marks and "BE" code.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 34,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/belgium/models/five_cent_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: King Philippe design with "FP" monogram, "BE" country code, and mint marks by year.',
    country: CountryNames.BELGIUM,
  ),

  // BELGIUM - 2 Cent coins
  CoinModel(
    id: 35,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/belgium/models/two_cent.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: Features King Albert II with outer ring containing royal monogram "A" under crown and year.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 36,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/belgium/models/two_cent_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with inner design showing monogram, year, mint marks and "BE" code.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 37,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/belgium/models/two_cent_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: King Philippe portrait with "FP" monogram, "BE" country code, and adjacent mint marks.',
    country: CountryNames.BELGIUM,
  ),

  // BELGIUM - 1 Cent coins
  CoinModel(
    id: 38,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/belgium/models/one_cent.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2007-12-31',
    description:
        'First series: King Albert II with outer ring displaying monogram "A" under crown among stars with year.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 39,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/belgium/models/one_cent_v2.png',
    periodStartDate: '2008-01-01',
    periodEndDate: '2013-12-31',
    description:
        'Second series: King Albert II with inner design containing monogram, year, mint marks and "BE" code.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 40,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/belgium/models/one_cent_v3.png',
    periodStartDate: '2014-01-01',
    description:
        'Third series: Features King Philippe with "FP" monogram, "BE" country code, and flanking mint marks.',
    country: CountryNames.BELGIUM,
  ),

  // CROATIA
  CoinModel(
    id: 41,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/croatia/models/two_euro.png',
    periodStartDate: '2023-01-01',
    description:
        'The €2 coin features a map of Croatia on a chequerboard background. The design, by Ivan Šivak, includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian. Edge lettering of the €2 coin: “O LIJEPA O DRAGA O SLATKA SLOBODO” (“Oh beautiful, oh dear, oh sweet freedom”), a line from Ivan Gundulić’s famous play, Dubravka.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 42,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/croatia/models/one_euro.png',
    periodStartDate: '2023-01-01',
    description:
        'The €1 coin shows a marten on a chequerboard background and was designed by Jagor Šunde, David Čemeljić and Fran Zekan. The marten is a small mammal that lent its name to the country’s former currency, the kuna. The design includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 43,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/croatia/models/fifty_cent.png',
    periodStartDate: '2023-01-01',
    description:
        'The 50-cent coin features a portrait of inventor and engineer Nikola Tesla, who developed alternating current technology. The coin was designed by Ivan Domagoj Račić and includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 44,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/croatia/models/twenty_cent.png',
    periodStartDate: '2023-01-01',
    description:
        'The 20-cent coin features a portrait of inventor and engineer Nikola Tesla, who developed alternating current technology. The coin was designed by Ivan Domagoj Račić and includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 45,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/croatia/models/ten_cent.png',
    periodStartDate: '2023-01-01',
    description:
        'The 10-cent coin features a portrait of inventor and engineer Nikola Tesla, who developed alternating current technology. The coin was designed by Ivan Domagoj Račić and includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 46,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/croatia/models/five_cent.png',
    periodStartDate: '2023-01-01',
    description:
        'The 5-cent coin shows a motif of the letters “HR” in the angular Glagolitic script. The Glagolitic alphabet is the oldest known Slavic script and was used in Croatia until the 19th century. The coin was designed by Maja Škripelj and includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 47,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/croatia/models/two_cent.png',
    periodStartDate: '2023-01-01',
    description:
        'The 2-cent coin shows a motif of the letters “HR” in the angular Glagolitic script. The Glagolitic alphabet is the oldest known Slavic script and was used in Croatia until the 19th century. The coin was designed by Maja Škripelj and includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 48,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/croatia/models/one_cent.png',
    periodStartDate: '2023-01-01',
    description:
        'The 1-cent coin shows a motif of the letters “HR” in the angular Glagolitic script. The Glagolitic alphabet is the oldest known Slavic script and was used in Croatia until the 19th century. The coin was designed by Maja Škripelj and includes the year of issuance and the inscription “HRVATSKA”, the country’s name in Croatian.',
    country: CountryNames.CROATIA,
  ),

  // CYPRUS
  CoinModel(
    id: 49,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/cyprus/models/two_euro.png',
    periodStartDate: '2008-01-01',
    description:
        "The €1 and €2 coins depict a cruciform idol from the Chalcolithic period (3000 BC). This characteristic example of the island's prehistoric art reflects Cyprus's place at the heart of civilisation and antiquity.",
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 50,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/cyprus/models/one_euro.png',
    periodStartDate: '2008-01-01',
    description:
        "The €1 and €2 coins depict a cruciform idol from the Chalcolithic period (3000 BC). This characteristic example of the island's prehistoric art reflects Cyprus's place at the heart of civilisation and antiquity.",
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 51,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/cyprus/models/fifty_cent.png',
    periodStartDate: '2008-01-01',
    description:
        "Featured on the 10, 20 and 50-cent coins is the Kyrenia ship, a trading vessel which dates back to the fourth century BC and a symbol of Cyprus's seafaring history and its importance as a centre of trade.",
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 52,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/cyprus/models/twenty_cent.png',
    periodStartDate: '2008-01-01',
    description:
        "Featured on the 10, 20 and 50-cent coins is the Kyrenia ship, a trading vessel which dates back to the fourth century BC and a symbol of Cyprus's seafaring history and its importance as a centre of trade.",
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 53,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/cyprus/models/ten_cent.png',
    periodStartDate: '2008-01-01',
    description:
        "Featured on the 10, 20 and 50-cent coins is the Kyrenia ship, a trading vessel which dates back to the fourth century BC and a symbol of Cyprus's seafaring history and its importance as a centre of trade.",
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 54,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/cyprus/models/five_cent.png',
    periodStartDate: '2008-01-01',
    description:
        "The 1, 2 and 5-cent coins show the moufflon, a species of wild sheep found on Cyprus and representative of the island's wildlife.",
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 55,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/cyprus/models/two_cent.png',
    periodStartDate: '2008-01-01',
    description:
        "The 1, 2 and 5-cent coins show the moufflon, a species of wild sheep found on Cyprus and representative of the island's wildlife.",
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 56,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/cyprus/models/one_cent.png',
    periodStartDate: '2008-01-01',
    description:
        "The 1, 2 and 5-cent coins show the moufflon, a species of wild sheep found on Cyprus and representative of the island's wildlife.",
    country: CountryNames.CYPRUS,
  ),

  // ESTONIA
  CoinModel(
    id: 57,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/estonia/models/two_euro.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 58,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/estonia/models/one_euro.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 59,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/estonia/models/fifty_cent.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 60,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/estonia/models/twenty_cent.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 61,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/estonia/models/ten_cent.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 62,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/estonia/models/five_cent.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 63,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/estonia/models/two_cent.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 64,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/estonia/models/one_cent.png',
    periodStartDate: '2011-01-01',
    description:
        'All Estonia coins feature a geographical image of Estonia and the word "Eesti", which means "Estonia".',
    country: CountryNames.ESTONIA,
  ),

  // FINLAND
  CoinModel(
    id: 65,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/finland/models/two_euro.png',
    periodStartDate: '1999-01-01',
    description:
        "The motif on this coin comprises cloudberries and cloudberry flowers in a design by Raimo Heino. Edge lettering of the €2 coin: SUOMI FINLAND ***, where the * represents a lion's head.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 66,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/finland/models/one_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'The artist Pertti Mäkinen created a motif depicting two flying swans for this coin. The design was taken from his competition entry for a coin to commemorate the 80th anniversary of the independence of Finland.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 67,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/finland/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2, 5, 10, 20 and 50-cent coins: these show the Finnish heraldic lion in a reproduction of a design by the sculptor Heikki Häiväoja. The heraldic lion in a variety of designs has been used on several Finnish coins over the years, for example on the 1 markka coins between 1964 and 2001.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 68,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/finland/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2, 5, 10, 20 and 50-cent coins: these show the Finnish heraldic lion in a reproduction of a design by the sculptor Heikki Häiväoja. The heraldic lion in a variety of designs has been used on several Finnish coins over the years, for example on the 1 markka coins between 1964 and 2001.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 69,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/finland/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2, 5, 10, 20 and 50-cent coins: these show the Finnish heraldic lion in a reproduction of a design by the sculptor Heikki Häiväoja. The heraldic lion in a variety of designs has been used on several Finnish coins over the years, for example on the 1 markka coins between 1964 and 2001.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 70,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/finland/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2, 5, 10, 20 and 50-cent coins: these show the Finnish heraldic lion in a reproduction of a design by the sculptor Heikki Häiväoja. The heraldic lion in a variety of designs has been used on several Finnish coins over the years, for example on the 1 markka coins between 1964 and 2001.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 71,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/finland/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2, 5, 10, 20 and 50-cent coins: these show the Finnish heraldic lion in a reproduction of a design by the sculptor Heikki Häiväoja. The heraldic lion in a variety of designs has been used on several Finnish coins over the years, for example on the 1 markka coins between 1964 and 2001.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 72,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/finland/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2, 5, 10, 20 and 50-cent coins: these show the Finnish heraldic lion in a reproduction of a design by the sculptor Heikki Häiväoja. The heraldic lion in a variety of designs has been used on several Finnish coins over the years, for example on the 1 markka coins between 1964 and 2001.',
    country: CountryNames.FINLAND,
  ),

  // FRANCE
  CoinModel(
    id: 73,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/france/models/two_euro.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2021-01-01',
    description:
        'The design chosen for the first series of €1 and €2 coins was the work of the artist Joaquin Jimenez. It features a tree symbolising life, continuity and growth, standing within a hexagon and encircled by the motto of the French Republic, "Liberté, Egalité, Fraternité" (Liberty, equality, fraternity). Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 74,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/france/models/two_euro_v2.png',
    periodStartDate: '2022-01-01',
    description:
        'In 2022 France introduced a second series of €1 and €2 coins. The new design features oak and olive branches that form the tree of life and symbolise strength, solidity and peace. The tree and the motto stand within a hexagon. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 75,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/france/models/one_euro.png',
    periodStartDate: '1999-01-01',
    periodEndDate: '2021-01-01',
    description:
        'The design chosen for the first series of €1 and €2 coins was the work of the artist Joaquin Jimenez. It features a tree symbolising life, continuity and growth, standing within a hexagon and encircled by the motto of the French Republic, "Liberté, Egalité, Fraternité" (Liberty, equality, fraternity). Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 76,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/france/models/one_euro_v2.png',
    periodStartDate: '2022-01-01',
    description:
        'In 2022 France introduced a second series of €1 and €2 coins. The new design features oak and olive branches that form the tree of life and symbolise strength, solidity and peace. The tree and the motto stand within a hexagon. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.FRANCE,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 77,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/france/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '10, 20 and 50-cent coins: the theme of the sower is a constant in the history of the French franc. Designed by Laurent Jorlo, "this modern, timeless graphic represents France, which stays true to itself, whilst integrating into Europe".',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 78,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/france/models/fifty_cent_v2.png',
    periodStartDate: '2024-01-01',
    description:
        'In 2024 France introduced a new 50 cent coin series. Designed by Joaquin Jimenez, the coin features a portrait of Nobel Prize-winning scientist Marie Curie, known for her pioneering work on radioactivity. The portrait is set within a French flag motif, symbolising Curie\'s iconic place in the French Republic, represented by the letters RF.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 79,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/france/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '10, 20 and 50-cent coins: the theme of the sower is a constant in the history of the French franc. Designed by Laurent Jorlo, "this modern, timeless graphic represents France, which stays true to itself, whilst integrating into Europe".',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 80,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/france/models/twenty_cent_v2.png',
    periodStartDate: '2024-01-01',
    description:
        'In 2024 France introduced a second series of 20 cent coins. Designed by Joaquin Jimenez, the coin features a portrait of Josephine Baker, a singer, dancer and civil rights activist. She was awarded the Resistance Medal, the Croix de Guerre and the Legion of Honour for her efforts during World War II. The portrait is set within a French flag motif, symbolising Baker\'s iconic place in the French Republic, represented by the letters RF.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 81,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/france/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '10, 20 and 50-cent coins: the theme of the sower is a constant in the history of the French franc. Designed by Laurent Jorlo, "this modern, timeless graphic represents France, which stays true to itself, whilst integrating into Europe".',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 82,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/france/models/ten_cent_v2.png',
    periodStartDate: '2024-01-01',
    description:
        'In 2024 France introduced a new 10 cent coin designed by Joaquin Jimenez. The new coin depicts Simone Veil, a Holocaust survivor and the first President of the directly elected European Parliament. She spent much of her life fighting for women\'s rights and pushed through the 1975 law decriminalising abortion in France.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 83,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/france/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: these depict a young, feminine Marianne with determined features that embody the desire for a sound and lasting Europe. The design was the work of Fabienne Courtiade, an engraver from the Paris Mint.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 84,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/france/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: these depict a young, feminine Marianne with determined features that embody the desire for a sound and lasting Europe. The design was the work of Fabienne Courtiade, an engraver from the Paris Mint.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 85,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/france/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: these depict a young, feminine Marianne with determined features that embody the desire for a sound and lasting Europe. The design was the work of Fabienne Courtiade, an engraver from the Paris Mint.',
    country: CountryNames.FRANCE,
  ),

  // GERMANY
  CoinModel(
    id: 86,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/germany/models/two_euro.png',
    periodStartDate: '1999-01-01',
    description:
        "€1 and €2 coins: the traditional symbol of German sovereignty, the eagle, surrounded by the stars of Europe, appears on these coins. This motif was designed by Heinz and Sneschana Russewa-Hoyer. Edge lettering of the €2 coin: EINIGKEIT UND RECHT UND FREIHEIT (unity, justice and freedom) and the emblem of the Federal Eagle.",
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 87,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/germany/models/one_euro.png',
    periodStartDate: '1999-01-01',
    description:
        '€1 and €2 coins: the traditional symbol of German sovereignty, the eagle, surrounded by the stars of Europe, appears on these coins. This motif was designed by Heinz and Sneschana Russewa-Hoyer. Edge lettering of the €2 coin: EINIGKEIT UND RECHT UND FREIHEIT (unity, justice and freedom) and the emblem of the Federal Eagle.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 88,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/germany/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '10, 20 and 50-cent coins: the Brandenburg Gate, a symbol of the division of Germany and its subsequent reunification, is the motif used on these coins. The perspective of the design, by Reinhard Heinsdorff, emphasises the opening of the gate, stressing the unification of Germany and Europe.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 89,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/germany/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '10, 20 and 50-cent coins: the Brandenburg Gate, a symbol of the division of Germany and its subsequent reunification, is the motif used on these coins. The perspective of the design, by Reinhard Heinsdorff, emphasises the opening of the gate, stressing the unification of Germany and Europe.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 90,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/germany/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '10, 20 and 50-cent coins: the Brandenburg Gate, a symbol of the division of Germany and its subsequent reunification, is the motif used on these coins. The perspective of the design, by Reinhard Heinsdorff, emphasises the opening of the gate, stressing the unification of Germany and Europe.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 91,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/germany/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: the oak twig, reminiscent of that found on the former German pfennig coins, provides the motif for these coins. It was designed by Professor Rolf Lederbogen.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 92,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/germany/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: the oak twig, reminiscent of that found on the former German pfennig coins, provides the motif for these coins. It was designed by Professor Rolf Lederbogen.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 93,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/germany/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: the oak twig, reminiscent of that found on the former German pfennig coins, provides the motif for these coins. It was designed by Professor Rolf Lederbogen.',
    country: CountryNames.GERMANY,
  ),

  // GREECE
  CoinModel(
    id: 94,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/greece/models/two_euro.png',
    periodStartDate: '2002-01-01',
    description:
        "This coin depicts a scene from a mosaic in Sparta (third century AD), showing Europa being abducted by Zeus, who has taken the form of a bull. Europa is a figure from Greek mythology after whom Europe was named. Edge lettering of the €2 coin: EΛΛHNIKH ΔHMOKPATIA * (Hellenic Republic).",
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 95,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/greece/models/one_euro.png',
    periodStartDate: '2002-01-01',
    description:
        'The image of the owl featured in this design was copied from an ancient Athenian 4-drachma coin (fifth century BC).',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 96,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/greece/models/fifty_cent.png',
    periodStartDate: '2002-01-01',
    description:
        "Eleftherios Venizelos (1864-1936), one of Greece's most prominent political figures, is shown on this coin. He was a pioneer in social reform, a renowned diplomat and played a key role in modernising the Greek state and liberating Northern Greece and the Aegean islands.",
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 97,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/greece/models/twenty_cent.png',
    periodStartDate: '2002-01-01',
    description:
        'This coin commemorates Ioannis Capodistrias (1776-1831), a leading national and European politician and diplomat who became the first Governor of Greece (1830-31) following the Greek War of Independence (1821-27).',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 98,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/greece/models/ten_cent.png',
    periodStartDate: '2002-01-01',
    description:
        'Rigas Fereos (Velestinlis) (1757-98) is featured on this coin. He was a forerunner and leading figure of the Greek enlightenment, as well as a visionary and herald of Balkan liberation from Ottoman rule.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 99,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/greece/models/five_cent.png',
    periodStartDate: '2002-01-01',
    description:
        'This coin shows a modern sea-going tanker, reflecting the innovative spirit of Greek shipping.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 100,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/greece/models/two_cent.png',
    periodStartDate: '2002-01-01',
    description:
        'Depicted on this coin is a corvette, a type of ship used during the Greek War of Independence (1821-27).',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 101,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/greece/models/one_cent.png',
    periodStartDate: '2002-01-01',
    description:
        'This design features an advanced model of an Athenian trireme, the largest warship afloat for more than 200 years, dating from the time of the Athenian democracy (fifth century BC).',
    country: CountryNames.GREECE,
  ),

  // IRELAND
  CoinModel(
    id: 102,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/ireland/models/two_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 103,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/ireland/models/one_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 104,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/ireland/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 105,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/ireland/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 106,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/ireland/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 107,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/ireland/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 108,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/ireland/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 109,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/ireland/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All Ireland coins show the Celtic harp, a traditional symbol of Ireland, decorated with the year of issue and the inscription "Éire" − the Irish word for Ireland. The harp shown was designed by Jarlath Hayes. Edge lettering of the €2 coin: 2**, repeated six times, alternately upright and inverted.',
    country: CountryNames.IRELAND,
  ),

  // ITALY
  CoinModel(
    id: 110,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/italy/models/two_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'Depicted on this coin is a portrait drawn by Raphaël of Dante Alighieri, housed in the Pope Julius II Wing of the Vatican City Palace. Edge lettering of the €2 coin: 2*, repeated six times, alternately upright and inverted.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 111,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/italy/models/one_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'This coin shows the famous drawing by Leonardo da Vinci, displayed in the gallery of the Academy in Venice, illustrating the ideal proportions of the human body.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 112,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/italy/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'The statue of Emperor Marcus Aurelius on horseback is the main feature on this coin.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 113,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/italy/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'Portrayed on this coin is a sculpture by Umberto Boccioni, leader of the Italian futurist school.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 114,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/italy/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'This coin commemorates one of the greatest triumphs in Italian art. It shows one of the most famous works in the world, the "Birth of Venus" by Sandro Botticelli.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 115,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/italy/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'This design features the Flavius amphitheatre, which Emperor Vespasian began building around 75 AD and Emperor Titus inaugurated in 80 AD.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 116,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/italy/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'This coin shows the Mole Antonelliana, a tower designed in 1863 by Alessandro Antonelli.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 117,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/italy/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description: 'The Castel del Monte appears on this coin.',
    country: CountryNames.ITALY,
  ),

  // LATVIA
  CoinModel(
    id: 118,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/latvia/models/two_euro.png',
    periodStartDate: '2014-01-01',
    description:
        'The €2 coin features a Latvian folk maiden. This image was originally used on the silver 5 lats coin in 1929. The edge of the coin bears the inscription DIEVS * SVĒTĪ * LATVIJU (GOD BLESS LATVIA). The designer is Guntars Sietiņš.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 119,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/latvia/models/one_euro.png',
    periodStartDate: '2014-01-01',
    description:
        'The €1 coin features a Latvian folk maiden. This image was originally used on the silver 5 lats coin in 1929. The designer is Guntars Sietiņš.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 120,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/latvia/models/fifty_cent.png',
    periodStartDate: '2014-01-01',
    description:
        '10, 20 and 50 cent coin shows the large coat of arms of the Republic of Latvia. The designer is Laimonis Šēnbergs.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 121,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/latvia/models/twenty_cent.png',
    periodStartDate: '2014-01-01',
    description:
        '10, 20 and 50 cent coin shows the large coat of arms of the Republic of Latvia. The designer is Laimonis Šēnbergs.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 122,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/latvia/models/ten_cent.png',
    periodStartDate: '2014-01-01',
    description:
        '10, 20 and 50 cent coin shows the large coat of arms of the Republic of Latvia. The designer is Laimonis Šēnbergs.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 123,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/latvia/models/five_cent.png',
    periodStartDate: '2014-01-01',
    description:
        '1, 2 and 5 cent coin shows the small coat of arms of the Republic of Latvia. The designer is Laimonis Šēnbergs.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 124,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/latvia/models/two_cent.png',
    periodStartDate: '2014-01-01',
    description:
        '1, 2 and 5 cent coin shows the small coat of arms of the Republic of Latvia. The designer is Laimonis Šēnbergs.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 125,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/latvia/models/one_cent.png',
    periodStartDate: '2014-01-01',
    description:
        '1, 2 and 5 cent coin shows the small coat of arms of the Republic of Latvia. The designer is Laimonis Šēnbergs.',
    country: CountryNames.LATVIA,
  ),

  // LITHUANIA
  CoinModel(
    id: 126,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/lithuania/models/two_euro.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 127,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/lithuania/models/one_euro.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 128,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/lithuania/models/fifty_cent.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 129,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/lithuania/models/twenty_cent.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 130,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/lithuania/models/ten_cent.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 131,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/lithuania/models/five_cent.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 132,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/lithuania/models/two_cent.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 133,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/lithuania/models/one_cent.png',
    periodStartDate: '2015-01-01',
    description:
        'All Lithuania’s euro coins show the coat of arms of the Republic of Lithuania, Vytis, the country of issuance "LIETUVA" and the year of issuance "2015". The coins also feature the 12 stars of the European flag. They were designed by the sculptor Antanas Žukauskas. Edge-lettering of the €2 coin: LAISVĖ * VIENYBĖ * GEROVĖ * (Freedom * Unity * Well-Being *)',
    country: CountryNames.LITHUANIA,
  ),

  // LUXEMBOURG
  CoinModel(
    id: 134,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/luxembourg/models/two_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 135,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/luxembourg/models/one_euro.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 136,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/luxembourg/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 137,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/luxembourg/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 138,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/luxembourg/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 139,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/luxembourg/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 140,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/luxembourg/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 141,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/luxembourg/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description:
        'All the Luxembourg coins bear the profile of His Royal Highness Grand Duke Henri. They also bear the year of issue and the word "Luxembourg" written in Luxembourgish ("Lëtzebuerg").',
    country: CountryNames.LUXEMBOURG,
  ),

  // MALTA
  CoinModel(
    id: 142,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/malta/models/two_euro.png',
    periodStartDate: '2008-01-01',
    description:
        "The €1 and €2 coins show the emblem used by the Sovereign Order of Malta. During the Order's rule over Malta, between 1530 and 1798, the eight-pointed cross became associated with the island and is now often referred to as the Maltese Cross.",
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 143,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/malta/models/one_euro.png',
    periodStartDate: '2008-01-01',
    description:
        "The €1 and €2 coins show the emblem used by the Sovereign Order of Malta. During the Order's rule over Malta, between 1530 and 1798, the eight-pointed cross became associated with the island and is now often referred to as the Maltese Cross.",
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 144,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/malta/models/fifty_cent.png',
    periodStartDate: '2008-01-01',
    description:
        'The 10, 20 and 50-cent coins bear the Emblem of Malta, a shield displaying a heraldic representation of the Maltese national flag and supporting a mural crown that represents the fortifications of Malta and denotes a city state. The shield is bounded on the left by an olive branch and on the right by a palm branch, symbols of peace traditionally associated with Malta, forming a wreath tied at its base by a ribbon which carries the inscription "Repubblika ta\' Malta" (Republic of Malta).',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 145,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/malta/models/twenty_cent.png',
    periodStartDate: '2008-01-01',
    description:
        'The 10, 20 and 50-cent coins bear the Emblem of Malta, a shield displaying a heraldic representation of the Maltese national flag and supporting a mural crown that represents the fortifications of Malta and denotes a city state. The shield is bounded on the left by an olive branch and on the right by a palm branch, symbols of peace traditionally associated with Malta, forming a wreath tied at its base by a ribbon which carries the inscription "Repubblika ta\' Malta" (Republic of Malta).',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 146,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/malta/models/ten_cent.png',
    periodStartDate: '2008-01-01',
    description:
        'The 10, 20 and 50-cent coins bear the Emblem of Malta, a shield displaying a heraldic representation of the Maltese national flag and supporting a mural crown that represents the fortifications of Malta and denotes a city state. The shield is bounded on the left by an olive branch and on the right by a palm branch, symbols of peace traditionally associated with Malta, forming a wreath tied at its base by a ribbon which carries the inscription "Repubblika ta\' Malta" (Republic of Malta).',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 147,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/malta/models/five_cent.png',
    periodStartDate: '2008-01-01',
    description:
        'The 1, 2 and 5-cent coins depict the altar at the prehistoric temple complex of Mnajdra, built around 3600 BC on a low elevation overlooking the sea.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 148,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/malta/models/two_cent.png',
    periodStartDate: '2008-01-01',
    description:
        'The 1, 2 and 5-cent coins depict the altar at the prehistoric temple complex of Mnajdra, built around 3600 BC on a low elevation overlooking the sea.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 149,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/malta/models/one_cent.png',
    periodStartDate: '2008-01-01',
    description:
        'The 1, 2 and 5-cent coins depict the altar at the prehistoric temple complex of Mnajdra, built around 3600 BC on a low elevation overlooking the sea.',
    country: CountryNames.MALTA,
  ),

  CoinModel(
    id: 150,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/monaco/models/two_euro.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description:
        "The first series depicts, on the €2 coin, HSH Prince Rainier III.",
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 151,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/monaco/models/two_euro_v2.png',
    periodStartDate: '2006-01-01',
    description:
        "The second series shows, on the €2 and €1 coins, a portrait of HSH Prince Albert II.",
    country: CountryNames.MONACO,
  ),

  // MONACO - 1 Euro coins
  CoinModel(
    id: 152,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/monaco/models/one_euro.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description:
        'A double portrait of HSH Prince Rainier III and HSH Hereditary Prince Albert appears on the €1 coin.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 153,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/monaco/models/one_euro_v2.png',
    periodStartDate: '2006-01-01',
    description:
        'The second series shows, on the €2 and €1 coins, a portrait of HSH Prince Albert II.',
    country: CountryNames.MONACO,
  ),

  // MONACO - 50 Cent coins
  CoinModel(
    id: 154,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/monaco/models/fifty_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description: 'The 10, 20 and 50 cent coins depict the Prince’s seal.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 155,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/monaco/models/fifty_cent_v2.png',
    periodStartDate: '2006-01-01',
    description:
        'HSH Prince Albert’s monogram is depicted on the 10, 20 and 50-cent coins.',
    country: CountryNames.MONACO,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // MONACO - 20 Cent coins
  CoinModel(
    id: 156,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/monaco/models/twenty_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description: 'The 10, 20 and 50 cent coins depict the Prince’s seal.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 157,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/monaco/models/twenty_cent_v2.png',
    periodStartDate: '2006-01-01',
    description:
        'HSH Prince Albert’s monogram is depicted on the 10, 20 and 50-cent coins.',
    country: CountryNames.MONACO,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // MONACO - 10 Cent coins
  CoinModel(
    id: 158,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/monaco/models/ten_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description: 'The 10, 20 and 50 cent coins depict the Prince’s seal.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 159,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/monaco/models/ten_cent_v2.png',
    periodStartDate: '2006-01-01',
    description:
        'HSH Prince Albert’s monogram is depicted on the 10, 20 and 50-cent coins.',
    country: CountryNames.MONACO,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // MONACO - 5 Cent coins
  CoinModel(
    id: 160,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/monaco/models/five_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description:
        'The coat of arms of the Sovereign Princes of Monaco is shown on the 1, 2 and 5-cent coins.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 161,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/monaco/models/five_cent_v2.png',
    periodStartDate: '2006-01-01',
    description:
        'The coat of arms of the Sovereign Princes of Monaco is the main feature of the design on the 1, 2 and 5-cent coins.',
    country: CountryNames.MONACO,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // MONACO - 2 Cent coins
  CoinModel(
    id: 162,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/monaco/models/two_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description:
        'The coat of arms of the Sovereign Princes of Monaco is shown on the 1, 2 and 5-cent coins.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 163,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/monaco/models/two_cent_v2.png',
    periodStartDate: '2006-01-01',
    description:
        'The coat of arms of the Sovereign Princes of Monaco is the main feature of the design on the 1, 2 and 5-cent coins.',
    country: CountryNames.MONACO,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // MONACO - 1 Cent coins
  CoinModel(
    id: 164,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/monaco/models/one_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2005-12-31',
    description:
        'The coat of arms of the Sovereign Princes of Monaco is shown on the 1, 2 and 5-cent coins.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 165,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/monaco/models/one_cent_v2.png',
    periodStartDate: '2006-01-01',
    description:
        'The coat of arms of the Sovereign Princes of Monaco is the main feature of the design on the 1, 2 and 5-cent coins.',
    country: CountryNames.MONACO,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // NETHERLANDS

  // NETHERLANDS - 2 Euro coins
  CoinModel(
    id: 166,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/netherlands/models/two_euro.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands). Edge-lettering of the €2 coin, both series: GOD * ZIJ * MET * ONS * (God be with us).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 167,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/netherlands/models/two_euro_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance. Edge-lettering of the €2 coin, both series: GOD * ZIJ * MET * ONS * (God be with us).',
    country: CountryNames.NETHERLANDS,
  ),

  // NETHERLANDS - 1 Euro coins
  CoinModel(
    id: 168,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/netherlands/models/one_euro.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 169,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/netherlands/models/one_euro_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance.',
    country: CountryNames.NETHERLANDS,
  ),

  // NETHERLANDS - 50 Cent coins
  CoinModel(
    id: 170,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/netherlands/models/fifty_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 171,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/netherlands/models/fifty_cent_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance.',
    country: CountryNames.NETHERLANDS,
  ),

  // NETHERLANDS - 20 Cent coins
  CoinModel(
    id: 172,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/netherlands/models/twenty_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 173,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/netherlands/models/twenty_cent_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance.',
    country: CountryNames.NETHERLANDS,
  ),

  // NETHERLANDS - 10 Cent coins
  CoinModel(
    id: 174,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/netherlands/models/ten_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 175,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/netherlands/models/ten_cent_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance.',
    country: CountryNames.NETHERLANDS,
  ),

  // NETHERLANDS - 5 Cent coins
  CoinModel(
    id: 176,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/netherlands/models/five_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 177,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/netherlands/models/five_cent_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance.',
    country: CountryNames.NETHERLANDS,
  ),

  // NETHERLANDS - 2 Cent coins
  CoinModel(
    id: 178,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/netherlands/models/two_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 179,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/netherlands/models/two_cent_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance.',
    country: CountryNames.NETHERLANDS,
  ),

  // NETHERLANDS - 1 Cent coins
  CoinModel(
    id: 180,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/netherlands/models/one_cent.png',
    periodStartDate: '2001-01-01',
    periodEndDate: '2013-12-31',
    description:
        'First series: Queen Beatrix is shown with the inscription "Beatrix Koningin der Nederlanden" (Queen of the Netherlands).',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 181,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/netherlands/models/one_cent_v2.png',
    periodStartDate: '2014-01-01',
    description:
        'Second series: King Willem-Alexander is shown with the inscription "Willem-Alexander Koning der Nederlanden" (King of the Netherlands). The mint marks appear on either side of the year of issuance.',
    country: CountryNames.NETHERLANDS,
  ),

  // PORTUGAL
  CoinModel(
    id: 182,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/portugal/models/two_euro.png',
    periodStartDate: '1999-01-01',
    description:
        "€1 and €2 coins: the country's castles and coats of arms are set amid the European stars. This symbolises dialogue, the exchange of values and the dynamics of the building of Europe. The centrepiece is the royal seal of 1144. Edge lettering of the €2 coin: five coats of arms and seven castles, all equally spaced.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 183,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/portugal/models/one_euro.png',
    periodStartDate: '1999-01-01',
    description:
        "€1 and €2 coins: the country's castles and coats of arms are set amid the European stars. This symbolises dialogue, the exchange of values and the dynamics of the building of Europe. The centrepiece is the royal seal of 1144. Edge lettering of the €2 coin: five coats of arms and seven castles, all equally spaced.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 184,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/portugal/models/fifty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        "10, 20 and 50-cent coins: these depict the royal seal of 1142 as the centrepiece of the design.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 185,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/portugal/models/twenty_cent.png',
    periodStartDate: '1999-01-01',
    description:
        "10, 20 and 50-cent coins: these depict the royal seal of 1142 as the centrepiece of the design.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 186,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/portugal/models/ten_cent.png',
    periodStartDate: '1999-01-01',
    description:
        "10, 20 and 50-cent coins: these depict the royal seal of 1142 as the centrepiece of the design.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 187,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/portugal/models/five_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: these bear the image of the first royal seal, from 1134, along with the inscription "Portugal".',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 188,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/portugal/models/two_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: these bear the image of the first royal seal, from 1134, along with the inscription "Portugal".',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 189,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/portugal/models/one_cent.png',
    periodStartDate: '1999-01-01',
    description:
        '1, 2 and 5-cent coins: these bear the image of the first royal seal, from 1134, along with the inscription "Portugal".',
    country: CountryNames.PORTUGAL,
  ),

  // SAN_MARINO

  // SAN MARINO - 2 Euro coins
  CoinModel(
    id: 190,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/san_marino/models/two_euro.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description:
        'First series: The Government building (Palazzo Pubblico) is shown on this coin. Edge lettering of the €2 coin: 2*, repeated six times, alternately upright and inverted.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 191,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/san_marino/models/two_euro_v2.png',
    periodStartDate: '2017-01-01',
    description:
        'Second series: The portrait of Saint Marino, detail of a painting by Giovan Battista Urbinelli, is shown on this coin.',
    country: CountryNames.SAN_MARINO,
  ),

  // SAN MARINO - 1 Euro coins
  CoinModel(
    id: 192,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/san_marino/models/one_euro.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description:
        "First series: The Republic's official coat of arms features on the €1 coin.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 193,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/san_marino/models/one_euro_v2.png',
    periodStartDate: '2002-01-01',
    description: 'Second series: The Second Tower features on the €1 coin.',
    country: CountryNames.SAN_MARINO,
  ),

  // SAN MARINO - 50 Cent coins
  CoinModel(
    id: 194,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/san_marino/models/fifty_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description:
        'First series: The 50-cent coin shows the Three Towers of San Marino: Guaita, Cesta and Montale.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 195,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/san_marino/models/fifty_cent_v2.png',
    periodStartDate: '2017-01-01',
    description:
        'Second series: The 50-cent coin shows the portrait of Saint Marino, detail of a painting by Emilio Retrosi.',
    country: CountryNames.SAN_MARINO,
  ),

  // SAN MARINO - 20 Cent coins
  CoinModel(
    id: 196,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/san_marino/models/twenty_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description:
        'First series: Saint Marinus, based on a canvas of the Guercino school, is depicted on this coin.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 197,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/san_marino/models/twenty_cent_v2.png',
    periodStartDate: '2017-01-01',
    description:
        'Second series: Mount Titano with the three Towers is depicted on this coin.',
    country: CountryNames.SAN_MARINO,
  ),

  // SAN MARINO - 10 Cent coins
  CoinModel(
    id: 198,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/san_marino/models/ten_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description:
        'First series: The 10-cent coin features the Basilica of Saint Marinus.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 199,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/san_marino/models/ten_cent_v2.png',
    periodStartDate: '2017-01-01',
    description:
        'Second series: The 10-cent coin features the Church of St Francis.',
    country: CountryNames.SAN_MARINO,
  ),

  // SAN MARINO - 5 Cent coins
  CoinModel(
    id: 200,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/san_marino/models/five_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description: 'First series: The 5 cent coin show the First Tower (Guaita).',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 201,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/san_marino/models/five_cent_v2.png',
    periodStartDate: '2017-01-01',
    description:
        'Second series: The 5 cent coin show the Church of St Quirinus.',
    country: CountryNames.SAN_MARINO,
  ),

  // SAN MARINO - 2 Cent coins
  CoinModel(
    id: 202,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/san_marino/models/two_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description: 'First series: The 2 -cent coin show the Statue of Liberty.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 203,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/san_marino/models/two_cent_v2.png',
    periodStartDate: '2017-01-01',
    description: 'Second series: The 2 cent coin show the City Gate.',
    country: CountryNames.SAN_MARINO,
  ),

  // SAN MARINO - 1 Cent coins
  CoinModel(
    id: 204,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/san_marino/models/one_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2016-01-01',
    description:
        'First series: The 1 cent coin show the Third Tower (Montale).',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 205,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/san_marino/models/one_cent_v2.png',
    periodStartDate: '2017-01-01',
    description:
        'Second series: The 1 cent coin show the official coat of arms of the Republic of San Marino.',
    country: CountryNames.SAN_MARINO,
  ),

  // SLOVAKIA
  CoinModel(
    id: 206,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/slovakia/models/two_euro.png',
    periodStartDate: '2009-01-01',
    description:
        "The €1 and €2 coins depict a double cross on three hills, as featured in the national emblem of Slovakia.",
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 207,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/slovakia/models/one_euro.png',
    periodStartDate: '2009-01-01',
    description:
        "The €1 and €2 coins depict a double cross on three hills, as featured in the national emblem of Slovakia.",
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 208,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/slovakia/models/fifty_cent.png',
    periodStartDate: '2009-01-01',
    description:
        'The 10, 20 and 50 cent coins show Bratislava castle and the national emblem of Slovakia.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 209,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/slovakia/models/twenty_cent.png',
    periodStartDate: '2009-01-01',
    description:
        'The 10, 20 and 50 cent coins show Bratislava castle and the national emblem of Slovakia.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 210,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/slovakia/models/ten_cent.png',
    periodStartDate: '2009-01-01',
    description:
        'The 10, 20 and 50 cent coins show Bratislava castle and the national emblem of Slovakia.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 211,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/slovakia/models/five_cent.png',
    periodStartDate: '2009-01-01',
    description:
        'The 1, 2 and 5 cent coins feature the Tatra Mountains’ peak, Kriváň, a symbol of the sovereignty of the Slovak nation, and the national emblem of Slovakia.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 212,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/slovakia/models/two_cent.png',
    periodStartDate: '2009-01-01',
    description:
        'The 1, 2 and 5 cent coins feature the Tatra Mountains’ peak, Kriváň, a symbol of the sovereignty of the Slovak nation, and the national emblem of Slovakia.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 213,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/slovakia/models/one_cent.png',
    periodStartDate: '2009-01-01',
    description:
        'The 1, 2 and 5 cent coins feature the Tatra Mountains’ peak, Kriváň, a symbol of the sovereignty of the Slovak nation, and the national emblem of Slovakia.',
    country: CountryNames.SLOVAKIA,
  ),

  // SLOVENIA
  CoinModel(
    id: 214,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/slovenia/models/two_euro.png',
    periodStartDate: '2007-01-01',
    description:
        'This coin shows the poet France Prešeren and the inscription "Shivé naj vsi naródi" (God’s blessing on all nations) − a line taken from his poem "Zdravljica" which is also used in the country’s national anthem. Edge lettering of the €2 coin: SLOVENIJA followed by an engraved dot.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 215,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/slovenia/models/one_euro.png',
    periodStartDate: '2007-01-01',
    description:
        'This coin bears a portrait of Primož Trubar, author of the first book printed in Slovene.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 216,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/slovenia/models/fifty_cent.png',
    periodStartDate: '2007-01-01',
    description: 'The Triglav mountain is depicted on this coin.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 217,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/slovenia/models/twenty_cent.png',
    periodStartDate: '2007-01-01',
    description: 'Lipizzaner horses form the central feature of this design.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 218,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/slovenia/models/ten_cent.png',
    periodStartDate: '2007-01-01',
    description:
        'This coin features architect Jože Plečnik’s unrealised plan for the Slovenian Parliament.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 219,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/slovenia/models/five_cent.png',
    periodStartDate: '2007-01-01',
    description: 'This coin depicts a sower.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 220,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/slovenia/models/two_cent.png',
    periodStartDate: '2007-01-01',
    description: 'The Sovereign Enthronement Stone features on this coin.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 221,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/slovenia/models/one_cent.png',
    periodStartDate: '2007-01-01',
    description: 'This coin bears the image of a stork.',
    country: CountryNames.SLOVENIA,
  ),

  // SPAIN
  // SPAIN - 2 Euro coins
  CoinModel(
    id: 222,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/spain/models/two_euro.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        'The first and second series show a portrait of King Juan Carlos I de Borbón y Borbón.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 223,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/spain/models/two_euro_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        'The first and second series show a portrait of King Juan Carlos I de Borbón y Borbón. Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 224,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/spain/models/two_euro_v3.png',
    periodStartDate: '2015-01-01',
    description:
        'In 2015, Spain introduced a third series of €1 and €2 coins showing the new King Felipe VI and the country code ‘ESPAÑA 2015’. The mint mark appears at the right of the effigy.',
    country: CountryNames.SPAIN,
  ),

  // SPAIN - 1 Euro coins
  CoinModel(
    id: 225,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/spain/models/one_euro.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        'The first and second series show a portrait of King Juan Carlos I de Borbón y Borbón.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 226,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/spain/models/one_euro_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        'The first and second series show a portrait of King Juan Carlos I de Borbón y Borbón. Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 227,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/spain/models/one_euro_v3.png',
    periodStartDate: '2015-01-01',
    description:
        'In 2015, Spain introduced a third series of €1 and €2 coins showing the new King Felipe VI and the country code ‘ESPAÑA 2015’. The mint mark appears at the right of the effigy.',
    country: CountryNames.SPAIN,
  ),

  // SPAIN - 50 Cent coins
  CoinModel(
    id: 228,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/spain/models/fifty_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work".',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 229,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/spain/models/fifty_cent_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work". Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),

  // SPAIN - 20 Cent coins
  CoinModel(
    id: 230,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/spain/models/twenty_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work".',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 231,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/spain/models/twenty_cent_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work". Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),

  // SPAIN - 10 Cent coins
  CoinModel(
    id: 232,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/spain/models/ten_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work".',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 233,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/spain/models/ten_cent_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work". Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),

  // SPAIN - 5 Cent coins
  CoinModel(
    id: 234,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/spain/models/five_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        '1, 2 and 5-cent coins: the cathedral of Santiago de Compostela, a jewel of Spanish Romanesque architecture and one of the most famous pilgrimage destinations in the world, is pictured on these coins. They show the monumental facade of the Obradoiro, a splendid example of Spanish baroque construction, started in 1667 by Jose del Toro and Domingo de Andrade. It was finished in the 18th century by Fernando Casas y Novoa.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 235,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/spain/models/five_cent_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work". Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),

  // SPAIN - 2 Cent coins
  CoinModel(
    id: 236,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/spain/models/two_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        '1, 2 and 5-cent coins: the cathedral of Santiago de Compostela, a jewel of Spanish Romanesque architecture and one of the most famous pilgrimage destinations in the world, is pictured on these coins. They show the monumental facade of the Obradoiro, a splendid example of Spanish baroque construction, started in 1667 by Jose del Toro and Domingo de Andrade. It was finished in the 18th century by Fernando Casas y Novoa.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 237,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/spain/models/two_cent_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work". Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),

  // SPAIN - 1 Cent coins
  CoinModel(
    id: 238,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/spain/models/one_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2009-01-01',
    description:
        '1, 2 and 5-cent coins: the cathedral of Santiago de Compostela, a jewel of Spanish Romanesque architecture and one of the most famous pilgrimage destinations in the world, is pictured on these coins. They show the monumental facade of the Obradoiro, a splendid example of Spanish baroque construction, started in 1667 by Jose del Toro and Domingo de Andrade. It was finished in the 18th century by Fernando Casas y Novoa.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 239,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/spain/models/one_cent_v2.png',
    periodStartDate: '2010-01-01',
    periodEndDate: '2014-01-01',
    description:
        '10, 20 and 50-cent coins: Miguel de Cervantes, the father of Spanish literature, is shown on these coins, reflecting "the universality of the man and his work". Tweaked to fit with the guidelines.',
    country: CountryNames.SPAIN,
  ),

  // VATICAN
  // Vatican - TWO_EURO
  CoinModel(
    id: 240,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/vatican/models/two_euro.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 241,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/vatican/models/two_euro_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 242,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/vatican/models/two_euro_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 243,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/vatican/models/two_euro_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 244,
    type: CoinType.TWO_EURO,
    image: 'assets/coins/vatican/models/two_euro_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // ONE_EURO
  CoinModel(
    id: 245,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/vatican/models/one_euro.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 246,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/vatican/models/one_euro_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
    allowedQualities: [CoinQuality.BU],
  ),
  CoinModel(
    id: 247,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/vatican/models/one_euro_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 248,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/vatican/models/one_euro_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 249,
    type: CoinType.ONE_EURO,
    image: 'assets/coins/vatican/models/one_euro_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // FIFTY_CENT
  CoinModel(
    id: 250,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/vatican/models/fifty_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 251,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/vatican/models/fifty_cent_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 252,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/vatican/models/fifty_cent_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 253,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/vatican/models/fifty_cent_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 254,
    type: CoinType.FIFTY_CENT,
    image: 'assets/coins/vatican/models/fifty_cent_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
  ),

  // TWENTY_CENT
  CoinModel(
    id: 255,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/vatican/models/twenty_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 256,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/vatican/models/twenty_cent_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 257,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/vatican/models/twenty_cent_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 258,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/vatican/models/twenty_cent_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 259,
    type: CoinType.TWENTY_CENT,
    image: 'assets/coins/vatican/models/twenty_cent_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // TEN_CENT
  CoinModel(
    id: 260,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/vatican/models/ten_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 261,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/vatican/models/ten_cent_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 262,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/vatican/models/ten_cent_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 263,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/vatican/models/ten_cent_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  CoinModel(
    id: 264,
    type: CoinType.TEN_CENT,
    image: 'assets/coins/vatican/models/ten_cent_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // FIVE_CENT
  CoinModel(
    id: 265,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/vatican/models/five_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 266,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/vatican/models/five_cent_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 267,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/vatican/models/five_cent_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 268,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/vatican/models/five_cent_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 269,
    type: CoinType.FIVE_CENT,
    image: 'assets/coins/vatican/models/five_cent_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // TWO_CENT
  CoinModel(
    id: 270,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/vatican/models/two_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 271,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/vatican/models/two_cent_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 272,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/vatican/models/two_cent_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 273,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/vatican/models/two_cent_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 274,
    type: CoinType.TWO_CENT,
    image: 'assets/coins/vatican/models/two_cent_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  // ONE_CENT
  CoinModel(
    id: 275,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/vatican/models/one_cent.png',
    periodStartDate: '2002-01-01',
    periodEndDate: '2005-12-31',
    description: 'All first series of Vatican, show Pope John Paul II.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 276,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/vatican/models/one_cent_v2.png',
    periodStartDate: '2005-01-01',
    periodEndDate: '2006-12-31',
    description:
        'All second series of Vatican, show the coat of arms of the Cardinal Chamberlain, the acting head of state of the Vatican City, superimposed on the emblem of the Apostolic Chamber in the centre of the coin. The upper part of this design is surrounded by the semicircular words "SEDE VACANTE" and the year of issue in Roman numerals, i.e. "MMV". The designer\'s name, "D. LONGO", appears on the lower left-hand edge of the central design, while the respective engraver\'s initials appear on the lower right-hand edge, namely "ELF inc" (on the 5 cent and €1 coins).',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 277,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/vatican/models/one_cent_v3.png',
    periodStartDate: '2006-01-01',
    periodEndDate: '2013-12-31',
    description:
        'The third series, issued between April 2006 and December 2013, shows Pope Benedict XVI. To the left are the designer’s initials ("DL").',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 278,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/vatican/models/one_cent_v4.png',
    periodStartDate: '2014-01-01',
    periodEndDate: '2017-12-31',
    description:
        'The fourth series, first issued in January 2014, shows Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),
  CoinModel(
    id: 279,
    type: CoinType.ONE_CENT,
    image: 'assets/coins/vatican/models/one_cent_v5.png',
    periodStartDate: '2017-01-01',
    description:
        'The fifth series, first issued in March 2017, shows the coat of arms of the Sovereign of the Vatican City State, Pope Francis.',
    country: CountryNames.VATICAN,
    allowedQualities: [...CoinQualityGroups.collector],
  ),

  ...coinDataCommemoratives,
];
