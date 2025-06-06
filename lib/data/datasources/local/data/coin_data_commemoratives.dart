import 'package:coinllector_app/data/models/coin_model.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';

// Commemorative coins list
final List<CoinModel> coinDataCommemoratives = [
  // 2004 -------------------------------------------------------------
  CoinModel(
    id: 280,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2004/2004_1-min.png',
    periodStartDate: '2004-12-01',
    quantity: 100_000,
    description:
        "75th anniversary of the founding of the Vatican City State. The inner part shows a schematic representation of the perimeter walls of the Vatican City with St Peter's Basilica in the foreground. Also in the inner part are the inscriptions '75 o ANNO DELLO STATO' and '1929-2004' as well as, in smaller letters, the name of the designer 'VEROI' and the initials of the engraver 'L.D.S. INC.'. The outer part of the coin features the twelve stars of the European Union and the inscription 'CITTA' DEL VATICANO'.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 281,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2004/2004_2-min.png',
    periodStartDate: '2004-12-01',
    quantity: 16_000_000,
    description:
        "5th decade of the World Food Programme. In the centre is the globe, tilted to the right and bearing the inscription 'WORLD FOOD PROGRAMME'. An ear of wheat, an ear of maize and an ear of rice, the three grains representing the world's basic sources of nourishment, emerge from behind the globe. To the right of the globe is an 'I' superimposed on an 'R', denoting 'Repubblica Italiana', below which there appears a smaller combination of the letters U and P, the initials of the engraver, Uliana Pernazza. To the upper left of the globe is the mint mark 'R' and under the globe is the year – '2004'. The 12 stars of the European Union are positioned around the outer circle.",
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 282,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2004/2004_3-min.png',
    periodStartDate: '2004-12-01',
    quantity: 110_000,
    description:
        "Bartolomeo Borghesi (historian, numismatist). The twelve stars of the European Union positioned around the outer circle of the coin and the issuing year '2004', positioned bottom centre, surround the bust of Bartolomeo Borghesi. To the left of the bust is the inscription 'Bartolomeo Borghesi', and one above the other are the letter 'R' and the engraver's initials 'E.L.F.'. To the right of the bust is the word 'San Marino'.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 283,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2004/2004_4-min.png',
    periodStartDate: '2004-06-01',
    quantity: 1_000_000,
    description:
        "Enlargement of the European Union by ten new Member States. The design describes a stylised pillar from which the sprouts grow upwards. The sprouts represent the enlargement of the European Union. The pillar represents the foundation for growth. Near the pillar there are the letters 'EU'. In the upper part of the coin there is the year '2004'. Twelve stars, together with the year, surround the design.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 284,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2004/2004_5-min.png',
    periodStartDate: '2004-06-01',
    quantity: 2_490_000,
    description:
        "Effigy and monogram of Grand-Duke Henri. The coin depicts on the left hand of the inner part the effigy of His Royal Highness, the Grand-Duke Henri, looking to the right, and on the right hand the monogram of the Grand-Duke Henri (special letter 'H' topped with a crown). The 12 stars appear in semi-circular form at the right of the monogram. The year 2004, surrounded by the mint mark as well as the engraver's initials, and the word LËTZEBUERG are written in circular form at the top of the ring. The words 'HENRI — Grand-Duc de Luxembourg' appear at the bottom of the ring.",
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 285,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2004/2004_6-min.png',
    periodStartDate: '2004-03-01',
    quantity: 50_000_000,
    description:
        "Olympic Games in Athens 2004. The twelve stars of the European Union positioned around the outer circle surround the design of an ancient statue depicting a discobolus in his attempt to throw the discus. The base of the statue covers a small part of the coin's external ring (outer part). To the left is the logo of the Olympic Games 'ATHENS 2004' and the five Olympic circles, and to the right, one above the other, are the figure '2' and the word 'ΕΥΡΩ'. The yearmark is written in split form around the star positioned bottom centre, as follows: 20*04 and the mintmark is above the athlete's head to the left.",
    country: CountryNames.GREECE,
  ),

  // 2005 -------------------------------------------------------------
  CoinModel(
    id: 286,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_01-min.png',
    periodStartDate: '2005-12-01',
    quantity: 100_000,
    description:
        "20th World Youth Day. Depicted in the centre of the coin is the Cathedral of Cologne with a comet passing by above. The words ‘XX GIORNATA MONDIALE DELLA GIOVENTÙ’ are inscribed along the upper edge of the central part, separated by the tail of the comet and two of the cathedral’s spires, one of which extends into the coin’s outer ring. Twelve stars are depicted in a semicircle along the upper part of the outer ring, separated at the top by the year of issue (2005) and the mintmark ‘R’. Below the central image of the cathedral, the words ‘CITTÀ DEL VATICANO’ form a semicircle in the outer ring.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 287,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_02-min.png',
    periodStartDate: '2005-10-01',
    quantity: 130_000,
    description:
        "World Year of Physics 2005. The centre of the coin features a free interpretation of the allegorical painting of Galileo Galilei that is known as ‘la fisica antica’ or the study of the planets. The year of issue appears beneath a globe standing on a desk. To the left of the image is the mintmark ‘R’, and the engraver’s initials ‘LDS’ appear on the right. The words ‘SAN MARINO’ form a semicircle above the image, while the words ‘ANNO MONDIALE DELLA FISICA’ run along the lower edge of the inner part below. The outer ring bears the 12 stars of the European Union, separated by the outer edges of the image of a stylised atom inscribed in the background of the entire coin.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 288,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_03-min.png',
    periodStartDate: '2005-10-01',
    quantity: 18_000_000,
    description:
        "1st anniversary of the signing of the European Constitution. The centre of the coin features Europa and the bull, with Europa holding a pen and the text of the European Constitution. To the upper left of the image is the mintmark ‘R’. The initials of engraver Maria Carmela Colaneri, ‘MCC’, appear on the lower left edge of the coin’s central part. The year of mintage is shown in the top right of the image above the head of the bull. Positioned just off-centre at the bottom of the image is the monogram of the Italian Republic, ‘RI’. The words ‘COSTITUZIONE EUROPEA’ form a semicircle along the outer ring of the coin beneath the central image, while twelve stars are depicted on the remainder of the outer ring.",
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 289,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_04-min.png',
    periodStartDate: '2005-10-01',
    quantity: 2_000_000,
    description:
        "60th anniversary of the establishment of the United Nations and 50th anniversary of Finland’s membership therein. Depicted in the centre of the coin are parts of a jigsaw puzzle showing a dove of peace. Below the image of the dove, inscribed along the edge of the bottom half of the central part of the coin, the inscription ‘FINLAND — UN’ appears on the left and the year of issue on the right. Above the last figure of the year of issue, set close to the edge of a piece of the jigsaw puzzle, is the letter ‘K’, the engraver's initial. The mintmark ‘M’ is inscribed immediately below the image of the dove of peace. The outer ring features the 12 stars of the European Union.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 290,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_05-min.png',
    periodStartDate: '2005-05-01',
    quantity: 7_000_000,
    description:
        "50th anniversary of the Austrian State Treaty. The centre of the coin shows a reproduction of the signatures and seals in the Austrian State Treaty, which was signed by the foreign ministers and ambassadors of the Soviet Union, the United Kingdom, the United States and France, and by Leopold Figl, Foreign Minister of Austria, in May 1955. The inscription ‘50 JAHRE STAATSVERTRAG' appears above the seals and the year of issue, 2005, below them. The vertical stripes in the background represent Austria's national colours (red-white-red). The outer ring of the coin features the 12 stars of the EU.",
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 291,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_06-min.png',
    periodStartDate: '2005-04-01',
    quantity: 8_000_000,
    description:
        "4th centenary of the first edition of Miguel de Cervantes’ 'The ingenious gentleman Don Quixote of La Mancha'. The centre of the coin features an image of Don Quixote holding a lance, with windmills in the background. To the left, impressed into the surface of the coin, is the word 'ESPAÑA', under which the mintmark 'M' appears. The 12 stars of the European Union are shown in the outer ring of the coin, with four of them impressed into the surface. The year of issue is indicated at the bottom.",
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 292,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_07-min.png',
    periodStartDate: '2005-03-01',
    quantity: 6_000_000,
    description:
        "Belgium-Luxembourg Economic Union. The effigies of Grand Duke Henri of Luxembourg and King Albert II of Belgium are depicted in profile (from left to right) in the centre of the coin, above the year of issue, 2005. The engraver's initials, ‘LL', appear to the lower right. The two effigies and the date are surrounded by the outer ring bearing the 12 stars of the EU and the monograms of Grand Duke Henri on the left and of King Albert II on the right. The mintmarks appear between two stars near the bottom of the coin.",
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 293,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2005/2005_08-min.png',
    periodStartDate: '2005-01-01',
    quantity: 2_800_000,
    description:
        "50th birthday of Grand Duke Henri, 5th anniversary of his accession to the throne and 100th anniversary of the death of Grand Duke Adolphe. Depicted in the centre of the coin is the effigy of Grand Duke Henri, looking to the right and superimposed on the effigy of Grand Duke Adolphe. Above the effigies appears the legend ‘GRANDS-DUCS DE LUXEMBOURG’. The names ‘HENRI’, set above ‘*1955’, and ‘ADOLPHE’, set above ‘†1905’, are inscribed below the respective effigies. On the outer ring of the coin, the 12 stars of the EU surrounding the design are placed between the letters of the word ‘LËTZEBUERG’ and the year of issue, 2005, with the latter centred below the effigies and flanked by the letter ‘S’ on the left and the logo of the mint on the right.",
    country: CountryNames.LUXEMBOURG,
  ),

  // 2006 -------------------------------------------------------------
  CoinModel(
    id: 294,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2006/2006_01-min.png',
    periodStartDate: '2006-11-01',
    quantity: 100_000,
    description:
        "5th Centenary of the Swiss Pontifical Guard. The coin features a Swiss guard taking an oath of loyalty to the Pope. The inscription ‘GUARDIA SVIZZERA PONTIFICIA’ forms a semi-circle around the guard, while under the flag appears the name of the issuing state, ‘CITTÀ DEL VATICANO’. ‘1506’ appears on the left side, above the signature of the engraver ‘O. ROSSI’ along the flagpole. ‘2006’ appears on the right side, above the mint mark ‘R’. The 12 stars of the European Union are depicted on the outer ring.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 295,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2006/2006_02-min.png',
    periodStartDate: '2006-10-01',
    quantity: 120_000,
    description:
        "500th anniversary of Christopher Columbus' death. The coin shows Christopher Columbus and three caravels. The inscription ‘SAN MARINO’ appears above his portrait, and a wind rose and the mint mark ‘R’ to the right. The dates ‘1506 — 2006’ are shown on a scroll below his portrait. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 296,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2006/2006_03-min.png',
    periodStartDate: '2006-10-01',
    quantity: 2_500_000,
    description:
        "100th anniversary of universal and equal suffrage. The inner part of the coin shows male and female faces separated by a line. To their left is ‘1.10.1906’ and to their right is ‘20 FI 06’, the year of issue with the abbreviation for Finland, FI. The mint mark ‘M’ appears next to each of the two faces. The 12 stars of the European Union are depicted on the outer ring of the coin.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 297,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2006/2006_04-min.png',
    periodStartDate: '2006-04-01',
    quantity: 5_000_000,
    description:
        "Atomium. An image of Atomium is shown in the centre of the coin and the engraver’s initials ‘LL’ to its right. Two mintmarks appear near its base. The outer ring of the coin features the 12 stars of the European Union, the letter ‘B’ and the year of mintage ‘2006’.",
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 298,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2006/2006_05-min.png',
    periodStartDate: '2006-02-01',
    quantity: 30_000_000,
    description:
        "Schleswig-Holstein. The Holstentor, the gate symbolising of the town of Lübeck, is shown in the centre of the coin and below it the word ‘Schleswig-Holstein’, the first of Germany’s 16 federal states to be commemorated in a euro coin. The engraver’s initials ‘HH’ appear to the right of the image and the mintmark ‘A’, ‘D’, ‘F’, ‘G’ or ‘J’, depending on the mint, to the left. The year of mintage, 2006, the 12 stars of the European Union and the words ‘Bundesrepublik Deutschland’ are shown in the outer ring.",
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 299,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2006/2006_06-min.png',
    periodStartDate: '2006-01-01',
    quantity: 40_000_000,
    description:
        "XX Olympic Winter Games - Turin 2006. An image of a skier, a dynamic, curvilinear figure, is in the centre of the coin. Above him are the words ‘GIOCHI INVERNALI’ and to his left the location of the Winter Games is marked by the word ‘TORINO’ and an image of Turin’s landmark Mole Antonelliana building. The monogram of the Italian Republic ‘RI’ and the mintmark ‘R’ are also to the skier’s left. The year of issue, 2006, and the initials of the designer ‘MCC’ (Maria Carmela Colaneri) are shown to his right. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 300,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2006/2006_07-min.png',
    periodStartDate: '2006-01-01',
    quantity: 1_100_000,
    description:
        "25th birthday of Grand-Duke Guillaume, heir to the throne. The effigy of Grand-Duke Henri is superimposed on that of Grand-Duke Guillaume in the centre of the coin. The year of issue, 2006, appears below the effigies, flanked by the letter ‘S’ and the mintmark. The word ‘LËTZEBUERG’ appears above the effigies. The 12 stars of the European Union are shown in the outer ring of the coin.",
    country: CountryNames.LUXEMBOURG,
  ),

  // 2007 -------------------------------------------------------------
  CoinModel(
    id: 301,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_01-min.png',
    periodStartDate: '2007-12-01',
    quantity: 2_000_000,
    description:
        '90th anniversary of Finland\'s independence. The coin shows a nine-oar boat with rowers, symbolising collaboration. The year of issue, 2007, and the year of independence, 1917, appear above and below the image, respectively. The mint mark appears to the left of the oars and \'FI\' for Finland to the right. The outer ring of the coin features the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 302,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_02-min.png',
    periodStartDate: '2007-10-01',
    quantity: 130_000,
    description:
        'Bicentenary of the birth of Giuseppe Garibaldi. The inner part of the coin features the engraving of a portrait of Giuseppe Garibaldi. The words \'SAN MARINO\' and the year of issue (2007) are inscribed along the outer edge of the inner part on the left and right of the portrait respectively. The mint mark (R) is inscribed to the left of the portrait, while the initials of the artist Ettore Lorenzo Frapiccini (E.L.F.) appear on the lower left-hand edge of the inner part. The 12 stars of the European Union are depicted on the outer ring.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 303,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_03-min.png',
    periodStartDate: '2007-10-01',
    quantity: 100_000,
    description:
        '80th birthday of His Holiness Pope Benedict XVI. The inner part of the coin features the profile of His Holiness Benedict XVI facing the left. The legend \'BENEDICTI XVI P.M. AETATIS ANNO LXXX CITTA\' DEL VATICANO\' is engraved along the outer edge of the inner part of the coin. To the left of the effigy are the mintmark, \'R\', the year of issue, \'2007\', and the initials of the engraver, \'M.C.C. INC.\', while the artist\'s name, \'LONGO\', is inscribed on the right. The outer ring of the coin bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 304,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_04-min.png',
    periodStartDate: '2007-07-01',
    quantity: 20_000,
    description:
        '25th anniversary of the death of Princess Grace. The coin features an effigy of Princess Grace, to the right of which appear the word \'MONACO\', the mint mark, the year \'2007\' and the engraver\'s mark. The name of the artist, \'R.B.BARON\', is shown under the Princess\'s hair. The 12 stars of the European Union are depicted on the outer ring of the coin.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 305,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_05-min.png',
    periodStartDate: '2007-07-01',
    quantity: 2_000_000,
    description:
        'Portuguese Presidency of the European Union. The inner part of the coin features a cork oak (quercus suber). The Coat of Arms of Portugal is depicted beneath the lower branches to the left of the trunk, while the word "PORTUGAL", written over three lines, appears on the right. Inscribed in the form of an arc along the edge of the inner part of the coin below the tree are the artist\'s signature (I. Vilar), the year of issue (2007), the mintmark (INCM) and the legend "PRESIDÊNCIA DO CONSELHO DA UE". The outer ring of the coin bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 306,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_06-min.png',
    periodStartDate: '2007-03-01',
    quantity: 9_000_000,
    description:
        'Austria Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 307,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_07-min.png',
    periodStartDate: '2007-03-01',
    quantity: 5_040_000,
    description:
        'Belgium Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 308,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_08-min.png',
    periodStartDate: '2007-03-01',
    quantity: 1_400_000,
    description:
        'Finland Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 309,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_09-min.png',
    periodStartDate: '2007-03-01',
    quantity: 9_406_857,
    description:
        'France Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 310,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_10-min.png',
    periodStartDate: '2007-03-01',
    quantity: 30_865_630,
    description:
        'Germany Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 311,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_11-min.png',
    periodStartDate: '2007-03-01',
    quantity: 3_978_549,
    description:
        'Greece Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 312,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_12-min.png',
    periodStartDate: '2007-03-01',
    quantity: 4_640_112,
    description:
        'Ireland Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 313,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_13-min.png',
    periodStartDate: '2007-03-01',
    quantity: 5_000_000,
    description:
        'Italy Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 314,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_14-min.png',
    periodStartDate: '2007-03-01',
    quantity: 2_046_000,
    description:
        'Luxembourg Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 315,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_15-min.png',
    periodStartDate: '2007-03-01',
    quantity: 6_355_500,
    description:
        'Netherlands Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 316,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_16-min.png',
    periodStartDate: '2007-03-01',
    quantity: 1_520_000,
    description:
        'Portugal Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 317,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_17-min.png',
    periodStartDate: '2007-03-01',
    quantity: 400_000,
    description:
        'Slovenia Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 318,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_18-min.png',
    periodStartDate: '2007-03-01',
    quantity: 8_000_000,
    description:
        'Spain Version. 50th anniversary of the Treaty of Rome. The coin shows the Treaty document signed by the six founding countries on a background evoking the paving (designed by Michelangelo) of the Piazza del Campidoglio in Rome, where the signing took place on 25 March 1957. ‘Treaty of Rome 50 years’, ‘EUROPE’ and the name of the issuing country appear in the respective languages of the euro area or in Latin. Thus, the legend differs from country to country, but the image is the same. The Treaty of Rome established the European Economic Community and ultimately led to the introduction of the euro in 1999 and the euro banknotes and coins in 2002. The anniversary was celebrated on 25 March 2007. The euro area countries have marked the occasion by jointly issuing this commemorative coin. Its design was selected following a competition organised by the European mints. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 319,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_19-min.png',
    periodStartDate: '2007-02-01',
    quantity: 30_000_000,
    description:
        'Mecklenburg-Vorpommern. The coin shows Schwerin Castle and bears the inscription \'Mecklenburg-Vorpommern\' - the federal state of Mecklenburg-West Pomerania where the castle is located. The mintmark, \'A\', \'D\', \'F\', \'G\' or \'J\', appears above the image, and the engraver\'s initials \'HH\' below it. The year of mintage, 2007, the 12 stars of the European Union and the words \'Bundesrepublik Deutschland\' appear in the outer ring.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 320,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2007/2007_20-min.png',
    periodStartDate: '2007-02-01',
    quantity: 1_100_000,
    description:
        'Grand Ducal Palace. The coin features an effigy of Grand-Duke Henri superimposed on an image of the Grand Ducal Palace. The year of issue, 2007, appears to the left, with the engraver\'s mark above and the mint mark below. The word \'LËTZEBUERG\' appears at the base of the design. The 12 stars of the European Union are shown on the outer ring of the coin.',
    country: CountryNames.LUXEMBOURG,
  ),

  // 2008 -------------------------------------------------------------
  CoinModel(
    id: 321,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_01-min.png',
    periodStartDate: '2008-10-01',
    quantity: 100_000,
    description:
        "The Year of St. Paul – the 2000th anniversary of his birth. The coin depicts the conversion of Paul on the road to Damascus, which is visible in the background. Dazzled by a light from the sky, he falls from his rearing horse. To the left of the image is an inscription denoting the issuing country ‘CITTÀ DEL VATICANO’, and to the right the legend ‘ANNO SANCTO PAULO DICATO’, as well as the year ‘2008’, the mint mark ‘R’ and the artist’s name ‘VEROI’. The initials of the engraver ‘L.D.S. INC.’, Luciana De Simoni, appear beneath the image. The outer ring of the coin shows the 12 stars of the European Union.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 322,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_02-min.png',
    periodStartDate: '2008-10-01',
    quantity: 1_500_000,
    description:
        "60th anniversary of the Universal Declaration of Human Rights. Designed by sculptor Tapio Kettunen, the coin depicts a human being inside a heart and, underneath it, the inscription ‘HUMAN RIGHTS’. ‘FI’ for Finland, ‘K’ for the sculptor as well as the mint mark appear at the bottom of the inner part of the coin, and the year of issue, 2008, at the top. The 12 stars of the European Union are shown on the outer ring.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 323,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_03-min.png',
    periodStartDate: '2008-09-01',
    quantity: 1_000_000,
    description:
        "60th anniversary of the Universal Declaration of Human Rights. The coin shows the Portuguese coat of arms at the top, with the name of the issuing country (‘PORTUGAL’) and the year ‘2008’ just below. The lower half of the coin features a geometric design and the legend ‘60 ANOS DA DECLARAÇÃO UNIVERSAL DOS DIREITOS HUMANOS’, followed by the inscription ‘Esc. J. Duarte INCM’ in very small characters. The outer ring of the coin shows the 12 stars of the European Union.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 324,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_04-min.png',
    periodStartDate: '2008-07-01',
    quantity: 20_000_000,
    description:
        "French Presidency of the Council of the European Union in the second half of 2008. The coin is inscribed as follows: ‘2008 PRÉSIDENCE FRANÇAISE UNION EUROPÉENNE RF’. The mint mark and the mintmaster's mark are located below, to the left and the right respectively. The 12 stars of the European Union are shown on the outer ring.",
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 325,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_05-min.png',
    periodStartDate: '2008-05-01',
    quantity: 1_000_000,
    description:
        "500th anniversary of Primož Trubar's birth. The coin shows an effigy of Primož Trubar in profile. The inscriptions ‘PRIMOŽ TRUBAR’ and ‘1508 • 1586’ appear on the left, and ‘SLOVENIJA 2008’ at bottom right. The 12 stars of the European Union are depicted on the outer ring.",
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 326,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_06-min.png',
    periodStartDate: '2008-05-01',
    quantity: 5_000_000,
    description:
        "60th anniversary of the Universal Declaration of Human Rights. The coin shows curved lines around a rectangle marked with the figure 60. The year ‘2008’ is inscribed above the rectangle and the words ‘UNIVERSAL DECLARATION OF HUMAN RIGHTS’ underneath it. The name of the country appears below the design in its three official languages: ‘BELGIE – BELGIQUE – BELGIEN’. The mintmark and the signature mark of the Master of the Mint are shown to the left and right of the design respectively. The outer ring of the coin features the 12 stars of the European Union.",
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 327,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_07-min.png',
    periodStartDate: '2008-04-01',
    quantity: 130_000,
    description:
        "European Year of Intercultural Dialogue. The coin shows five human silhouettes symbolising the cultures of the five regions in Europe, together with the sacred texts of the different communities. The inscription ‘ANNO EUROPEO DEL DIALOGO INTERCULTURALE’ appears below the motif, while ‘SAN MARINO’, and the year of issue ‘2008’ appear above it. The initials of the artist ‘E.L.F.’, Ettore Lorenzo Frapiccini, are shown to the right of the motif, and the mint mark ‘R’ to the left. The coin’s outer ring contains the 12 stars of the European Union.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 328,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_08-min.png',
    periodStartDate: '2008-04-01',
    quantity: 5_000_000,
    description:
        "60th anniversary of the Universal Declaration of Human Rights. The coin depicts a man and a woman with an olive branch, an ear of corn, a cogwheel and some barbed wire – symbols of the right to peace, food, work and freedom respectively. The monogram of the Italian Republic ‘RI’ is placed between the two figures, as is the year of issue ‘2008’. At the bottom of the image are the links of a chain forming the number ‘60’ and the inscription ‘DIRITTI UMANI’ (human rights). The initials ‘MCC’ of the artist Maria Carmela Colaneri and the mint mark ‘R’ are shown on the right. The outer ring of the coin depicts the 12 stars of the European Union.",
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 329,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_09-min.png',
    periodStartDate: '2008-02-01',
    quantity: 1_300_000,
    description:
        "Grand-Duke Henri and the ‘Château de Berg’. The coin shows Grand-Duke Henri and the ‘Château de Berg’, the official residence. The year of issue, 2008, flanked by the mint mark and the mark of the engraving workshop, is inscribed at the top. The word ‘LËTZEBUERG’ appears at the bottom of the design. The outer ring of the coin depicts the 12 stars of the European Union.",
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 330,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2008/2008_10-min.png',
    periodStartDate: '2008-02-01',
    quantity: 30_000_000,
    description:
        "Federal state of Hamburg. The coin depicts the baroque church of St. Michaelis, or “Michel” as it is popularly known. It is a symbol of the city and federal state of Hamburg, as the inscription below the image indicates. The year of issue, 2008, the 12 stars of the European Union and the words ‘BUNDESREPUBLIK DEUTSCHLAND’ appear on the outer ring. The mintmark is shown in the upper right part of the coin.",
    country: CountryNames.GERMANY,
  ),

  // 2009 -------------------------------------------------------------
  CoinModel(
    id: 331,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_01-min.png',
    periodStartDate: '2009-11-01',
    quantity: 1_000_000,
    description:
        '20th anniversary of 17 November 1989 (Day of the fight for freedom and democracy). The coin shows a stylised bell with keys serving as clappers. It recalls the demonstration on 17 November 1989 when protesters jangled their keys to symbolise the unlocking of doors, an event which marked the beginning of the ‘Velvet Revolution’ in Czechoslovakia, as it then was. Under the bell are the artist’s mark and the mint mark of Mincovňa Kremnica (the Slovak mint). Encircling the bell are the legend ‘17. NOVEMBER SLOBODA DEMOKRACIA’, the dates ‘1989-2009’ and the name of the issuing country, ‘SLOVENSKO’. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 332,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_02-min.png',
    periodStartDate: '2009-10-01',
    quantity: 1_600_000,
    description:
        '200th anniversary of Finnish autonomy and Porvoo Diet. The first Diet of Finland met in 1809 in Porvoo, so the coin shows a profile of Porvoo cathedral, where the opening ceremony took place, and ‘1809’ written in stylised numbering above. To its left is the country code, ‘FI’, and to its right is the year of issue, ‘2009’. The 12 stars of the European Union appear on the outer ring.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 333,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_03-min.png',
    periodStartDate: '2009-10-01',
    quantity: 106_000,
    description:
        "International Year of Astronomy. This coin was issued on the occasion of the International Year of Astronomy. The inner part of the coin depicts an allegory of the birth of the stars and planets together with several astronomical instruments. The design is inspired by Michelangelo's frescoes in the Sistine Chapel. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 334,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_04-min.png',
    periodStartDate: '2009-10-01',
    quantity: 2_000_000,
    description:
        '200th anniversary of Louis Braille’s birth. The coin depicts a hand reading an open book by touch. The index finger points at a vertical inscription ‘LOUIS BRAILLE 1809-2009’ and two birds in flight above the hand symbolise freedom of knowledge. The monogram of the Italian Republic, ‘RI’, is at the top right, while the mint mark ‘R’ is at the bottom right. Braille’s name is written under the book in the alphabet that he invented. At the very bottom are the initials ‘MCC’ of the artist Maria Carmela Colaneri. The 12 stars of the European Union are shown on the outer ring.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 335,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_05-min.png',
    periodStartDate: '2009-09-01',
    quantity: 5_000_000,
    description:
        '200th anniversary of Louis Braille’s birth. The coin features a portrait of Louis Braille with his initials, L and B, in the alphabet that he designed. His name appears above the portrait and, below it, the code of the issuing country, ‘BE’ and the dates ‘1809’ and ‘2009’. To the left and right respectively are the mint mark and the signature mark of the Master of the Mint. The coin’s outer ring shows the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 336,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_06-min.png',
    periodStartDate: '2009-06-01',
    quantity: 1_025_000,
    description:
        "2nd Lusophone Games. The coin was issued to mark the games held for Portuguese-speaking countries. It depicts a gymnast swirling a long ribbon. The Portuguese coat of arms appears at the top together with the name of the issuing country ‘PORTUGAL’. At the bottom, the legend ‘2.os JOGOS DA LUSOFONIA LISBOA’ is inscribed between the initials ‘INCM’ on the left and the artist's name ‘J. AURÉLIO’ on the right. The year ‘2009’ appears above the gymnast. The coin's outer ring shows the 12 stars of the European Union",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 337,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_07-min.png',
    periodStartDate: '2009-05-01',
    quantity: 130_000,
    description:
        'European Year of Creativity and Innovation. The coin shows some symbols of scientific research: a book, a compass, a test tube and a flask. On the left are the three emblematic feathers of the Republic of San Marino. On the right are the year ‘2009’ and the mint mark ‘R’. Above is the legend ‘CREATIVITÀ INNOVAZIONE’. Below are the name of the issuing country ‘SAN MARINO’ and the artist’s initials ‘A.M.’. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 338,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_08-min.png',
    periodStartDate: '2009-02-01',
    quantity: 30_000_000,
    description:
        'Federal state of Saarland. The coin features the Ludwigskirche, a symbol of Saarbrücken, the capital of the Saarland. It shows the distinctive east facade and bell tower of the church, with the word ‘SAARLAND’ and ‘G’, a mint mark, underneath. It was designed by Friedrich Brenner, whose initials appear to the right of the image. The year of mintage, 2009, the 12 stars of the European Union and the words ‘BUNDESREPUBLIK DEUTSCHLAND’ are depicted on the outer ring.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 339,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_09-min.png',
    periodStartDate: '2009-01-01',
    quantity: 5_000_000,
    description:
        'Austria Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 340,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_10-min.png',
    periodStartDate: '2009-01-01',
    quantity: 5_012_000,
    description:
        'Belgium Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 341,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_11-min.png',
    periodStartDate: '2009-01-01',
    quantity: 1_000_000,
    description:
        'Cyprus Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 342,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_12-min.png',
    periodStartDate: '2009-01-01',
    quantity: 1_400_000,
    description:
        'Finland Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 343,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_13-min.png',
    periodStartDate: '2009-01-01',
    quantity: 10_074_085,
    description:
        'France Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 344,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_14-min.png',
    periodStartDate: '2009-01-01',
    quantity: 30_565_630,
    description:
        'Germany Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 345,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_15-min.png',
    periodStartDate: '2009-01-01',
    quantity: 4_000_000,
    description:
        'Greece Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 346,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_16-min.png',
    periodStartDate: '2009-01-01',
    quantity: 5_000_000,
    description:
        'Ireland 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 347,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_17-min.png',
    periodStartDate: '2009-01-01',
    quantity: 2_000_000,
    description:
        'Italy Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 348,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_18-min.png',
    periodStartDate: '2009-01-01',
    quantity: 825_000,
    description:
        'Luxembourg Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 349,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_19-min.png',
    periodStartDate: '2009-01-01',
    quantity: 825_000,
    description:
        'Luxembourg Version 2. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 350,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_20-min.png',
    periodStartDate: '2009-01-01',
    quantity: 700_000,
    description:
        'Malta Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 351,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_21-min.png',
    periodStartDate: '2009-01-01',
    quantity: 5_313_500,
    description:
        'Netherlands Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 352,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_22-min.png',
    periodStartDate: '2009-01-01',
    quantity: 1_285_000,
    description:
        'Portugal Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 353,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_23-min.png',
    periodStartDate: '2009-01-01',
    quantity: 2_500_000,
    description:
        'Slovakia Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 354,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_24-min.png',
    periodStartDate: '2009-01-01',
    quantity: 1_000_000,
    description:
        'Slovenia Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 355,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_25-min.png',
    periodStartDate: '2009-01-01',
    quantity: 8_000_000,
    description:
        'Spain Version. 10th anniversary of Economic and Monetary Union. The coin shows a stick figure which merges into the € symbol. It seeks to convey the idea of the single currency and, by extension, Economic and Monetary Union (EMU) being the latest step in Europe’s long history of trade and economic integration. The coin is issued by each euro area country and shows the name of the country as well as the legend ‘EMU 1999-2009’ in the respective language(s). The design was chosen out of a shortlist of five by members of the public across the European Union voting online. It was created by George Stamatopoulos, a sculptor from the Minting department at the Bank of Greece. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 356,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2009/2009_26-min.png',
    periodStartDate: '2009-01-01',
    quantity: 1_400_000,
    description:
        'Grand-Duke Henri and Grand-Duchess Charlotte. The coin features Grand-Duke Henri and Grand-Duchess Charlotte. To the right of the image, placed vertically, are the word ‘LËTZEBUERG’ and the year ‘2009’, flanked by the mintmaster’s mark and the mint mark. The outer ring of the coin shows the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),

  // 2010 -------------------------------------------------------------
  CoinModel(
    id: 357,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_01-min.png',
    periodStartDate: '2010-10-01',
    quantity: 2_500_000,
    description:
        "2.500th anniversary of the Battle of Marathon. The coin commemorates the 2.500th anniversary of the Battle of Marathon. The centre of the coin shows a synthesis of a shield and a runner/warrior representing the struggle for freedom and the noble ideals that the Battle of Marathon stands for. The bird on the shield symbolises the birth of Western civilisation in its present form. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 358,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_02-min.png',
    periodStartDate: '2010-10-01',
    quantity: 115_000,
    description:
        "Year for Priests. The coin commemorates the Year for Priests, proclaimed by Pope Benedict XVI to run from of 19 June 2009 to 19 June 2010, that was concluded with an international gathering of priests attended by the pope. The coin features a shepherd pulling a lamb from a lion’s mouth. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 359,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_03-min.png',
    periodStartDate: '2010-10-01',
    quantity: 1_600_000,
    description:
        "Currency Decree of 1860 granting Finland the right to issue banknotes and coins. The design of the inner part of the coin comprises a stylised figure of a lion, taken from Finland’s coat of arms, and the year of issue, i.e. ‘2010’, on the left, with the mintmark and a set of numbers symbolising coin values to the right thereof. Centred at the bottom edge is a reference to the issuing country, namely the letters ‘FI’. The coin’s outer ring depicts the 12 stars of the European Union.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 360,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_04-min.png',
    periodStartDate: '2010-09-01',
    quantity: 130_000,
    description:
        '500th anniversary of the death of Sandro Botticelli. The coin commemorates the 500th anniversary of the death of Alessandro di Mariano di Vanni Filipepi (1445 – 1510), the Italian painter of the Florentine school who is better known as Sandro Botticelli or Il Botticello ("The Little Barrel"). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 361,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_05-min.png',
    periodStartDate: '2010-09-01',
    quantity: 2_000_000,
    description:
        "100th anniversary of the Portuguese Republic. The coin commemorates the 100th anniversary of the end of the constitutional monarchy of King Manuel II and the establishment of the Portuguese Republic following the revolution of 5 October 1910. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 362,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_06-min.png',
    periodStartDate: '2010-06-01',
    quantity: 20_000_000,
    description:
        "70th anniversary of the Appeal of June 18. The coin commemorates the 70th anniversary of the appeal (“Appel du 18 juin”) made by General de Gaulle – the leader of the Free French Forces – on the BBC in London on 18 June 1940, after the fall of France. Addressing the French people, de Gaulle declared that the war was not yet over. The speech is considered to mark the birth of the French Resistance and the beginning of its fight against the occupation of France during World War II. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 363,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_07-min.png',
    periodStartDate: '2010-06-01',
    quantity: 5_000_000,
    description:
        "Belgian Presidency of the Council of the European Union in 2010. The inner part of the coin features the commemorative logo, i.e. the stylised letters “EU” and “trio.be”. The central design is encircled by the words “BELGIAN PRESIDENCY OF THE COUNCIL OF THE EU 2010” and the trilingual country designation ‘BELGIE BELGIQUE BELGIEN’. Beneath the logo and above the country’s name, the year of issue, i.e. “2010”, is centred between the mint mark on the left and the mint master’s mark on the right. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 364,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_08-min.png',
    periodStartDate: '2010-05-01',
    quantity: 1_000_000,
    description:
        "200th anniversary of the Botanical Garden in Ljubljana. The inner part of the coin depicts the Rebrinčevolistna Hladnikija plant. On the left beneath the plant is its name, “HLADNIKIA PASTINACIFOLIA”, written in an arc. The image is encircled by the words “200 LET”, “BOTANIČNI VRT”, “LJUBLJANA” and “SLOVENIJA 2010”. The outer ring of the coin depicts the 12 stars of the European Union.",
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 365,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_09-min.png',
    periodStartDate: '2010-03-01',
    quantity: 8_000_000,
    description:
        "Córdoba’s historic centre – UNESCO World Heritage series. The coin commemorates the historic centre of Cordoba, the first Spanish site to be included in UNESCO’s World Heritage List in 1984. It portrays the “forest of pillars” of the Great Mosque of Córdoba, one of the most significant and oldest examples of Islamic art in Europe. Built between the 8th and 10th centuries, the Mosque was later consecrated as a Christian cathedral and underwent a series of transformations. The coin is the first in a new series dedicated to the Spanish sites on the UNESCO’s World Heritage List. One such commemorative coin will be issued every year as from 2010. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 366,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_10-min.png',
    periodStartDate: '2010-03-01',
    quantity: 4_000_000,
    description:
        '200th anniversary of the Count of Cavour’s birth. The coin commemorates the 200th anniversary of the birth of Camillo Benso, Count of Cavour (1810-1861), a key figure in Italian unification and early Italian liberalism, and the founder of the political newspaper "Il Risorgimento". It features a portrait of Cavour based on a painting by Francesco Hayez from 1864. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 367,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_11-min.png',
    periodStartDate: '2010-01-01',
    quantity: 1_000_000,
    description:
        "Coat of arms of the Grand Duke. The inner part of the coin depicts, on the left, a portrait of Grand Duke Henri facing towards the right and, immediately adjacent, the Grand Duke’s coat of arms, above which the year of issue, 2010, is featured between mint marks, overlapping slightly into the outer ring. Below the portrait, the name of the issuing country, “LËTZEBUERG”, overlaps slightly into the outer ring. The coin’s outer ring depicts the 12 stars of the European Union.",
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 368,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2010/2010_12-min.png',
    periodStartDate: '2010-01-01',
    quantity: 30_000_000,
    description:
        "Federal state of Bremen. The inner part of the coin features the Town Hall of Bremen, with the Roland statue in the foreground. The word “BREMEN” is inscribed beneath the Town Hall to the right of the statue. The mint mark, represented by the letter “A”, “D”, “F”, “G” or “J”, appears at the left above the Town Hall. The initials of the artist, Bodo Broschat, are given at the very bottom, immediately below the statue. The name of the issuing country, “D”, and the year, “2010”, are inserted at the top and bottom of the outer ring of the coin respectively, interspersed between the twelve stars of the European Union.",
    country: CountryNames.GERMANY,
  ),

  // 2011 -------------------------------------------------------------
  CoinModel(
    id: 369,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_01-min.png',
    periodStartDate: '2011-11-01',
    quantity: 430_000,
    description:
        'Constitutional history – first election of representatives in 1849. The inner part of this coin, the first of a series of five coins to be issued over a period of five years to mark major milestones in Malta’s constitutional history, features a hand inserting a ballot paper into the ballot box to commemorate the election in 1849 of the first Maltese representatives to the Council of Government advising the British Governor of Malta, which had been a British colony since the Treaty of Paris of 1814. The upper right outer edge of the inner part of the coin bears the words “MALTA – First elected representatives 1849”. The 12 stars of the European Union are depicted on the outer ring of the coin.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 370,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_02-min.png',
    periodStartDate: '2011-10-01',
    quantity: 115_000,
    description:
        '26th World Youth Day. The inner part of the coin features a number of young people and flags, together with the mintmark “R” and the year “2011”, surrounded, along the upper edge, by the Roman numerals “XXVI” and the letters “G.M.G.”, the abbreviation of Giornata Mondiale della Gioventù (World Youth Day), and by the name of the issuing country “CITTA’ DEL VATICANO” along the lower edge. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 371,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_03-min.png',
    periodStartDate: '2011-10-01',
    quantity: 1_500_000,
    description:
        '200th anniversary of the Bank of Finland. The commemorative coin to mark the Bank of Finland’s 200th anniversary, which was designed by the artist Hannu Veijalainen, depicts Finland’s national bird, the swan. In addition, the inner part of the coin bears the dates “2011”, the year of issue, and “1811”, the year in which Emperor Alexander I of Russia decreed that an “Exchange, Lending and Deposit Office” was to be established in Turku, Finland. It was Finland’s first bank and eventually became the Bank of Finland, which moved to Helsinki in 1819. The Bank began to operate as a central bank in the latter part of the 19th century, after Finland obtained its own monetary unit and commercial banks had been established in the country. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 372,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_04-min.png',
    periodStartDate: '2011-09-01',
    quantity: 520_000,
    description:
        '500th anniversary of Fernão Mendes Pinto’s birth. The inner part of the coin commemorating the 500th anniversary of the birth of Fernão Mendes Pinto, a Portuguese explorer whose book on his discoveries and adventures in the seas and countries of Asia was published posthumously under title “Peregrinação” (Pilgrimage), depicts a sailing ship floating on a sea formed by a series of wave-shaped references to Portugal, Lisbon, his book and some of the destinations of his travels, With the country designation “Portugal” centred beneath them. His name flanked by the dates “1511” and “2011” form a semicircle around the upper edge of the inner part. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 373,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_05-min.png',
    periodStartDate: '2011-07-01',
    quantity: 148_000,
    description:
        'The wedding of Prince Albert and Charlene Wittstock. The inner part of the coin shows, at the centre, the effigies of Prince Albert and Princess Charlene. At the bottom, the name of the issuing country ‘MONACO’ and the year of issuance ‘2011’. The mint mark and the mint engravers mark appear before and after ‘MONACO 2011’, respectively. The 12 stars of the European Union are depicted on the coin’s outer ring.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 374,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_06-min.png',
    periodStartDate: '2011-06-01',
    quantity: 10_000_000,
    description:
        '30th anniversary of the Day of Music. The inner part of the coin shows a cheerful crowd, with a stylised image of a musical instrument and notes floating in the air, denoting the atmosphere of celebration on the Day of Music, which has been celebrated every summer solstice in France since 1981. The words "Fête de la MUSIQUE" and the date "21 JUIN 2011" appear at the centre of the drawing. Along the upper edge, towards the right, are the words "30 e ANNIVERSAIRE", while the letters "RF" designate the country of issue at the bottom. The 12 stars of the European Union are depicted on the coin’s outer ring.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 375,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_07-min.png',
    periodStartDate: '2011-06-01',
    quantity: 1_000_000,
    description:
        'The Special Olympics World Summer Games — Athens 2011. The inner part of the coin shows the emblem of the Games, a radiant sun, the source of life that underlines the excellence and power of the athletes who take part in the Games, with excellence represented by the olive branch and power by the spiral starting from the centre of the sun. Inscribed around the outer right-hand edge of the inner part are the caption “XIII SPECIAL OLYMPICS W.S.G. ATHENS 2011” and the name of the issuing country “ΕΛΛΗΝΙΚΗ ΔΗΜΟΚΡΑΤΙΑ”, separated from one another by the mintmark. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 376,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_08-min.png',
    periodStartDate: '2011-06-01',
    quantity: 130_000,
    description:
        '500th anniversary of the birth of Giorgio Vasari. The inner part of the coin commemorating the 500th anniversary of the birth of Giorgio Vasari (30 July 1511 – 27 June 1574), a painter, writer, and architect famous for his biographies of Italian artists and now considered the ideological founder of art-historical writing, shows a detail of his painting “Giuditta decapitates Oloferne”. Centred at the bottom are the dates “1511-2011”, with the name “G. VASARI” and the designation of the issuing country “SAN MARINO” to the left and right respectively along the inner edge. The mintmark “R” is located to the left of the central motif and the letters “CM”, the initials of the designer Claudia Momoni, immediately to the right. The 12 stars of the European Union are depicted on the coin’s outer ring.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 377,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_09-min.png',
    periodStartDate: '2011-03-01',
    quantity: 10_000_000,
    description:
        'The 150th anniversary of the unification of Italy. The inner part of the coin shows, in the centre, three Italian flags fluttering in the wind, to mark three past periods of 50 years each – the periods ending in 1911, 1961 and 2011 respectively – in illustration of a perfect link between generations: this is the logo of the 150th anniversary of the unification of Italy. Written in a semi-circle along the upper outer edge around the three flags is the inscription “150° DELL’ UNITÁ D’ITALIA” (150th anniversary of the unification of Italy), with the letters “RI” superimposed on one another off-centre to the right in indication of the issuing country, the Republic of Italy. Beneath the three flags stand the dates “1861 › 2011 › ›”. Centred below the dates is the mintmark “R”, with the letters “ELF INC.”, the initials of the artist Ettore Lorenzo Frapiccini and the first three letters of the Italian name of his profession (incisore) along the bottom edge to the right. The 12 stars of the European Union are depicted on the coin’s outer ring.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 378,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_10-min.png',
    periodStartDate: '2011-03-01',
    quantity: 8_000_000,
    description:
        'Court of the Lions, Granada – UNESCO World Heritage series. The inner part of the coin depicts the Court of the Lions in the Alhambra, the fortified castle in the city of Granada, which was declared a UNESCO World Heritage site in 1984. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 379,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_11-min.png',
    periodStartDate: '2011-03-01',
    quantity: 1_000_000,
    description:
        '100th anniversary of the birth of Franc Rozman-Stane. The inner part of the coin bears a stylised image of Franc Rozman-Stane, general in the High Command of the Slovene partisan army and a national hero of Slovenia. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 380,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_12-min.png',
    periodStartDate: '2011-03-01',
    quantity: 5_000_000,
    description:
        '100th anniversary of International Women’s Day. The inner part of the coin commemorating the 100th anniversary of International Women’s Day, which is celebrated on 8 March, features effigies of Isala Van Diest, the first female Belgian medical doctor, and Marie Popelin, the first female Belgian lawyer above a semicircle formed by their names and the symbols of their professions on either side of the year 2011. Centred above the effigies are the letters “BE” in reference of their nationality, flanked by the Mint master’s mark on the left and the mintmark on the right. The coin’s outer ring shows the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 381,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_13-min.png',
    periodStartDate: '2011-01-01',
    quantity: 1_000_000,
    description:
        '20th anniversary of the formation of the Visegrad Group. The design of the inner part of the coin consists of the outlines of four central European states – the Czech Republic, Hungary, Poland and Slovakia – with a superimposed composite “V” to designate the Visegrad Group, a regional alliance also known as the “Visegrad Four” or “V4” that was set up after a summit meeting of the Heads of State or Government of Czechoslovakia, Hungary and Poland in the castle town of Visegrád, Hungary, on 15 February 1991, mainly for purposes of cooperating in areas of common interest within the process of European integration. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 382,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_14-min.png',
    periodStartDate: '2011-01-01',
    quantity: 1_400_000,
    description:
        '50th anniversary of the appointment by the Grand-Duchess Charlotte of her son Jean as "lieutenant-représentant". The coin depicts on the right hand of its inner part the effigy of His Royal Highness, the Grand-Duke Henri, looking to the left, and superimposed on the effigies of the Grand-Duke Jean and the Grand-Duchess Charlotte. The text "LËTZEBUERG" is depicted above the three effigies. The year-date "2011", flanked by the mintmark and the Mintmaster mark, appears above. The name of the Royal Highness is depicted below the respective effigy. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 383,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_15-min.png',
    periodStartDate: '2011-01-01',
    quantity: 4_000_000,
    description:
        'The 500th anniversary of the publication of the world-famous book "Laus Stultitiae" by the Dutch philosopher, humanist and theologian Desiderius Erasmus. The inner part of the coin shows Erasmus writing his book on the right and the effigy of Queen Beatrix to the left. The two images are separated by the vertical inscription "Beatrix Koningin der Nederlanden". The year "2011", the Mint master’s mark and the mintmark are positioned horizontally near the centre of the coin. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 384,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2011/2011_16-min.png',
    periodStartDate: '2011-01-01',
    quantity: 30_000_000,
    description:
        'Federal state of North Rhine-Westphalia. The inner part of the coin features the Cologne Cathedral above the words “Nordrhein-Westfalen” to designate the German federal state of North Rhine-Westphalia in which it stands. The 12 stars of the European Union are depicted on the outer ring, together with the year of issue, 2011, at the bottom.',
    country: CountryNames.GERMANY,
  ),

  // 2012 -------------------------------------------------------------
  CoinModel(
    id: 385,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_01-min.png',
    periodStartDate: '2012-12-01',
    quantity: 1_400_000,
    description:
        'Wedding of Prince Guillaume, Hereditary Grand-Duke, with Countess Stéphanie de Lannoy. The coin depicts, to the left of its inner part, the effigy of His Royal Highness the Grand Duke Henri, with the effigy of Prince Guillaume, Hereditary Grand Duke, superimposed on that of Countess Stéphanie to the right. The words “PRËNZENHOCHZAÏT” and “LËTZEBUERG” appear above the year “2012” at the bottom of the inner part of the coin, flanked by the mint mark and the mint master’s initials. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 386,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_02-min.png',
    periodStartDate: '2012-10-01',
    quantity: 115_000,
    description:
        'Seventh World Meeting of Families. The inner part of the coin features a family, with the Cathedral of Milan, the host city of the Seventh World Meeting of Families, in the background. The event is held every three years to highlight the family as a common human heritage, reflecting the fact that the family is universal and that it contributes to the human element of life everywhere in the world. Inscribed around the family scene are the names of the event and of the Vatican City in Italian and the year “2012”. The mintmark “R” appears between the boy and his mother. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 387,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_03-min.png',
    periodStartDate: '2012-09-01',
    quantity: 2_000_000,
    description:
        '150th anniversary of the birth of the artist Helene Schjerfbeck. The inner part of the coin shows a stylised self-portrait of the artist, with her name, “HELENE SCHJERFBECK”, and the years of birth and death, “1862-1946”, inscribed vertically to the left and right, respectively. At the bottom to the left of the portrait are the letters “FI” to denote the issuing country and “2012”, the year of issue. The mintmark is located on the edge of the coin’s inner part immediately below the dates of birth and death. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 388,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_04-min.png',
    periodStartDate: '2012-09-01',
    quantity: 430_000,
    description:
        'Majority representation 1887. The design of the inner part of the coin, which was created by the Maltese artist Gianni Bonnici, shows a jubilant crowd against the background of the Governor’s Palace in Valletta. The words “MALTA – Majority representation 1887” are inscribed along the upper edge of the coin’s inner part, while the year of issue, “2012”, is given at the bottom. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 389,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_05-min.png',
    periodStartDate: '2012-07-01',
    quantity: 100_000,
    description:
        '500th anniversary of the establishment of Monaco’s sovereignty by Lucien I Grimaldi. The inner part of the coin shows a portrait of Lucien I Grimaldi, in profile, facing to the left. The inscription “1512 SOUVERAINETE DE MONACO 2012” forms an arch around the portrait along the outer edge of the inner part of the coin, flanked by two ornamental diamonds, as well as by the horn of plenty (mintmark of Monnaie de Paris) and the “fleurette” (hallmark of the engraving workshop) to the left and right, respectively, at the bottom of the portrait. The founder’s name, “Lucien Ier”, is given above the mintmark. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 390,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_06-min.png',
    periodStartDate: '2012-07-01',
    quantity: 1_000_000,
    description:
        '100th anniversary of the birth of Abbé Pierre, famous in France as protector of the poor. The inner part of the coin shows a portrait of Abbé Pierre wearing his well-known beret, positioned slightly off-centre to the left, and the logo of the foundation that bears his name to the right, including micro-lettering with the question “Et les autres?”, his favourite words to remind us that we should never forget to help others. The inscription “Centenaire de la naissance de l’abbé Pierre” forms an arch around the portrait along the edge of the coin’s inner part, flanked by the horn of plenty (mintmark of Monnaie de Paris) and the letters “RF” to denote the issuing country on the left and the “fleurette” (hallmark of the engraving workshop) on the right. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 391,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_07-min.png',
    periodStartDate: '2012-06-01',
    quantity: 520_000,
    description:
        'European Capital of Culture 2012, the city of Guimarães in northern Portugal. The inner part of the coin depicts a stylised image of Afonso Henriques, the first King of Portugal, together with his sword and the Castle of Guimarães, which is regarded as the birthplace of Portugal as an independent nation in the 12th century. To the left of the image is the Portuguese shield above the word “PORTUGAL”. To the lower right is the inscription “GUIMARÃES 2012” with the logo of Guimarães 2012 European Capital of Culture. Along the lower edge of the inner part are the mintmark “INCM” and the name of the designer, “JOSÉ DE GUIMARÃES”. The outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 392,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_08-min.png',
    periodStartDate: '2012-05-01',
    quantity: 5_000_000,
    description:
        'The 75th anniversary of the Queen Elisabeth Competition. The inner part of the coin shows the logo of the Queen Elisabeth Competition superimposed on a left profile of Queen Elisabeth, who founded the music competition in 1937. On the left is the mintmaster mark (a quill) and on the right the mintmark (the head of the Archangel Michael). In a semi-circle along the bottom edge of the inner part is the inscription “QUEEN ELISABETH COMPETITION”, while the years “1937 – 2012”, marking the 75th anniversary of the competition, are inscribed along the top edge. The letters “BE” to the right of the image refer to the country of issue. The outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 393,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_09-min.png',
    periodStartDate: '2012-04-01',
    quantity: 15_000_000,
    description:
        '100th anniversary of the death of Giovanni Pascoli. The inner part of the coin features a portrait of Giovanni Pascoli, a poet from the Romagna region who is a prominent representative of late 19th century Italian literature. The portrait is flanked by the poet’s year of death “1912”, the mintmark “R” and the letters “M.C.C.”, the initials of the designer Maria Carmela Colaneri, on the left and by the year of issue “2012”’ immediately above the monogram of the Italian Republic “RI” on the right. The inscription “G. PASCOLI” forms an arch along the bottom edge of the coin’s inner part below the portrait. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 394,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_10-min.png',
    periodStartDate: '2012-03-01',
    quantity: 8_000_000,
    description:
        'Burgos Cathedral – UNESCO World Heritage series. The inner part of the coin depicts the Cathedral of Our Lady of Burgos, which is dedicated to the Virgin Mary and is famous for its vast size and unique architecture. Construction of the cathedral began in 1221 and it was already in use as a place of worship nine years later, although work continued off and on until 1567. It was primarily built in the French Gothic style, but Renaissance features were added in the 15th and 16th centuries. The name of the country of issue, “ESPAÑA”, and the year “2012” appear to the left and right above the image. The mintmark (M with a crown) appears to the right. The outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 395,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_11-min.png',
    periodStartDate: '2012-01-01',
    quantity: 11_000_000,
    description:
        'Austria Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 396,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_12-min.png',
    periodStartDate: '2012-01-01',
    quantity: 5_022_000,
    description:
        'Belgium Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 397,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_13-min.png',
    periodStartDate: '2012-01-01',
    quantity: 1_000_000,
    description:
        'Cyprus Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 398,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_14-min.png',
    periodStartDate: '2012-01-01',
    quantity: 2_000_000,
    description:
        'Estonia Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 399,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_15-min.png',
    periodStartDate: '2012-01-01',
    quantity: 1_500_000,
    description:
        'Finland Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 400,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_16-min.png',
    periodStartDate: '2012-01-01',
    quantity: 10_010_994,
    description:
        'France Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 401,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_17-min.png',
    periodStartDate: '2012-01-01',
    quantity: 30_725_000,
    description:
        'Germany Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 402,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_18-min.png',
    periodStartDate: '2012-01-01',
    quantity: 1_000_000,
    description:
        'Greece Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 403,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_19-min.png',
    periodStartDate: '2012-01-01',
    quantity: 1_357_867,
    description:
        'Ireland Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 404,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_20-min.png',
    periodStartDate: '2012-01-01',
    quantity: 15_000_000,
    description:
        'Italy Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 405,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_21-min.png',
    periodStartDate: '2012-01-01',
    quantity: 532_500,
    description:
        'Luxembourg Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 406,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_22-min.png',
    periodStartDate: '2012-01-01',
    quantity: 500_000,
    description:
        'Malta Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 407,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_23-min.png',
    periodStartDate: '2012-01-01',
    quantity: 3_500_000,
    description:
        'Netherlands Version.  years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 408,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_24-min.png',
    periodStartDate: '2012-01-01',
    quantity: 520_000,
    description:
        'Portugal Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 409,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_25-min.png',
    periodStartDate: '2012-01-01',
    quantity: 130_000,
    description:
        'San Marino Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 410,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_26-min.png',
    periodStartDate: '2012-01-01',
    quantity: 1_000_000,
    description:
        'Slovakia Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 411,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_27-min.png',
    periodStartDate: '2012-01-01',
    quantity: 1_000_000,
    description:
        'Slovenia Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 412,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_28-min.png',
    periodStartDate: '2012-01-01',
    quantity: 4_000_000,
    description:
        'Spain Version. Ten years of the euro. The inner part of the coin, designed by Helmut Andexlinger of the Austrian Mint and chosen by citizens and residents of the euro area to be the common commemorative coin for 2012, features the world in the form of a euro symbol in the centre, showing how the euro has become a true global player over the last ten years. The surrounding elements symbolise the importance of the euro to ordinary people (represented by a family group), to the financial world (the Eurotower), to trade (a ship), to industry (a factory), and to the energy sector and research and development (two wind turbines). The designer’s initials, “A.H.”, can be found (if you look very carefully) between the ship and the Eurotower. Along the upper and lower edges of the inner part of the coin are, respectively, the country of issue and the years “2002 – 2012”. The coin will be issued by all euro area countries. The coin’s outer ring depicts the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 413,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_29-min.png',
    periodStartDate: '2012-01-01',
    quantity: 1_400_000,
    description:
        'Grand Duke Henri and Grand Duke Guillaume IV – “grand-ducal dynasty” series. The coin depicts, to the left of its inner part, the head of His Royal Highness the Grand Duke Henri in front of that of his great-grandfather, the Grand Duke Guillaume IV, both looking to the right, with their names “HENRI” and “GUILLAUME IV † 1912” below. Above are the year “2012”, flanked to the left and right by the mintmark (Mercury’s wand) and the mint master mark (a sailing boat), and the words “GRANDS-DUCS DE LUXEMBOURG”. The city of Luxembourg appears in the background. The 12 stars of the European Union are depicted on the coin’s outer ring.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 414,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2012/2012_30-min.png',
    periodStartDate: '2012-01-01',
    quantity: 30_000_000,
    description:
        'Federal state of Bavaria. The inner part of the coin, designed by Erich Ott, depicts one of Bavaria’s most famous landmarks, Neuschwanstein Castle, viewed from the east, with the gatehouse in the foreground, the romantic towers and turrets of the castle itself, and the majestic mountains behind. Beneath is the name of the federal state “BAYERN”. To the right is the mintmark of the respective mint (A, D, F, G or J) and to the left are the initials of the designer. The outer ring features the 12 stars of the European Union with a “D” at the top and “2012” at the bottom, denoting the country and year of issue respectively.',
    country: CountryNames.GERMANY,
  ),

  // 2013 -------------------------------------------------------------
  CoinModel(
    id: 415,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_01-min.png',
    periodStartDate: '2013-11-01',
    quantity: 3_500_000,
    description:
        "200 years Kingdom of the Netherlands. The inner part of the design shows a continuing ribbon that starts from the outside depicting the effigy of King Willem-Alexander and continues to depict the effigies of his six predecessors: Queen Beatrix, Queen Juliana, Queen Wilhelmina, King Willem III, King Willem II and King Willem I. The effigies are surrounded by the inscription 'Willem-Alexander Koning der Nederlanden' followed by the Royal Dutch mintmark, the mint master mark, the year 2013, the initials of the designer and at the left side of the effigies the inscription '200 jaar Koninkrijk der Nederlanden'. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 416,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_02-min.png',
    periodStartDate: '2013-11-01',
    quantity: 1_500_000,
    description:
        "The 125th anniversary of the birth of Nobel Prize winning author F. E. SILLANPÄÄ. The inner part of the coin depicts Sillanpää's portrait. At the top, in semi-circle, the words 'F. E. SILLANPÄÄ'. At the left, the year '1888' and the mint mark. At the right, the year '1964', the indication of the issuing country 'FI' and the year of issuance '2013'. This is a special coin to commemorate the grandfather of a whole nation. F. E. SILLANPÄÄ was a master of style who brought deep insights about the relationship between people and nature into Finnish literature. He was awarded the Nobel prize in 1939 based in particular on the works Meek Heritage and The Maid Silja. This masterful author gained even more national renown with his popular radio appearances and memorable Christmas columns. After the war years, the master writer evolved into the long-bearded 'Taata', the unofficial grandfather to the country. From recollections of his childhood Christmases emerged a well-loved tradition: Grandpa gathered the whole nation devoutly around their radios with his easy-going Christmas 'talks'. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 417,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_03-min.png',
    periodStartDate: '2013-10-01',
    quantity: 500_000,
    description:
        "The Self-Government Constitution of 1921. The design shows a map of the Maltese islands and a representation of the population. At the bottom of the design, the year '2013'. At the top, in semi-circle, the words 'MALTA — Self-government 1921'. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 418,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_04-min.png',
    periodStartDate: '2013-10-01',
    quantity: 115_000,
    description:
        "28th World Youth Day. The design features the most known monument of Rio de Janeiro, the 'Christ of Corcovado', and some young people around the statue. At the top, in semi-circle, the inscription 'XXVIII G.M.G. CITTÀ DEL VATICANO RIO 2013'. At the right, the mintmark 'R' and the name of the artist 'P DANIELE'. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 419,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_05-min.png',
    periodStartDate: '2013-10-01',
    quantity: 750_000,
    description:
        "100th anniversary of the union of Crete with Greece. The inner part of the coin depicts Cretan rebels raising the Greek flag, a symbolic representation of Crete's struggle for Union with Greece. On the upper side, in circular sense and with capital letters the name of the issuing country 'Hellenic Republic' in Greek. Underneath the words: '100 years of the union of Crete with Greece' in Greek. On the right: '1913-2013' and the monogram of the Greek Mint. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 420,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_06-min.png',
    periodStartDate: '2013-10-01',
    quantity: 750_000,
    description:
        "2 400th Anniversary of the founding of Plato's Academy. Portrait of Plato (in profile). On the left: the words '2 400 years since the founding of Plato's Academy' and 'Hellenic Republic' in ancient Greek lettering. On the right: '2013' and the monogram of the Greek Mint. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 421,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_07-min.png',
    periodStartDate: '2013-09-01',
    quantity: 115_000,
    description:
        "500th anniversary of the death of the Italian painter Pinturicchio. In the foreground, the fresco 'Christ among the doctors'; in the lower part, the inscription 'SAN MARINO' in semi-circle; to the left, the letter 'R', which is the Italian mint mark; below the fresco, the name of the author 'MOMONI'; above the fresco, the inscription 'PINTURICCHIO' in semi-circle with the years '1513' and '2013' below it. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 422,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_08-min.png',
    periodStartDate: '2013-09-01',
    quantity: 2_000_000,
    description:
        "100th anniversary of the creation of the Royal Meteorological Institute (Koninklijk Meteorologisch Instituut/Institut Royal Météorologique). The obverse of the coin displays in its centre the number 100 with the first zero encircling the abbreviations 'KMI' and 'IRM' and the second zero representing a sun. Isobars, raindrops and snowflakes are depicted to the left of the sun. The year '2013' is displayed in the upper rays of the sun and the nationality 'BE' is indicated in the lower rays. The mark of the mint master and the mark of the Brussels mint, a helmeted profile of the Archangel Michael, are displayed under the '1' of the number '100'. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 423,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_09-min.png',
    periodStartDate: '2013-09-01',
    quantity: 1_000_000,
    description:
        "The 150th anniversary of the Parliament of 1863 when regular Parliament sessions started in Finland. The 2-euro commemorative coin is depicted with the year 1863 and a shoot growing out of it symbolising the start of democracy and Finland's development. In semicircle, at the bottom, the name of the issuing country 'SUOMI FINLAND' with the two words separated by the mint mark, and the year '2013'. The Diet of 1863 is the start of period of illumination. In Finland, the year 1863 marked a start for genuine democracy, transparent press operations and the right to use the Finnish language. With the beginning of regular meetings of the Diet, the opportunities of Finns to influence affairs in their own country improved in an unprecedented way. The year marked the beginning of a period of illumination for Finnish democracy. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 424,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_10-min.png',
    periodStartDate: '2013-09-01',
    quantity: 1_400_000,
    description:
        "The National Anthem of the Grand Duchy of Luxembourg. The coin depicts on the right hand of its inner part the effigy of His Royal Highness, the Grand Duke Henri, looking to the left, and on the left hand of its inner part the musical notation as well as the text of the national anthem. The text 'Ons Heemecht' appears at the top of the inner part and the name of the issuing country 'LËTZEBUERG' as well as the year-date '2013', flanked by the mint mark and the initials of the mint master, appear at the bottom of the inner part of the coin. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 425,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_11-min.png',
    periodStartDate: '2013-07-01',
    quantity: 1_000_000,
    description:
        "1150th anniversary of the advent of the mission of Constantine and Methodius to Great Moravia. The inner part of the coin features the Thessalonian brothers Constantine and Methodius on either side of the symbolic double cross standing on three hills. The cross is moreover held like a Bishop's crozier, thereby bringing together the symbols of statehood and Christianity, and emphasising the significance of the brothers' mission, which helped ensure the full sovereignty and legitimacy of Great Moravia — the first Slav state in central Europe. The figure of Constantine is holding a book that represents education and faith, while Methodius is shown with a church to symbolise faith and institutional Christianity. Inscribed along the bottom edge of the inner part of the coin is the name of the issuing country, \"SLOVENSKO\", as well as the years \"863\" and \"2013\", all separated by a dash. Along the upper edge of the inner part are the names \"KONŠTANTÍN\" and \"METOD\". Inscribed immediately to the left of the brothers are the stylised letters \"mh\" (the initials of the designer, Miroslav Hric), while the mint mark of Kremnica Mint (composed of the letters \"MK\" between two dies) is shown immediately to their right. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 426,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_12-min.png',
    periodStartDate: '2013-07-01',
    quantity: 1_200_000,
    description:
        'The 20th anniversary of the ONU joining. The coin depicts a dove with an olive branch, with in the middle of the arc, on the left side the cornucopia, and on the right side the punch, as the workshop Paris Mint mark. At the top, in semi-circle, the indication of the issuing country \'MONACO\' and at the bottom, in semi-circle, the inscription \'1993 ADMISSION À L\'ONU 2013\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 427,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_13-min.png',
    periodStartDate: '2013-07-01',
    quantity: 10_000_000,
    description:
        "700th Anniversary of the birth of Giovanni BOCCACCIO. The design shows the head of Giovanni BOCCACCIO in three quarter view facing right, drawn from the fresco by Andrea del Castagno, around 1450 ca. (Florence, Galleria degli Uffizi); around, on the bottom, BOCCACCIO 1313 2013; on the right, superimposed letters R (monogram of the Mint of Rome)/RI (monogram of Italian Republic)/m (monogram of the author Roberto Mauri). The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 428,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_14-min.png',
    periodStartDate: '2013-06-01',
    quantity: 525_000,
    description:
        "The 250th anniversary of the construction of 'Torre dos Clérigos'. The tower is depicted as it can be seen by the people on the street when standing close to it, side by side with the typical Oporto skyline as seen from Douro River south bank. At the top, in semi-circle, the inscription '250 ANOS TORRE DOS CLÉRIGOS — 2013'. At the bottom right, the Portuguese coat of arms and underneath the indication of the issuing country 'PORTUGAL'. At the left, the mint mark and the name of the artist 'INCM — HUGO MACIEL'. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 429,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_15-min.png',
    periodStartDate: '2013-06-01',
    quantity: 1_000_000,
    description:
        '150th anniversary of the birth of Pierre de Coubertin, initiator of the revival of the Olympic Games and first president of the International Olympic Committee. The inner part of the coin shows a portrait of Pierre de Coubertin at a young age, set slightly off-centre to the right, with stylised Olympic rings in the background. They provide the framework for silhouettes symbolising the Olympic sports. To the left of the portrait, the letters "RF", denoting the issuing country, are given above the year of issue "2013". The name "PIERRE DE COUBERTIN" is inscribed along the top edge of the inner part of the coin. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 430,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_16-min.png',
    periodStartDate: '2013-05-01',
    quantity: 125_000,
    description:
        "Sede Vacante 2013. The design features the coat of arms of the Cardinal Camerlengo and above it the symbol of the Apostolic Camera, two small crosses, the words 'CITTÀ DEL VATICANO' at the left and 'SEDE VACANTE MMXIII' at the right. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 431,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_17-min.png',
    periodStartDate: '2013-03-01',
    quantity: 10_000_000,
    description:
        "200th Anniversary of the birth of Giuseppe VERDI. The design shows the bust of Giuseppe VERDI in three quarter view facing left; on the left, superimposed letters of the Italian Republic monogram 'RI'/1813; on the right, R (monogram of the Mint of Rome)/2013; in exergue, MCC (monogram of the Author Maria Carmela COLANERI)/G. VERDI. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 432,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_18-min.png',
    periodStartDate: '2013-02-01',
    quantity: 20_000_000,
    description:
        "The announcement of the abdication of the throne by Her Majesty Queen Beatrix. The design depicts on the foreground the effigy of Queen Beatrix and on the background, partly covered by the effigy of the Queen, the effigy of the Prince of Orange. The circumscription around both effigies reads: WILLEM-ALEXANDER PRINS VAN ORANJE (crown symbol) BEATRIX KONINGIN DER NEDERLANDEN (mint mark) 28 januari 2013 (mint master mark). The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 433,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_19-min.png',
    periodStartDate: '2013-02-01',
    quantity: 30_000_000,
    description:
        "Baden-Württemberg from the 'Länder'-series. The inner part of the coin depicts the Maulbronn Monastery which is home to the most perfectly preserved medieval monastery complex north of the Alps. Founded in 1147, this complex has been a UNESCO World Heritage Site since 1993. On the top, the year of issuance '2013'. At the bottom, the inscription BADEN- WÜRTTEMBERG and underneath the indication of the issuing country 'D'. The mint mark, represented by the letter A, D, F, G or J, is located at the right hand side. At the bottom left the initials of the artist. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 434,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_20-min.png',
    periodStartDate: '2013-02-01',
    quantity: 1_000_000,
    description:
        "800th anniversary of visits to Postojna Cave. The central image of the coin is a stylised spiral that starts, on the left-hand side of the inner part, with inscription \"POSTOJNSKA JAMA • 1213 - 2013 • SLOVENIJA\" and ends with two stylised speleothems. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 435,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_21-min.png',
    periodStartDate: '2013-02-01',
    quantity: 8_000_000,
    description:
        "Monastery of San Lorenzo de El Escorial – UNESCO World Heritage series. The inner part of the coin shows a view of the Monastery of San Lorenzo de El Escorial. Along the upper edge, in upper case letters, runs the name of the issuing country \"ESPAÑA\", with the year of issuance \"2013\" above the mint mark to the right. The coin's outer ring bears the 12 stars of the European Union.",
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 436,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_22-min.png',
    periodStartDate: '2013-01-01',
    quantity: 10_000_000,
    description:
        '50th anniversary of the signing of the Élysée Treaty. The coin, which was designed by Yves Sampo (Monnaie de Paris), Stefanie Lindner (Berlin State Mint), Alina Hoyer (Berlin) and Sneschana Russewa-Hoyer (Berlin), depicts stylised portraits of the signatories to the Élysée Treaty (Konrad Adenauer, then Chancellor of the Federal Republic of Germany, and Charles de Gaulle, former President of the French Republic) above their respective signatures on either side of the words "50 ANS JAHRE" and the year "2013" in the centre. The words "TRAITÉ DE L\'ÉLYSÉE" and "ÉLYSÉE-VERTRAG" are centred along the top and bottom edge, respectively, of the inner part of the coin. On the right-hand inner edge below the portrait of Adenauer, the inner part also features the "fleurette" (hallmark of the engraving workshop) and the letters "RF" to denote the issuing country, while the mint mark is located on the coin\'s left-hand inner edge below the portrait of de Gaulle. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 437,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2013/2013_23-min.png',
    periodStartDate: '2013-01-01',
    quantity: 11_000_000,
    description:
        '50th anniversary of the signing of the Élysée Treaty. The coin, which was designed by Yves Sampo (Monnaie de Paris), Stefanie Lindner (Berlin State Mint), Alina Hoyer (Berlin) and Sneschana Russewa-Hoyer (Berlin), depicts stylised portraits of the signatories to the Élysée Treaty (Konrad Adenauer, then Chancellor of the Federal Republic of Germany, and Charles de Gaulle, former President of the French Republic) above their respective signatures on either side of the words "50 ANS JAHRE" and the year "2013" in the centre. The words "TRAITÉ DE L\'ÉLYSÉE" and "ÉLYSÉE-VERTRAG" are centred along the top and bottom edge, respectively, of the inner part of the coin. On the right-hand inner edge below the portrait of Adenauer, the inner part also features the mint mark ("A", "D", "F", "G" or "J", depending on the mint concerned), as well as the letter "D" to denote the issuing country. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GERMANY,
  ),

  // 2014 -------------------------------------------------------------
  CoinModel(
    id: 438,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_01-min.png',
    periodStartDate: '2014-12-01',
    quantity: 12_000_000,
    description:
        'Change of the Head of State. The design depicts the overlapping portraits of Kings Felipe VI and Juan Carlos I. At the bottom the name of the issuing country and the year of issuance: \'ESPAÑA — 2014\'. At the right, the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 439,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_02-min.png',
    periodStartDate: '2014-11-01',
    quantity: 3_000_000,
    description:
        'The fight against AIDS by way of World AIDS Day. The red ribbon, symbolising the fight against AIDS, is featured in the coin\'s central field. The ribbon was created by the Visual AIDS Artists Caucus and the US painter Frank Moore. It should be worn close to the heart to symbolise solidarity with AIDS sufferers and is in the shape of an upside-down V. The idea is for it to be worn as a V one day to signify victory over the disease. There are three ribbons in the central field. One is in the conventional position and will be coloured red for the brilliant uncirculated (BU) and proof (PRF) versions. The other two ribbons are inverted and associated with two Vs to strengthen the symbolism of the much-hoped-for victory over the disease. The date 1 December, Unesco World AIDS Day, appears at the top of the central field. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 440,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_03-min.png',
    periodStartDate: '2014-11-01',
    quantity: 1_000_000,
    description:
        'The 100th Anniversary of the birth of designer and interior designer Ilmari Tapiovaara. The left inner part of the design shows Ilmari Tapiovaara\'s name and years. The right inner part of the design depicts a close-up from the furniture fitting characteristic for Ilmari Tapiovaara. At the right the indication of the issuing country \'FI\', the mint mark and the year of issuance \'2014\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 441,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_04-min.png',
    periodStartDate: '2014-10-01',
    quantity: 103_000,
    description:
        '25th anniversary of the fall of the Berlin Wall. The design depicts some bricks of the partially collapsed Berlin Wall in the foreground, with the wording \'XXV ANNIVERSARIO DEL CROLLO DEL MURO DI BERLINO 1989 2014\' (25th anniversary of the fall of the Berlin Wall 1989 2014) written within the bricks. An olive branch can be seen in the centre, in a gap between the bricks and a piece of barbed wire, and the Brandenburg Gate appears in the background. At the top, the words \'CITTA\' DEL VATICANO\' are inscribed. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 442,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_05-min.png',
    periodStartDate: '2014-10-01',
    quantity: 1_000_000,
    description:
        'The 600th anniversary of the crowning of Barbara Celjska. The central image of the coin shows, with lined pattern, the portrait of the Queen Barbara of Celje with her sceptre. On the image are placed three typical six-pointed stars of Celje counts. On the left side of the portrait is the inscription \'SLOVENIJA\' and on the right side the inscription \'BARBARA CELJSKA\' and the years \'1414-2014\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 443,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_06-min.png',
    periodStartDate: '2014-10-01',
    quantity: 1_400_000,
    description:
        '50th anniversary of the accession to the throne of the Grand-Duke Jean. The coin\'s inner part depicts the effigies of Their Royal Highnesses, the Grand-Duke Henri and the Grand-Duke Jean, both looking to the left. It is surmounted by the year \'1964\' above the effigy of the Grand-Duke Jean and by a crown. At the bottom, the names \'Jean\' and \'Henri\' appear below the respective effigy as well as the year \'2014\'. The inscription \'50e ANNIVERSAIRE DE L\'ACCESSION AU TRÔNE DU GRAND-DUC JEAN\' encloses in circular form the upper inner part of the coin. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 444,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_07-min.png',
    periodStartDate: '2014-10-01',
    quantity: 500_000,
    description:
        'The International Year of Family Farming. On the central part of the design are represented tools typically used in the traditional agriculture, together with farming products: a chicken in the center, surrounded by pumpkins, a basket of potatoes, and other vegetables and flowers. On the left side, in semi-circle, the subject of the commemoration \'AGRICULTURA FAMILIAR\' (Family Farming) and on the right side, in semi-circle, the name of the issuing country \'PORTUGAL\' followed by the year of issuance \'2014\'. At the bottom left the mintmark \'INCM\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 445,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_08-min.png',
    periodStartDate: '2014-10-01',
    quantity: 400_000,
    description:
        'Malta Independence 1964. The coin commemorating the Malta Independence constitution of 1964 is the fourth in the series of five coins that commemorate constitutional milestones in Maltese history. By means of the 1964 constitution Malta became an independent nation for the first time after hundreds of years of foreign domination. The national side of the coin shows a detail of the bronze monument commemorating Independence which was designed by the artist Gianni Bonnici in 1989. It shows a young woman, representing Malta, carrying the Maltese flag. At the right, in semi-circle, the inscription \'MALTA — Independence 1964\' and at the bottom the year of issuance \'2014\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 446,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_09-min.png',
    periodStartDate: '2014-09-01',
    quantity: 100_000,
    description:
        '90th anniversary of the death of Giacomo Puccini. The designs shows a portrait of the composer Giacomo Puccini. At the right the name of the issuing country, in semi-circle, \'SAN MARINO\'. At the left the inscription \'G. PUCCINI\' and the mint mark. At the bottom the year \'2014\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 447,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_10-min.png',
    periodStartDate: '2014-09-01',
    quantity: 260_000,
    description:
        '150 years of the Belgian Red Cross. The inner part of the coin features a cross with the number \'150\' in its centre. The vertical and horizontal bars of the cross bear the words \'Rode Kruis\' and \'Croix-Rouge\' respectively. The cross is surrounded by the mark of the Brussels mint (a helmeted profile of the archangel Michael), the signature mark of the Master of the Mint, the year 2014, and the country code \'BE\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 448,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_11-min.png',
    periodStartDate: '2014-09-01',
    quantity: 750_000,
    description:
        '150th anniversary of the union of the Ionian Islands with Greece (1864-2014). The inner part of the coin depicts a seven-pointed star inscribed in Greek with the words: \'150 YEARS SINCE THE UNION OF THE IONIAN ISLANDS (EPTÁNISA) WITH GREECE 1864-2014\', the name of the issuing country \'HELLENIC REPUBLIC\' and the mint mark of the Greek State Mint. The spaces between the points of the star feature the symbols of the Ionian Islands. The entire design is encircled in a decorative stylised wave motif. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 449,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_12-min.png',
    periodStartDate: '2014-09-01',
    quantity: 750_000,
    description:
        '400 years since the death of Domenikos Theotokopoulos (1614-2014). The inner part of the coin shows a portrait of Domenikos Theotokopoulos. The background features a typical figure from his work, illustrative of his technique. On the left: the year 2014 and the characteristic signature of the artist (\'Domenikos Theotokopoulos Epoiei\'). On the right: the mint mark of the Greek State Mint. The entire design is encircled in an inscription reading in Greek \'DOMENIKOS THEOTOKOPOULOS 1541-1614\' and the name of the issuing country \'HELLENIC REPUBLIC\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 450,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_13-min.png',
    periodStartDate: '2014-09-01',
    quantity: 1_000_000,
    description:
        'Riga — European Capital of Culture 2014. The central image of the coin shows the skyline of Riga and the historic centre of the city that has been included in the list of the UNESCO World Heritage Sites. At the top of the image, the inscription \'EIROPAS KULTURAS GALVASPILSETA\' (European capital of culture) and at the bottom the name of the celebrated city and the year of issuance \'RIGA — 2014\', and underneath the indication of the issuing country \'LV\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 451,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_14-min.png',
    periodStartDate: '2014-07-01',
    quantity: 300_000,
    description:
        '200 years of Malta Police Force. The coin commemorates the 200th anniversary of the Malta Police Force which was set up by means of proclamation XXII of 1814. Thus the Malta Police Force is one of the oldest in Europe. The national side of the coin depicts the badge of the Malta Police Force with the legend \'200 Years Malta Police Force\' and the dates 1814-2014. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 452,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_15-min.png',
    periodStartDate: '2014-06-01',
    quantity: 110_000,
    description:
        '500th anniversary of the death of Bramante Lazzari delle Penne di San Marino. The coin depicts Bramante\'s portrait, and part of Tempietto (Italian: \'small temple\'), which is a small commemorative tomb built by Donato Bramante, possibly as early as 1502, in the courtyard of San Pietro in Montorio and considered a masterpiece of the High Renaissance Italian architecture. The inscription \'BRAMANTE LAZZARI DELLE PENNE DI SAN MARINO\' surrounds almost completely the design. At the left and right the years \'1514\' and \'2014\', respectively. At the bottom the initials of the artist \'MCC\' (Maria Carmela Colaneri) and the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 453,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_16-min.png',
    periodStartDate: '2014-06-01',
    quantity: 1_500_000,
    description:
        '100th Anniversary of the birth of author and artist Tove Jansson. The inner part of the coin depicts Tove Jansson\'s portrait. Under the portrait the signature \'Tove Jansson\' and the years \'1914-2001\'. At the left the indication of the issuing country \'FI\'. At the right the year of issuance \'2014\' and the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 454,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_17-min.png',
    periodStartDate: '2014-06-01',
    quantity: 6_500_000,
    description:
        '200th Anniversary of the foundation of Arma dei Carabinieri. The design shows a reinterpretation of the sculpture \'Pattuglia di Carabinieri nella tormenta\' made in 1973 by Antonio Berti; on the right, superimposed letters of the Italian Republic monogram \'RI\'/2014; on the left, 1814; up, superimposed letters R (monogram of the Mint of Rome); in exergue, LDS (monogram of the Author Luciana De Simoni)/CARABINIERI. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 455,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_18-min.png',
    periodStartDate: '2014-06-01',
    quantity: 6_500_000,
    description:
        '450th Anniversary of the birth of Galileo Galilei (born in 1564). The design shows the head of Galileo Galilei from the painting of Justus Sustermans, 1636 (Florence, Galleria degli Uffizi); around, upside, GALILEO GALILEI; on the right, superimposed letters R (monogram of the Mint of Rome)/astronomic telescope/C.M. (monogram of the Author Claudia Momoni); on the left, superimposed letters of the Italian Republic monogram \'RI\'; in exergue 1564-2014. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 456,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_19-min.png',
    periodStartDate: '2014-06-01',
    quantity: 3_000_000,
    description:
        '70th anniversary of the Normandy landings of 6 June 1944. In the coin\'s central field the word D-DAY is written in such a way as to depict a landing craft and a tank gun barrel. The years 1944-2014 appear above the tank gun, with the inscription \'70e anniversaire du débarquement\' (70th anniversary of the landings) further down. The distinctive footprints left by the boots worn by American, British and Canadian troops are gradually disappearing in the sand, washed away by a wave. The words of a poem by Verlaine used as a code for the start of the landings are engraved on the wave: \'Les sanglots longs des violons de l\'automne blessent mon coeur d\'une langueur monotone\' (the long sobs of the violins of autumn wound my heart with a monotonous languor). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 457,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_20-min.png',
    periodStartDate: '2014-05-01',
    quantity: 1_000_000,
    description:
        'The official farewell to the former Queen Beatrix. The inner part of the coin depicts the effigies of both the King Willem-Alexander and the former Queen Beatrix. At the left, in semi-circle, the inscription \'WILLEM-ALEXANDER KONING DER NEDERLANDEN\' and at the right, in semi-circle, the inscription \'BEATRIX PRINSES DER NEDERLANDEN\'. Between the two inscriptions, at the top, the crown symbol and at the bottom the mint master mark, the mint mark and in between the year of issuance \'2014\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.NETHERLANDS,
  ),
  CoinModel(
    id: 458,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_21-min.png',
    periodStartDate: '2014-04-01',
    quantity: 1_000_000,
    description:
        '10th anniversary of the accession of the Slovak Republic to the European Union. At the centre of the national side are the stylised letters \'EÚ\', as the abbreviation of the European Union, with the coat of arms of the Slovak Republic incorporated in the foreground. On the right-hand side of the inner part of the coin, in two lines, is the date of the Slovak Republic\'s accession to the European Union, \'1.5.2004\', and immediately below it the year \'2014\'. Inscribed along the bottom edge of the inner part is the name of the issuing country, \'SLOVENSKO\', while in a semi-circle along the upper edge is the inscription \'10. VÝROČIE VSTUPU DO EURÓPSKEJ ÚNIE\'. To the lower left is the mint mark of Kremnica Mint (composed of the letters \'MK\' between two dies), and to the lower right are the stylised letters \'MP\', the initials of the designer, Mária Poldaufová. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 459,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_22-min.png',
    periodStartDate: '2014-04-01',
    quantity: 500_000,
    description:
        '40th Anniversary of the 25th April Revolution. The two curves represent the general shape of a carnation, the flower symbolizing the movement, which was also the origin of the revolution\'s name. The name of the issuing country \'PORTUGAL\' and the Coat of Arms are inscribed on the top of the flower. The center of the image shows the date of the event \'25 DE ABRIL\' (25th April) and at the bottom is written the number of years past since the revolution \'40 ANOS\' (40 years) and the year of issuance \'2014\'. The shape of the letters and numbers is inspired on those used in posters and other political information supports 40 years ago, as a symbol of the euphoric period lived right after the event. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 460,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_23-min.png',
    periodStartDate: '2014-04-01',
    quantity: 1_750_000,
    description:
        'Centenary of the start of the First World War. The coin\'s central field depicts a poppy above the years 2014-18. Below these years appears the inscription \'The Great War Centenary\', under which are the signature mark of the Master of the Mint and the mark of the Brussels mint, a helmeted profile of the archangel Michael. The top of the central field features the trilingual inscription \'BELGIE — BELGIQUE — BELGIEN\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 461,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_24-min.png',
    periodStartDate: '2014-03-01',
    quantity: 8_000_000,
    description:
        'UNESCO\'s World Cultural and Natural Heritage Sites — Park Güell. The coin depicts in the foreground a lizard sculpture which is the Park Güell emblem and was designed by the architect Antoni Gaudí. As background a detail of one of the pavilions situated at the Park Güell entrance. At the top, in circular sense and in capital letters the words \'ESPAÑA\' and \'PARK GÜELL — GAUDÍ\'. At the left the year of issuance \'2014\' and at the right the mintmark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 462,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_25-min.png',
    periodStartDate: '2014-02-01',
    quantity: 100_000,
    description:
        '20 years in the Council of Europe. The design shows at the centre left the coat of arms of Andorra followed by the inscription "20" where the zero is stylised to represent the Council of Europe\'s flag. At the top are the inscriptions "ANDORRA" and underneath "AL CONSELL D\'EUROPA". The year "2014" appears at the bottom left followed by an oblique line. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 463,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_26-min.png',
    periodStartDate: '2014-01-01',
    quantity: 1_400_000,
    description:
        '175th anniversary of the independence of the Grand-Duchy of Luxembourg. The coin depicts on the right hand side of its inner part the effigy of His Royal Highness, the Grand-Duke Henri, looking to the right, and on the left hand side of its inner part, vertically positioned, the years \'1839\' and \'2014\' and the name of the issuing country \'LËTZEBUERG\'. The inscriptions \'ONOFHÄNGEGKEET\' and \'175 Joër\' appear at the bottom of the inner part of the coin. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 464,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2014/2014_27-min.png',
    periodStartDate: '2014-01-01',
    quantity: 30_000_000,
    description:
        'Niedersachsen from the \'Lander\' series. The desigh shows the Church of St. Michael in Hildesheim, Lower Saxony which has been on the Unesco World Cultural Heritage list since 1985. At the top the year of issuance \'2014\' and at the left the mintmark (A, D, F, G, J). At the bottom, the inscription \'NIEDERSACHSEN\' and underneath the indication of the issuing country \'D\'. At the top right, the initials of the engraver OE (Ott Erich). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GERMANY,
  ),

  // 2015 -------------------------------------------------------------
  CoinModel(
    id: 465,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_01-min.png',
    periodStartDate: '2015-12-01',
    quantity: 1_000_000,
    description:
        'The Lithuanian language. The design shows the word ‘AČIŪ’ (THANK YOU) — one of the most beautiful words in the Lithuanian language. An original Lithuanian font — created specially on the basis of the Latin font for the occasion of the centenary of the restoration of Lithuanian press — in order to match better the combinations of letters used most in the Lithuanian language, is used in the project. All the letters of the Lithuanian language are depicted on the background of the word ‘AČIŪ’, laid out in a tag cloud. At the bottom is the name of the issuing country ‘LIETUVA’ and underneath the name is the year ‘2015’. At the bottom right, under the word ‘AČIŪ’ is the mint mark of the Lithuanian Mint. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 466,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_02-min.png',
    periodStartDate: '2015-12-01',
    quantity: 85_000,
    description:
        '30th anniversary of the Coming of Age and Political Rights to the Men and Women turning 18 years old. The design shows a partial reproduction of a young person casting a vote. The ballot that the figure is holding reproduces the inscription ‘ANDORRA’. To the left of the figure there are the years that are being commemorated ‘1985’ and ‘2015’ (the latter is the year of issue of the coin as well). A shorter inscription of the commemoration surrounds the whole design ‘30è ANIVERSARI MAJORIA D’EDAT ALS 18 ANYS’ (30th anniversary Coming of Age at 18 years old). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 467,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_03-min.png',
    periodStartDate: '2015-12-01',
    quantity: 85_000,
    description:
        '25th anniversary of the Signature of the Customs Agreement with the European Union. The design shows at the top the map of Andorra with the coat of arms of the Principality highlighted inside it. At the bottom of the design, two opposing arrows interlaced, symbolising the Customs Agreement between Andorra and the EU, show the years that are being commemorated ‘1990’ and ‘2015’ (the latter is also the year of issue of the coin) and the name of the issuing country ‘ANDORRA’. Surrounding the map of Andorra appears the inscription ‘25è aniversari de la Signatura de l’Acord Duaner amb la Unió Europea’ (25th anniversary of the Signature of the Customs Agreement with the European Union). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 468,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_04-min.png',
    periodStartDate: '2015-11-01',
    quantity: 10_000,
    description:
        '800th anniversary of the construction of the first Castle on the rock. The design shows a tower on the top of the rock. At the top the name of the issuing country ‘MONACO’ flanked by the Paris mint mark and the mint master mark. At the bottom, the inscription ‘FONDATION DE LA FORTERESSE’ (Foundation of the fortress), flanked by the years ‘1215’ and ‘2015’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 469,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_05-min.png',
    periodStartDate: '2015-10-01',
    quantity: 122_000,
    description:
        "The VIII World Meeting of Families. The design depicts two families which ideally embrace the whole Earth. At the top, the year of issuance ‘2015’. At the left side, the name of the artist ‘C. Principe’. The mint mark R appears on the arm of one family member at the right. The design is surrounded by the inscription ‘VIII INCONTRO MONDIALE DELLE FAMIGLIE’ (The VIII World Meeting of Families), from the left to the right in semi-circle and ‘CITTA' DEL VATICANO’ at the bottom. The coin's outer ring depicts the 12 stars of the European flag.",
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 470,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_06-min.png',
    periodStartDate: '2015-10-01',
    quantity: 500_000,
    description:
        'The 150th anniversary of the birth of artist Akseli Gallen-Kallela. On the top of the design there is a swimming swan of Tuonela. The water below the swan is waving from the descending spirit. The indication of the issuing country ‘FI’ is at the right end of the horizon line. At the bottom of the design there is the artist’s palette with Gallen-Kallela’s year of birth ‘1865’ and the year of issuance ‘2015’. Next to the pallet is the mint mark. The artist’s name ‘AKSELI GALLEN KALLELA’ is on the ring of the coin, below the horizon line. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 471,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_07-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_010_000,
    description:
        'Endangered nature – the Black Stork. The design shows a black stork (Ciconia nigra) which is considered to be one of the nature conservation flagship species in Europe. In 2005 the Black Stork Protection Plan was adopted in Latvia. At the bottom of the design is the name of the issuing country ‘LATVIJA’ and underneath the year of issuance ‘2015’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 472,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_08-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_000_000,
    description:
        '200th anniversary of the birth of Ľudovít Štúr. The design depicts a portrait of Ľudovít Štúr. Inscribed to the right of the portrait, parallel to the edge of the inner part of the coin, are the year of issuance ‘2015’ and, further right along the edge, the name of issuing country ‘SLOVENSKO’. Inscribed to the left of the portrait, parallel to the inner edge, are the dates of Štúr’s birth and death ‘1815–1856’ and, further left along the edge, the name ‘ĽUDOVÍT ŠTÚR’. In the upper right part of the design is the mint mark of the Kremnica Mint (Mincovňa Kremnica), consisting of the initials ‘MK’ placed between two dies. In the lower right part are the stylised letters ‘IŘ’, the initials of the designer, Ivan Řehák. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 473,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_09-min.png',
    periodStartDate: '2015-10-01',
    quantity: 2_500_000,
    description:
        'Austria Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 474,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_10-min.png',
    periodStartDate: '2015-10-01',
    quantity: 412_500,
    description:
        'Belgium Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 475,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_11-min.png',
    periodStartDate: '2015-10-01',
    quantity: 350_000,
    description:
        'Cyprus Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 476,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_12-min.png',
    periodStartDate: '2015-10-01',
    quantity: 350_000,
    description:
        'Estonia Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 477,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_13-min.png',
    periodStartDate: '2015-10-01',
    quantity: 500_000,
    description:
        'Finland Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 478,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_14-min.png',
    periodStartDate: '2015-10-01',
    quantity: 4_020_000,
    description:
        'France Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 479,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_15-min.png',
    periodStartDate: '2015-10-01',
    quantity: 30_125_000,
    description:
        'Germany Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 480,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_16-min.png',
    periodStartDate: '2015-10-01',
    quantity: 750_000,
    description:
        'Greece Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 481,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_17-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_000_000,
    description:
        'Ireland Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 482,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_18-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_005_000,
    description:
        'Italy Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 483,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_19-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_010_000,
    description:
        'Latvia Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 484,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_20-min.png',
    periodStartDate: '2015-10-01',
    quantity: 750_000,
    description:
        'Lithuania Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 485,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_21-min.png',
    periodStartDate: '2015-10-01',
    quantity: 510_000,
    description:
        'Luxembourg Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 486,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_22-min.png',
    periodStartDate: '2015-10-01',
    quantity: 300_000,
    description:
        'Malta Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 487,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_23-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_000_000,
    description:
        'Netherlands Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 488,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_24-min.png',
    periodStartDate: '2015-10-01',
    quantity: 520_000,
    description:
        'Portugal Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 489,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_25-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_000_000,
    description:
        'Slovakia Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 490,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_26-min.png',
    periodStartDate: '2015-10-01',
    quantity: 1_000_000,
    description:
        'Slovenia Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 491,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_27-min.png',
    periodStartDate: '2015-10-01',
    quantity: 4_000_000,
    description:
        'Spain Version. The 30th anniversary of the EU flag. The designs show the EU flag as a symbol that unites people and cultures with shared visions and ideals for a better common future. Twelve stars that morph into human figures are embracing the birth of a new Europe. At the top right, in semi-circle, are the issuing country and the years ‘1985-2015’. At the bottom right are the initials of the artist (Georgios Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 492,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_28-min.png',
    periodStartDate: '2015-07-01',
    quantity: 750_000,
    description:
        '75 years in memoriam of Spyros Louis. The design shows Spyros Louis and the cup that he was awarded, against the background with the Panathenaic Stadium. Inscribed along the inner edge is the country of issuance ‘HELLENIC REPUBLIC’ and ‘75 YEARS IN MEMORIAM OF SPYROS LOUIS’ (in Greek). Above the cup appears the year of issuance ‘2015’ and to the right a palmette (the mint mark of the Greek Mint). Visible at the bottom of the design is the monogram of the artist (George Stamatopoulos). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 493,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_29-min.png',
    periodStartDate: '2015-09-01',
    quantity: 400_000,
    description:
        'Republic of Malta 1974. The coin is the last in a series of five commemorating Maltese constitutional milestones. Malta was declared a republic on 13 December 1974 following constitutional changes which were agreed upon by a great majority in Malta’s Parliament. The design reproduces a marble tablet affixed to the façade of the Presidential Palace in Valletta to mark Malta’s change from a monarchy to a republic. At the top right, in semi-circle, the inscription ‘MALTA — Republic 1974’. At the bottom, the year ‘2015’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 494,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_30-min.png',
    periodStartDate: '2015-09-01',
    quantity: 100_000,
    description:
        '25th anniversary of the German reunification. The design shows the Brandenburg Gate which during the Cold War was located in East Berlin, in two representations which are intertwined like two hands, symbolizing the reunification of the two parts of Berlin. At the right the mint mark ‘R’ and at the left the initials of the artist ‘ES’ (Erik Spiekermann). In circle around the design are the inscription ‘25o ANNIVERSARIO DELLA RIUNIFICAZIONE DELLA GERMANIA 1990-2015’ (25th anniversary of the German reunification) and the country and year of issuance ‘San Marino MMXV’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 495,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_31-min.png',
    periodStartDate: '2015-09-01',
    quantity: 250_000,
    description:
        '2015 – European Year for Development. The inner part of the coin depicts a hand holding a globe of the Earth with a plant in the foreground. The inscription ‘2015 EUROPEAN YEAR FOR DEVELOPMENT’ features in an arc above the globe. The country code ‘BE’ appears beneath the hand while the signature mark of the Master of the Mint and the mark of the Brussels mint, a helmeted profile of the archangel Michael, are to its left. The coin’s o',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 496,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_32-min.png',
    periodStartDate: '2015-08-01',
    quantity: 1_400_000,
    description:
        '125th anniversary of the House of Nassau-Weilburg. On the left of the coin is the effigy of His Royal Highness Grand Duke Henri, and on the right, in a circular arrangement, and in chronological order of their accession to the throne, the portraits of their Royal Highnesses Grand Dukes Adolphe and Guillaume IV, Grand Duchesses Marie-Adélaïde and Charlotte, and Grand Duke Jean. To the right, also in circular format, is the inscription ‘1890 - Dynastie Nassau-Weilbourg’. The name of the issuing country, ‘Luxembourg’, and the year, ‘2015’, run vertically in the centre of the design. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 497,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_33-min.png',
    periodStartDate: '2015-07-01',
    quantity: 4_000_000,
    description:
        '225th anniversary of the Fête de la Fédération (Festival of the Federation). The French national holiday brings the people of France together in celebration of the Republic. The design shows Marianne, the symbol of the Republic, depicted in profile in a graphic, contemporary style. She is wearing the Phrygian cap. On the right the tricolour cockade appears in outline above the letters RF. The year is written in the centre of the coin. The left side features a stanza from the poem ‘Liberté’ by the French poet Paul Eluard, an allusion to the motto of the French Republic. The mint marks appear alongside this extract.The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 498,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_34-min.png',
    periodStartDate: '2015-07-01',
    quantity: 3_500_000,
    description:
        '750th anniversary of the birth of Dante Alighieri 1265-2015. The design shows Dante with an open book in his left hand and the Purgatory mountain at the back: detail from the illustration of the Divine Comedy painted by Domenico di Michelino (1417-1491) in the Dome of S. Maria del Fiore in Florence; in the centre, the monogram of the Italian Republic ‘RI’; at the right the inscription ‘R’, identifying the Mint of Rome; below the inscription ‘SP’, initials of Silvia Petrassi and the dates ‘1265 2015’, i.e. the year of the anniversary and that of the coin’s issue respectively; arch shaped, the inscription ‘DANTE ALIGHIERI’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 499,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_35-min.png',
    periodStartDate: '2015-07-01',
    quantity: 520_000,
    description:
        '500 years of the first contacts with Timor, nowadays an independent Portuguese speaking country (Timor Lorosae). The design depicts a XVI Century ship, representing the arrival of the Portuguese navigators to the island, and a local house thatched roof top, including the typical wood sculptures, permanent memories of myths and legends. The one depicted on the coin represents the history of the first inhabitants, who arrived by boat from other parts of the Asian continent and the importance of the horse to travel around the steep mountains which cover most of the island. At the top right, the year ‘1515’ and the name of the issuing country ‘PORTUGAL’. At the bottom left, the inscription ‘TIMOR’ and the year ‘2015’. At the bottom, the signature of the artist Fernando Fonseca. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 500,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_36-min.png',
    periodStartDate: '2015-04-01',
    quantity: 520_000,
    description:
        '150th Anniversary of the Portuguese Red Cross. The design depicts a visual composition based on the well-known cross, symbol of the organisation, replicated several times to represent the expansion of the humanitarian action both in Portugal and abroad. The contour of a hand in the background symbolises the different kinds of help given by the organisation to the people, mostly medical, but also and among others: cooperating, constructing and supporting. At the left side, in semicircle, the inscription ‘CRUZ VERMELHA PORTUGUESA’. At the top, the Coat of Arms and the name of the issuing country ‘PORTUGAL’ and at the bottom the years ‘1865’ and ‘2015’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 501,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_37-min.png',
    periodStartDate: '2015-04-01',
    quantity: 104_000,
    description:
        "The 750th anniversary of the birth of Dante Alighieri. The design by Annalisa Masini shows a portrait of Dante, taken from a fresco by Botticelli. At the right of the portrait, the inscription ‘DANTE’ on a vertical axis. At the right of the inner centre, the name of the issuing country ‘SAN MARINO’ in semi-circle. Between these two inscriptions, the mint mark ‘R’, the years ‘1265’ and ‘2015’ and the initials of the artist ‘AM’. The lettering style used in identifying the nation and the coin's subject was inspired by lettering in the first copies of the Divina Commedia (Dante’s Divine Comedy). The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 502,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_38-min.png',
    periodStartDate: '2015-03-01',
    quantity: 300_000,
    description:
        'First flight from Malta. The coin commemorates an important milestone in Maltese aviation history — the 100 years since the first flight from Malta. It was on 13 February 1915 that Captain Kilmer took off from the Grand Harbour on a seaplane that was carried by HMS Ark Royal. The plane landed in the harbour after a 55-minute flight. The coin depicts Captain Kilmer’s seaplane with Senglea Point, a prominent feature in the Grand Harbour, in the background. At the top the inscription ‘FIRST FLIGHT FROM MALTA’ in semi-circle. At the right the years ‘1915-2015’. At the bottom left the inscription ‘100TH ANNIVERSARY’ and at the bottom the initials of the designer ‘NGB’ (Noel Galea Bason). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 503,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_39-min.png',
    periodStartDate: '2015-03-01',
    quantity: 1_400_000,
    description:
        '15th anniversary of the accession to the throne of H.R.H. the Grand Duke. The coin depicts their Royal Highnesses Grand Duke Henri and the Grand Duchess. The year of accession ‘2000’, the issuing country ‘Luxembourg’ and the year mark ‘2015’ appear above them. Below them appears the inscription ‘15e anniversaire de l’accession au trône de S.A.R. le Grand-Duc’ (15th anniversary of the accession to the throne of H.R.H. the Grand Duke). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 504,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_40-min.png',
    periodStartDate: '2015-03-01',
    quantity: 3_500_000,
    description:
        'EXPO Milano 2015. The design depicts a composition symbolising the fertility of Earth: on a semicircle indicating the terrestrial sphere, a seed fed by the water waits to sprout; above the Earth, a vine, an olive twig and an ear grow from a tree trunk; around, the inscription ‘NUTRIRE IL PIANETA’; on the left the initials of the designer Maria Grazia Urbani, ‘MGU’; on the right, the monogram of Italian Republic ‘RI’ and ‘R’, identifying the Mint of Rome; in the middle, logo of the EXPO MILANO 2015. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 505,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_41-min.png',
    periodStartDate: '2015-02-01',
    quantity: 8_000_000,
    description:
        'Unesco’s World Cultural and Natural Heritage Sites — Cave of Altamira. The design depicts in the foreground the bison painting from the Cave of Altamira located in Cantabria. In the upper side of the image, in circular sense and with capital letters, the word ‘ESPAÑA’, at the bottom the year of issuance ‘2015’ and at the right the mint mark. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 506,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_42-min.png',
    periodStartDate: '2015-01-01',
    quantity: 30_000_000,
    description:
        '25 years of German Unity. The people in the foreground, who embody a new beginning and the advance towards a better future, are standing in front of the Brandenburg Gate, symbol of German unity. The rendering of the statement Wir sind ein Volk (‘we are one people’) — a collective expression of will by German citizens – represents the path forwards towards German reunification. The inner part also features the mint mark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’) as well as the issuing country’s country code ‘D’ and the engraver’s mark (the initials ‘BW’ — Bernd Wendhut). The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 507,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_43-min.png',
    periodStartDate: '2015-01-01',
    quantity: 30_000_000,
    description:
        "Hessen from the 'Lander' series. The design depicts a classic perspective on St. Paul’s Church in Frankfurt (the ‘Paulskirche’ was the seat of Germany’s first freely elected legislative body in 1849 and is regarded as the cradle of German democracy) and is therefore the perspective possessing the greatest recognition value. The design incisively brings out the tension between the dominant tower and the elliptical structure of the church. The slightly exaggerated flight of steps has an inviting quality while simultaneously offering support to the subjacent inscription ‘HESSEN’ (the Federal State of Hessen in which St. Paul’s Church is situated).The inner part also features the year ‘2015’ and the mint mark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’) at the left side as well as the issuing country’s indication ‘D’ and the engraver’s mark (the initials ‘HH’ — Heinz Hoyer) at the right side. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 508,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_44-min.png',
    periodStartDate: '2015-01-01',
    quantity: 1_000_000,
    description:
        'Emona-Ljubljana. The central image of the coin is the composition of letters that form the word ‘EMONA’ or ‘AEMONA’ and a stylised design of Emona. At the bottom, in circular sense, the inscription ‘EMONA LJUBLJANA SLOVENIJA 2015’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 509,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_45-min.png',
    periodStartDate: '2015-01-01',
    quantity: 4_000_000,
    description:
        'Europe building peace and security since 1945. In the coin’s central field is a modern graphic representation of a dove. It is carrying an olive branch, the symbol of peace, whose branches have been replaced by the 12 stars of the European flag. The 28 countries of the European Union are represented by the ISO code for each country. The letters RF (République Française) are at the bottom of the coin. The mint marks are on the left-hand side and the year 2015 on the right. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 510,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_46-min.png',
    periodStartDate: '2015-01-01',
    quantity: 1_000_000,
    description:
        'The 150th anniversary of the birth of composer Jean Sibelius. At the inner part of the coin is sky with stars, tree tops at the right. The text ‘JEAN SIBELIUS’ and the year of issuance ‘2015’ are placed at the left inner part of the coin. At the right is the indication of the issuing country ‘FI’ and the mint mark. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 511,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2015/2015_47-min.png',
    periodStartDate: '2015-01-01',
    quantity: 2_000_000,
    description:
        'Latvian Presidency of the Council of the European Union. The design shows the official logo of the Latvian Presidency of the Council of the European Union. The logo is complemented by the lettering ‘LATVIJAS PREZIDENTŪRA ES PADOMĒ’ (LATVIAN PRESIDENCY OF THE COUNCIL OF THE EUROPEAN UNION) and the website of the Presidency ‘EU2015.LV’. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),

  // 2016 -------------------------------------------------------------
  CoinModel(
    id: 512,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_01-min.png',
    periodStartDate: '2016-12-01',
    quantity: 750_000,
    description:
        '150 years from the Arkadi Monastery Torching. The design features the Arkadi Monastery. Inscribed, at centre, is the wording \'ARKADI MONASTERY\' and along the inner edge at left \'HELLENIC REPUBLIC\', in Greek. Visible at upper right is the year of issuance \'2016\' and below the central inscription a palmette (the mintmark of the Greek Mint). Inscribed at lower right is the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 513,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_02-min.png',
    periodStartDate: '2016-12-01',
    quantity: 750_000,
    description:
        '120 years from the birth of Dimitri Mitropoulos. The design features the portrait of Dimitri Mitropoulos against the background of music notes. Inscribed along the inner edge at left is the wording \'120 YEARS OF THE BIRTH OF DIMITRI MITROPOULOS\' and \'HELLENIC REPUBLIC\', in Greek. At upper left apears the year of issuance \'2016\' and a palmette (the mintmark of the Greek Mint). Visible at lower right is the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 514,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_03-min.png',
    periodStartDate: '2016-12-01',
    quantity: 85_000,
    description:
        '25th anniversary of the Radio and Television of Andorra. The design shows a microphone and an antenna circled by several circular lines with the inscription \'25è ANIVERSARI DE RÀDIO I TELEVISIÓ D\'ANDORRA\', the year of issuance \'2016\' and the name of the State of issuance \'ANDORRA\'. This commemorative coin celebrates the 25th anniversary of the establishment of the Andorran public media with the beginning of the broadcast of the Andorran public radio and public television. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 515,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_04-min.png',
    periodStartDate: '2016-12-01',
    quantity: 85_000,
    description:
        '150 years of the New Reform 1866. The design shows the main room of \'Casa de la Vall\' (premises of the Andorran Parliament) with the inscription \'150 ANYS DE LA NOVA REFORMA DE 1866\', the year of issuance \'2016\' and the name of the State of issuance \'ANDORRA\'. This commemorative coin celebrates the 150 years of the New Reform Decree, one of the biggest steps on the Andorran and on the Consell General (Andorran Parliament) history, which represented a social and political transformation in the Principality of Andorra. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 516,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_05-min.png',
    periodStartDate: '2016-11-01',
    quantity: 380_000,
    description:
        'The role of the Malta Community Chest Fund in Society. This coin is envisaged to commemorate the role of the Malta Community Chest Fund in Society through a programme for secondary school students entitled \'From Children in Solidarity\'. This programme identifies the social role of children in five different areas with the first theme being \'Solidarity through Love\'. This design was created by Ms Sarah Cilia a secondary school student who has expressed this theme through two hands forming a heart shape which displays a representation of the Maltese flag. At the bottom of the design is the inscription \'MALTA 2016\'. Two stylised representations of human bodies are designed on the left wrist and two on the right one. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 517,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_06-min.png',
    periodStartDate: '2016-11-01',
    quantity: 1_030_000,
    description:
        'Vidzeme. The designs shows the coat of arms of the historical region of Latvia — Vidzeme or Livland. At the top there is the inscription of the issuing country \'LATVIJA\' and at the bottom the inscription \'VIDZEME\'. At the right is the year of issuance \'2016\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 518,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_07-min.png',
    periodStartDate: '2016-10-01',
    quantity: 10_000_000,
    description:
        'François Mitterrand. The design shows a profile of a pensive François Mitterrand. Adjacent is his personal emblem of a half oak/half olive tree. Above are the dates marking the centenary of his birth (\'1916\' and \'2016\') and his name. At the bottom, the indication of the issuing country \'RF\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 519,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_08-min.png',
    periodStartDate: '2016-10-01',
    quantity: 105_000,
    description:
        'Jubilee of Mercy. The national face features St Martin of Tours sharing his cloak with a poor man. The design is surrounded by the inscriptions \'GIUBILEO DELLA MISERICORDIA\' at the left and \'CITTÀ DEL VATICANO\' at the right, both in semi-circle. At the right there is as well the year of issuance \'2016\' and at the bottom the mint mark \'R\' and the name of the artist \'M. CRISCIOTTI\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 520,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_09-min.png',
    periodStartDate: '2016-10-01',
    quantity: 1_000_000,
    description:
        'The 100th anniversary of the birth of philosopher Georg Henrik von Wright. At the inner part of the coin is an ancient Doric pillar, and an oak branch at the left. The inscription \'GEORG HENRIK VON WRIGHT\' is placed in semi-circle from left to right and the year of issuance \'2016\' is placed on the top at the right. On the top at the left is the indication of the issuing country \'FI\' and the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 521,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_10-min.png',
    periodStartDate: '2016-09-01',
    quantity: 85_000,
    description:
        '400th anniversary of the death of William Shakespeare. The design depicts a portrait of the poet. On the right, in a semi-circle, the dates \'1616-2016\' and the name of the issuing country \'San Marino\'; on the bottom right, the initials of the artist \'MB\'. On the left, in a semi-circle, the inscription \'William Shakespeare\'; on the bottom left, the mintmark \'R\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 522,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_11-min.png',
    periodStartDate: '2016-07-01',
    quantity: 350_000,
    description:
        'Ġgantija Temples. The coin depicts the Ġgantija Temples situated on the Island of Gozo. Ġgantija is a megalithic temple complex dating to the Neolithic ages. It is one of the world\'s oldest free-standing structures, as well as one of the oldest religious structures. Built approximately in the 36th century BC, Ġgantija pre-dates Stonehenge and the Egyptian Pyramids. At the top right the inscription \'ĠGANTIJA TEMPLES\' and underneath the years \'3600-3200 BC\'. At the bottom left the name of the country of issuance \'MALTA\' and underneath the year of issuance \'2016\', flanked by the mint master mark and the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 523,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_12-min.png',
    periodStartDate: '2016-07-01',
    quantity: 500_000,
    description:
        '50 years of the first bridge uniting the two riverbanks of the Tejo River. The design depicts the image of the bridge. At the top right is the inscription \'PORTUGAL\'. At the bottom right are the inscriptions \'PONTE\', \'25 DE ABRIL\', \'1966\' and \'2016\', one below the other. At the bottom left is the mintmark \'INCM\' and at the bottom centre is the name of the designer \'JOSÉ AURÉLIO\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 524,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_13-min.png',
    periodStartDate: '2016-05-01',
    quantity: 1_000_000,
    description:
        'The Baltic culture. The design shows an amber disc, one of the most characteristic symbols of the Baltic culture. The disc is decorated with a crosspiece of drilled dots — an ornament symbolising the world\'s axis. At the top is the name of the issuing country \'LIETUVA\', flanked by the mint mark and the year of issuance \'2016\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 525,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_14-min.png',
    periodStartDate: '2016-06-01',
    quantity: 105_000,
    description:
        'The 200th anniversary of the Vatican Guard. The national face features a Vatican Guard in front of the Dome of St. Peter\'s Basilica. At the top, in semi-circle is the inscription \'CORPO DELLA GENDARMERIA 1816-2016\'. At the bottom, in semi-circle is the name of the issuing country \'CITTÀ DEL VATICANO\'. The mint mark \'R\' appears at the left of the design and the name of the designer \'D. Longo\' appears at the right. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 526,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_15-min.png',
    periodStartDate: '2016-06-01',
    quantity: 1_010_000,
    description:
        'Latvian agricultural industry. The designs shows a Latvian brown cow which is one of the symbols of Latvian dairy farming both in folklore and in life. Underneath the design, at the left side there is the inscription of the year of issuance \'2016\' and at the bottom of the inner circle the name of the issuing country \'LATVIJA\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 527,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_16-min.png',
    periodStartDate: '2016-06-01',
    quantity: 15_000,
    description:
        'The 150th anniversary of the foundation of Monte Carlo by Charles III. The design shows CHARLES III within the background MONTE CARLO. At the top is the name of the issuing country \'MONACO\' flanked by the mint mark and the mint master mark. At the bottom, in semi-circle from left to right is the inscription \'1866 CHARLES III FONDE MONTE CARLO 2016\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 528,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_17-min.png',
    periodStartDate: '2016-06-01',
    quantity: 1_000_000,
    description:
        'The 25th anniversary of independence of the Republic of Slovenia. Over the left part of the inner circle is obliquely positioned a line. At its right, in the upper part of the coin is the inscription \'25 LET\' and below it the inscription \'REPUBLIKA SLOVENIJA\'. Underneath these inscriptions is the original Prešeren\'s written record of the part of the Slovenian hymn Zdravljica \'dočákat\' dan\'. At the bottom of the inner circle is the year \'2016\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 529,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_18-min.png',
    periodStartDate: '2016-05-01',
    quantity: 1_020_000,
    description:
        'International Missing Children\'s Day. The inner part of the coin displays in its centre the face of a child surrounded by the words \'MISSING-DISPARU-VERMIST\', \'WWW.CHILDFOCUS.BE\' and the trilingual indication of nationality \'BELGIQUE-BELGIE-BELGIEN\' followed by the year 2016. The mark of the Brussels mint, a helmeted profile of the archangel Michael and the signature mark of the Master of the Mint appear to the left and right respectively of the face. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 530,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_19-min.png',
    periodStartDate: '2016-04-01',
    quantity: 1_000_000,
    description:
        'The Finnish writer and lyricist Eino Leino. At the inner part of the coin is a flame, and a poker pointing upwards to the right. The inscription \'EINO LEINO\', in semi-circle and the year of issuance \'2016\' are placed at the right. At the bottom left is the indication of the issuing country \'FI\' and the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 531,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_20-min.png',
    periodStartDate: '2016-04-01',
    quantity: 85_000,
    description:
        '550th anniversary of the death of Donatello. The design depicts, in the foreground on the left, a portrait of David, being a detail of the bronze sculpture by Donatello. At centre top, the mintmark \'R\'; on the right, the name of the issuing country \'SAN MARINO\'; at bottom right, the inscription \'Donatello\', the dates \'1466-2016\' and, in the centre, the initials of the artist \'MB\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 532,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_21-min.png',
    periodStartDate: '2016-03-01',
    quantity: 650_000,
    description:
        'Portuguese team participating in the Rio 2016 Olympic Games. The design shows an image based on the well-known artwork \'Heart of Viana\', signed by the author Joana Vasconcelos, which was inspired by traditional jewellery from the north of Portugal (the area around the city of Viana do Castelo). It symbolises the Portuguese people\'s support for the national team on the occasion of the Olympics. At the left and the right, in semi-circle, are the inscriptions \'JOANA VASCONCELOS\' and \'EQUIPA OLÍMPICA DE PORTUGAL 2016\', respectively. At the bottom is the mint mark \'INCM\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 533,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_22-min.png',
    periodStartDate: '2016-03-01',
    quantity: 1_500_000,
    description:
        '550th anniversary of the death of Donatello. Head of Donatello\'s David (detail of the bronze sculpture on display in the National Museum of Bargello, Florence). On the left, \'RI\', the monogram of the Italian Republic\'; on two lines below, \'1466\' and \'2016\'. On the right, \'C.M.\', the initials of the author Claudia Momoni; below, \'DONATELLO\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 534,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_23-min.png',
    periodStartDate: '2016-03-01',
    quantity: 1_500_000,
    description:
        '2200th anniversary of the death of Tito Maccio Plauto. Theatre masks representing two New Comedy characters, a young woman and a slave, from a mosaic of the second century AD (Capitoline Museums, Rome); around, the construction plan of a Roman theatre and \'RI\', the monogram of the Italian Republic; on the left, \'R\', and on the right, \'LDS\', the initials of the author Luciana De Simoni; below, \'184 A. C.\', \'2016\' and \'PLAUTO\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 535,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_24-min.png',
    periodStartDate: '2016-03-01',
    quantity: 375_000,
    description:
        'Olympic Games. The inner part of the coin depicts, from top to bottom, a stylised figure, the five Olympic rings and the inscription \'TEAM BELGIUM\'. The year 2016 is written on the left-hand side of the coin. The country code \'BE\' appears on the right-hand side of the coin, between the mark of the Brussels mint, a helmeted profile of the archangel Michael, and the signature mark of the Master of the Mint. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 536,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_25-min.png',
    periodStartDate: '2016-03-01',
    quantity: 1_000_000,
    description:
        'The first Slovak Presidency of the Council of the European Union. The design centres on the coat of arms of the Slovak Republic, shown against a background of dynamic centripetal lines representing the position and importance of the Slovak Republic during its presidency of the Council of the European Union. To the right of the coat of arms: the year \'2016\'. Around the edge of the inner circle: the country name \'SLOVENSKO\' (Slovakia) and the inscription \'PREDSEDNÍCTVO SR V RADE EÚ\' (Slovak Presidency of the EU Council), separated by graphical symbols. The mint mark of Kremnica Mint, composed of the letters \'MK\' between two die, and the stylised initials of the designer of the national side, Vladimír Pavlica, \'VP\', are in the lower part of the composition. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 537,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_26-min.png',
    periodStartDate: '2016-01-01',
    quantity: 1_000_000,
    description:
        'The 50th anniversary of the \'Grand Duchess Charlotte Bridge\'. The design shows the \'Grand Duchess Charlotte Bridge\', which is the main infrastructure connecting the city centre of Luxembourg to the urban quarter of Kirchberg, the location of the city\'s European Union institutions. The French name of the bridge, \'Pont Grande-Duchesse Charlotte\', is inscribed on the image of the bridge, and the year \'1966\' appears directly beneath this text. At the top of the design, an image of the Grand Duke Henri of Luxembourg; at its left, the year of issuance \'2016\'. At the bottom appears the name of the issuing country, \'LUXEMBOURG\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 538,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_27-min.png',
    periodStartDate: '2016-02-01',
    quantity: 30_000_000,
    description:
        'Saxony (Federal States series). The design shows a view of the world-famous Zwinger Palace in Dresden, namely of the inner yard giving way to the Crown Gate. It includes the name \'SACHSEN\' (Saxony) and the country code \'D\' at the bottom, the mint mark of the respective mint (\'A\', \'D\', \'F\', \'G\' or \'J\') as well as the engraver\'s mark (the initials \'JT\' for Jordi Truxa) at the top right and the year \'2016\' at the top left. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 539,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_28-min.png',
    periodStartDate: '2016-02-01',
    quantity: 8_000_000,
    description:
        'Unesco\'s World Cultural and and Natural Heritage Sites – Segovia. The design depicts in the foreground the aqueduct of Segovia. At the top of the inner circle, and following the circular shape of the coin, is the name of the issuing country \'ESPAÑA\'; underneath it, the year of issuance \'2016\'. At the top right is the mint mark. The coin\'s outer ring depicts the 12 stars of the European flag.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 540,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_29-min.png',
    periodStartDate: '2016-01-01',
    quantity: 16_000_000,
    description:
        '200 years of Oesterreichische Nationalbank. The design depicts a carved relief with two gods from Roman mythology standing before the entrance to the main building of the Oesterreichische Nationalbank (OeNB): to the left, Mercury, the messenger of the gods and the god of merchants and commerce; to the right, Fortuna, the goddess of fate and prosperity, who is portrayed with a horn of plenty. The background detail, running from the left to the right edges of the core, shows the OeNB\'s main premises. An ornamental band skirting the bottom of the coin centre evokes the red-white-red pattern of the Austrian national flag, with hatched vertical lines symbolising the colour red, as laid down in the rules of heraldic design. The years \'1816\' and \'2016\' to the left of Mercury refer to the OeNB\'s founding year and its bicentennial. The inscriptions running along the edges of the gold-coloured centre read \'Republik Österreich\' (Republic of Austria) and \'200 Jahre Oesterreichische Nationalbank\' (200 years of Oesterreichische Nationalbank). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.AUSTRIA,
  ),
  CoinModel(
    id: 541,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_30-min.png',
    periodStartDate: '2016-01-01',
    quantity: 10_000_000,
    description:
        '2016 UEFA European Championship. Held every four years since 1960, the UEFA European Championship – the sporting highlight commonly referred to as \'the Euro\' – took place in France from 10 June to 10 July 2016. Euro 2016, the fifteenth edition of the competition, was organised by the Union of European Football Associations, and brought together the best men\'s football teams in Europe. The winner of the competition received a small-scale version of the Henri Delaunay Cup, named after the man who invented it. The design of the coin features the Henri Delaunay Cup in the middle of an outline map of France, along with the two marks of the Paris Mint. The letters \'RF\' for République Française (French Republic) are to the right of the map of France, and the name of the competition, \'UEFA EURO 2016 France\', appears above it. Below the map, a football stands out in the foreground. All of this is set on a background that features graphical elements representing the competition. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 542,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_31-min.png',
    periodStartDate: '2016-01-01',
    quantity: 500_000,
    description:
        '100th anniversary of the birth of the famous Estonian chess grandmaster Paul Keres. The coin features a portrait of the great Estonian chess player Paul Keres with some chess pieces. At the top left, in semi-circle, is the inscription \'PAUL KERES\'; the name of the issuing country \'EESTI\' appears directly below it, with the year of issuance \'2016\' on the line underneath. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 543,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2016/2016_32-min.png',
    periodStartDate: '2016-01-01',
    quantity: 4_500_000,
    description:
        '100 years since the 1916 Easter Rising in Ireland. The design shows the statue of Hibernia perched at the top of the General Post Office building – the seizure of which marked the beginning of the Easter rising back in 1916. She is a symbol of Ireland. Her name was taken from the ancient Greek reference for Ireland and her form was realised by the sculptor John Smyth. She is viewed as a witness to the events of 1916 and, in the 100 years since, she has seen the nation blossom before her based on the ideals set out in the Proclamation. She continues to look forward and is a symbol of the past, present and future of the country. At the top of the inner circle, the inscription \'HIBERNIA\' appears in hand‑rendered lettering that takes influence from the historic Book of Kells. The sunrays reflect well the underlying concept of the Rising and the Proclamation, e.g. the dawning of the new nation/republic. The image of the statue is flanked by the years \'1916\' and \'2016\'. At the bottom of the inner circle appears the name of the issuing country \'éire\' and, underneath it, the year of issuance \'2016\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.IRELAND,
  ),

  // 2017 -------------------------------------------------------------
  CoinModel(
    id: 544,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_01-min.png',
    periodStartDate: '2017-12-01',
    quantity: 85_000,
    description:
        'Andorra – The Pyrenean country. The design reproduces on its upper part a triangle, consisting of three undulating strips representing a simplified version of the map of the country, with the inscriptions \'Andorra\' and \'EL PAÍS DELS PIRINEUS\' (the Pyrenean country). These three elements make up the brand owned by the Government of Andorra, which is used to provide a uniform, consistent and coordinated image to all graphic communication and, at the same time, achieve an unmistakable and instant identification. The lower part of the design depicts the year of issuance \'2017\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 545,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_02-min.png',
    periodStartDate: '2017-12-01',
    quantity: 85_000,
    description:
        '100 years of the anthem of Andorra. The design depicts a partial reproduction of the anthem of Andorra published in 1914. The central part of the design reproduces the first notes of the anthem flanked by an ornamentation of floral style and the inscription \'Himne Andorrà\' (Andorran anthem). The upper part of the design shows the year of issuance \'2017\' and the inscription \'100 anys de l\'himne d\'Andorra\' (100 years of the anthem of Andorra). This coin commemorates the 100th anniversary of its admission as the national anthem of Andorra by agreement of the Consell General (Andorran Parliament) of 2 April 1917. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 546,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_03-min.png',
    periodStartDate: '2017-11-01',
    quantity: 380_000,
    description:
        'Solidarity and peace. The coin\'s theme centres on the concept of solidarity and peace. The design was created by a school student and depicts two children holding the Maltese flag with the dove of peace flying over them. At the bottom is the name of the issuing country \'Malta\' and at the right side is the year of issuance \'2017\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 547,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_04-min.png',
    periodStartDate: '2017-11-01',
    quantity: 15_000,
    description:
        'Carabiniers du Prince (\'Carabiniers\' of the Prince). The design shows a CARABINIER and in the background the Palace of Monaco. At the top is the inscription \'MONACO\' flanked by the mintmark and the mint master mark. At the bottom are the years \'1817-2017\' and underneath the inscription \'CARABINIERS DU PRINCE\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 548,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_05-min.png',
    periodStartDate: '2017-11-01',
    quantity: 520_000,
    description:
        '150 years of the birth of writer Raul Brandão. The design shows the face of Raul Brandão. At the left side is the inscription RAUL BRANDÃO and underneath the years \'1867\' and \'2017\'. At the bottom right is the inscription of the country of issuance \'PORTUGAL\' and at the top right is the name of the author \'LUIS FILIPE DE ABREU\' followed by the mintmark \'INCM\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 549,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_06-min.png',
    periodStartDate: '2017-10-01',
    quantity: 530_000,
    description:
        'Latgale. The design shows the coat of arms of the region of Latgale. At the top, the name of the issuing country \'LATVIJA\' and at the bottom the inscription \'LATGALE\'. At the right hand side, the year of issuance \'2017\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 550,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_07-min.png',
    periodStartDate: '2017-10-01',
    quantity: 500_000,
    description:
        'The 200th anniversary of the Grand Duke Guillaume III. The design shows on the left hand the effigy of His Royal Highness, the Grand-Duke Henri, looking to the left and on the right hand the effigy of HRH the Grand-Duke Guillaume III. At the top of the design is depicted the year-date \'2017\'. At the bottom appears the text \'GRANDS-DUCS DE LUXEMBOURG\'. The name \'GUILLAUME III\' followed by the indication of the year of birth \'*1817\' is depicted above the respective effigy. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 551,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_08-min.png',
    periodStartDate: '2017-10-01',
    quantity: 105_000,
    description:
        'Centenary of the Fatima apparitions. The design features the three young shepherds to whom Mary appeared, on the background the Sanctuary of Fatima. At the top is the inscription \'CITTÀ DEL VATICANO\' in semi-circle and right under is the year \'1917\'. Underneath the year, from left to right, is the inscription \'FATIMA 2017\'. At the left side is the mintmark \'R\' and at the bottom the name of the designer \'O.ROSSI\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 552,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_09-min.png',
    periodStartDate: '2017-10-01',
    quantity: 500_000,
    description:
        'The Finnish nature. The inner part of the coin has a design forming a cartographic likeness of the moon seen from Harmaja, Finland. On the top of the moon there is a crow sitting on a branch. The year of issuance \'2017\' is placed at the center bottom. At the center left is the indication of the issuing country \'FI\'. The mint mark is placed center right. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 553,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_10-min.png',
    periodStartDate: '2017-09-01',
    quantity: 430_000,
    description:
        'Paphos 2017 – European Capital of Culture. The design shows the \'Paphos Ancient Odeon\', a small amphiteatre dating back to the 2nd century AD. Nowadays it is used in the summer for musical theatrical performances and it will be the venue of a number of events to be held within the program of \'Paphos 2017 – European Capital of Culture\'. The issuing country\'s name \'ΚΥΠΡΟΣ KIBRIS\' and the phrase \'Πάφος 2017 – Πολιτιστική πρωτεύουσα Ευρώπης\' (i.e. Paphos 2017 – European capital of Culture) are inscribed on the inner part of the national side of the coin. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 554,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_11-min.png',
    periodStartDate: '2017-09-01',
    quantity: 10_000_000,
    description:
        '25th anniversary of the pink ribbon, symbol of the fight against breast cancer. Since the 1990s, the fight against breast cancer has been a major cause around the world. On the occasion of the 25th anniversary of the pink ribbon, iconic symbol of this fight, Monnaie de Paris has decided to support this cause. For nearly 15 years, a pink ribbon prize has been presented every year to support research efforts and innovation. The design represents a woman\'s bust symbolically protected by a hand and the ribbon. It is surrounded, at the right side, by the inscription \'25e ANNIVERSAIRE DU RUBAN ROSE\' (25th anniversary of the pink ribbon). The right side also features the years \'1992 – 2017\', the indication of the issuing country \'RF\' and the mintmarks. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 555,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_12-min.png',
    periodStartDate: '2017-09-01',
    quantity: 200_000,
    description:
        '200th anniversary of the Ghent University. The inner part of the piece represents the logo of the Ghent University, with the dates 1817 - 2017 below, surrounded by the inscription 200 JAAR UNIVERSITEIT GENT – 200 YEARS GHENT UNIVERSITY and the country indication BE. The mintmark of Brussels, a helmeted head of the Archangel Michael, and the mint directors\' mintmark, the coat of arms of the municipality Herzele, are located respectively on the right and left of the country indication. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 556,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_13-min.png',
    periodStartDate: '2017-09-01',
    quantity: 70_500,
    description:
        'International Year of Sustainable Tourism for Development. The design shows in the center Planet Earth surrounded by waves; to the right a circle with the letter A, symbol of the designer Andrew Lewis. Arched, above the writing "TURISMO SOSTENIBILE", below "SAN MARINO" and the year "2017"; to the right the initials of the engraver Uliana Pernazza "UP INC."; to the left the letter "R" of the Italian Mint which took care of the mintage. The United Nations General Assembly approved the adoption of 2017 as the International Year of Sustainable Tourism for Development. The idea of sustainable Tourism indicates a kind of travelling that respects the planet, it doesn\'t alter the natural, social and artistic environment and it doesn\'t inhibit the growth of social and economic activities. It is a kind of tourism opposite to mass tourism and it tends to promote the weakest economies. The Republic of San Marino dedicated a 2 euro commemorative coin, designed by the Canadian artist Andrew Lewis to this theme, in order to promote a new mentality and to encourage tourists\' respect for environment. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 557,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_14-min.png',
    periodStartDate: '2017-09-01',
    quantity: 530_000,
    description:
        'Kurzeme. The design shows the coat of arms of the region of Kurzeme. At the top, the name of the issuing country "LATVIJA" and at the bottom the inscription "KURZEME". At the right hand side, the year of issuance "2017". The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 558,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_15-min.png',
    periodStartDate: '2017-07-01',
    quantity: 1_000_000,
    description:
        'Vilnius. The design shows a fragment of the Vilnius city panorama. At the left side is the inscription \'VILNIUS\' and the mark of the designer. At the top right is the name of the issuing country \'LIETUVA\' and the year of issuance \'2017\'. At the centre is the mintmark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 559,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_16-min.png',
    periodStartDate: '2017-07-01',
    quantity: 1_500_000,
    description:
        'Estonia\'s Independence. The coin features the sinuous trunk of an oak tree where on one side there are depicted the branches and on the other side the leaves. The branches symbolize the time of revolutions and hardships from which the road to Estonia\'s Independence was paved. The leaves symbolize the strength, achievements and longevity of Estonia. At the bottom left side of the trunk there is the word \'MAAPÄEV\' (Provisional Assembly of Estonia) and above that the year \'1917\'. At the bottom right side there is the name of the issuing country \'EESTI\' and below that the year of issuance \'2017\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 560,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_17-min.png',
    periodStartDate: '2017-07-01',
    quantity: 750_000,
    description:
        '60 years in memoriam of Nikos Kazantzakis. The design features a profile portrait of Nikos Kazantzakis, one of Greece\'s greatest 20th century writers. Inscribed along the inner circle, at the left, is the wording \'HELLENIC REPUBLIC\' and the name \'NIKOS KAZANTZAKIS\' (in Greek). At the top is the year of issuance \'2017\' and at centre left a palmette (the mint mark of the Greek Mint). Also visible at lower right is the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 561,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_18-min.png',
    periodStartDate: '2017-07-01',
    quantity: 750_000,
    description:
        'Archaeological site of Philippi. The design features part of Basilica B and linear motifs inspired by a border pattern from an ancient Greek mosaic discovered at the site. Inscribed along the inner circle is the wording \'ARCHAEOLOGICAL SITE OF PHILIPPI\' and \'HELLENIC REPUBLIC\' (in Greek). Also inscribed in the background is the year of issuance \'2017\' and to the right a palmette (the mint mark of the Greek Mint). Visible at the lower left is the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 562,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_19-min.png',
    periodStartDate: '2017-07-01',
    quantity: 520_000,
    description:
        '150 Years of Public Security. The design shows human figures and buildings, symbolic representations of citizens and cities, where the public security is mainly assured and the simplified police symbol. The legends include the year \'1867\' and the year of issue \'2017\', the country of issue \'PORTUGAL\', the subject of commemoration (\'SEGURANÇA PÚBLICA\' – Public Security), the three main issues related to citizenship (\'DIREITOS\', \'LIBERDADES\' e \'GARANTIAS\' – Rights, Freedoms and Warranties), and the author\'s name JOSÉ DE GUIMARÃES. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 563,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_20-min.png',
    periodStartDate: '2017-06-01',
    quantity: 105_000,
    description:
        '1950th anniversary of the martyrdom of Saint Peter and Saint Paul. The design features Saint Peter and Saint Paul and their symbols, respectively the keys and the sword. At the top is the inscription \'CITTÀ DEL VATICANO\', in semi-circle. At the bottom, in semi-circle is the inscription \'1950o DEL MARTIRIO DEI SANTI PIETRO E PAOLO\'. At the bottom left is the year of issuance \'2017\' and at the bottom right is the mint mark \'R\'. Between them is the name of the artist \'G. TITOTTO\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 564,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_21-min.png',
    periodStartDate: '2017-06-01',
    quantity: 405_000,
    description:
        'Unesco World Heritage Site: Maltese prehistoric temples of Hagar Qim. The coin depicts the prehistoric temples of Hagar Qim. At the top right the inscriptions \'HAGAR QIM\', \'TEMPLES\' and the years \'3600-3200 BC\' one under the other. At the bottom left the name of the country of issuance \'MALTA\' and underneath the year of issuance \'2017\'. At the bottom right the initials \'NGB\' of the artist Noel Galea Bason. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 565,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_22-min.png',
    periodStartDate: '2017-04-01',
    quantity: 2_500_000,
    description:
        'Independent Finland 100 years. The inner part of the coin has a mosaic design, with the more sparsely set pieces on the right forming a cartographic likeness of Finland. The text \'SUOMI FINLAND\', the year of independence \'1917\' and the year of issuance \'2017\' are placed vertically one below another at the left. In the middle right is the indication of the issuing country \'FI\' and the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 566,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_23-min.png',
    periodStartDate: '2017-04-01',
    quantity: 1_500_000,
    description:
        'Bimillenary of the death of Titus Livius. Bust of the Roman historian Titus Livius, taken from a work by Lorenzo Larese Moretti; on the left the logo of the Italian Republic \'RI\', and \'C.M.\' initials of the author Claudia Momoni; on the right \'17\' and \'2017\', respectively year of the death of Livius and year of the issue of the coin, and the mintmark of the Mint of Rome \'R\'; around circle of dots and the inscription \'TITO • LIVIO\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 567,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_24-min.png',
    periodStartDate: '2017-04-01',
    quantity: 200_000,
    description:
        '200th anniversary of the University of Liège. The inner part of the piece represents the logo of the University of Liege, with the dates 1817 — 2017 below, surrounded by the inscription 200 ANS UNIVERSITE DE LIEGE — 200 YEARS UNIVERSITY OF LIEGE and the country indication BE. The mintmark of Brussels, a helmeted head of the Archangel Michael and the mint directors\' mintmark, the coat of arms of the municipality Herzele, are located respectively on the right and left of the country indication. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 568,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_25-min.png',
    periodStartDate: '2017-03-01',
    quantity: 80_000,
    description:
        '750th anniversary of the birth of Giotto. On the left a detail from the clock tower of Santa Maria del Fiore in Florence, one of Giotto\'s architectural works; vertically, the words SAN MARINO, GIOTTO and the dates 1267-2017; on the right a detail from the portrait of Giotto and the abbreviation of the artist Luciana De Simoni (LDS); on the bottom, the letter R, indicating the \'Zecca\' (mint) of Rome. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 569,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_26-min.png',
    periodStartDate: '2017-02-01',
    quantity: 4_000_000,
    description:
        'Unesco\'s World Cultural and Natural Heritage Sites – Churches of the Kingdom of Asturias. The design depicts in the foreground Santa Maria del Naranco Church. At the top of the inner circle and in circular sense is the name of the issuing country \'ESPAÑA\' and underneath, to the right, the year of issuance \'2017\'. At the left side of the inner circle is the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 570,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_27-min.png',
    periodStartDate: '2017-02-01',
    quantity: 30_000_000,
    description:
        'Rhineland-Palatinate (\'Federal States\' (Bundesländer) series). The design shows the Porta Nigra in Trier which is probably the best-preserved Roman city gate north of the Alps. The inner part also features the name \'RHEINLAND-PFALZ\' and the issuing country\'s code \'D\' at the bottom. The mint mark of the respective mint (\'A\', \'D\', \'F\', \'G\' or \'J\') appears at the left and the year \'2017\' appears at the top. At the right, the initials of the designer \'CH\' (Chocola Frantisek). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 571,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_28-min.png',
    periodStartDate: '2017-01-01',
    quantity: 1_000_000,
    description:
        'The 550th anniversary of the University Istropolitana. The design shows the figure of a teacher and two students positioned before the facade of the building of the former Universitas Istropolitana in Bratislava. In the upper left of the design is a medallion of King Matthias Corvinus, the founder of the university. Above the medallion is the inscription \'1467\', the year in which the university was opened. The country of issuance \'SLOVENSKO\' appears at the base of the inner circle, above the year of issuance \'2017\'. Along the left edge of the inner circle is the inscription \'UNIVERZITA\', and along the right edge \'ISTROPOLITANA\'. In the lower left of the design is the mint mark of the Kremnica Mint (Mincovňa Kremnica), consisting of the initials \'MK\' placed between two dies. Below the mint mark are the stylised letters \'MP\', the initials of the designer, Mária Poldaufová. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 572,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_29-min.png',
    periodStartDate: '2017-01-01',
    quantity: 1_000_000,
    description:
        'The 10th anniversary of the euro in Slovenia. The design shows 10 flying swallows which form a circle. At the lower half, in semi-circle, the inscription \'10 LET SKUPNE EVROPSKE VALUTE\'. At the top left the inscription \'SLOVENIJA 2017\'. Between the isncriptions is engraved a dot. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 573,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_30-min.png',
    periodStartDate: '2017-01-01',
    quantity: 10_000_000,
    description:
        'Centenary of Auguste Rodin. For the 100th anniversary of his passing away, Monnaie de Paris pays tribute to the illustrious French sculptor Auguste Rodin. Born in 1840, he is one of the major icons of the realistic style. His works such as The Thinker, The Kiss, The Hell\'s Door or The Calais\' Bourgeois remain timeless masterpieces of the world sculpture. The design represents Auguste Rodin and The Thinker, his best known work, like forehead to forehead. The RF mention standing for République Française is drawn as sculpted on the top of the coin. The name of the artist \'A. Rodin\' and the relevant dates \'1917-2017\' are inscribed in his beard. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 574,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_31-min.png',
    periodStartDate: '2017-01-01',
    quantity: 500_000,
    description:
        'The 50th anniversary of the voluntariness of the Luxembourg army. The design shows on the right hand the effigy of His Royal Highness, the Grand-Duke Henri, looking to the right and on the left hand the text \'50 Joer Fräiwëllegen-Arméi\' composed as logo. At the top of the design is depicted the year-date \'2017\', flanked by the mintmark and the initials of the Mintmaster. At the bottom appears the name of the issuing country \'LËTZEBUERG\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 575,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2017/2017_32-min.png',
    periodStartDate: '2017-01-01',
    quantity: 1_500_000,
    description:
        '400th Anniversary of the completion of the Basilica of San Marco in Venice. Façade of the Basilica of San Marco in Venice; in the exergue the dates \'1617\' and \'2017\', respectively year of the completion of the Basilica and year of the issue of the coin, beside the logo of the Italian Republic \'RI\'; below the inscription \'SAN MARCO\'; on the right \'LDS\', initials of the author Luciana De Simoni; on the top the inscription \'VENEZIA\', and the mintmark of the Mint of Rome \'R\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),

  // 2018 -------------------------------------------------------------
  CoinModel(
    id: 576,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_01-min.png',
    periodStartDate: '2018-11-01',
    quantity: 75_000,
    description:
        '70 years of the Universal Declaration of Human Rights. The design of the coin depicts seven staircases (representing the seven parishes or administrative divisions of Andorra) in the shape of mountains that lead to the valley, where there is the name of the issuing country \'ANDORRA\' and the year of issue \'2018\'. These staircases are, at the same time, the branches of a tree symbolizing humankind, of which Andorra is an integral part. 30 leaves come out of the branches of this tree representing the 30 articles of the Universal Declaration of Human Rights. The Catalan inscription \'70 ANYS DE LA DECLARACIÓ UNIVERSAL DELS DRETS HUMANS\' (70 years of the Universal Declaration of Human Rights) surrounds the design, strengthening this commemorative event. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 577,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_02-min.png',
    periodStartDate: '2018-11-01',
    quantity: 320_000,
    description:
        'Cultural Heritage. The design was created by a school student and depicts a variety of themes intrinsic to Maltese heritage including: an allusion to the prehistoric temples, which are the world\'s oldest free-standing structures, a church dome and spire, which is a characteristic feature of the Maltese town and village skyline and a representation of a traditional Maltese boat carrying a Maltese flag. The name of the issuing country \'Malta\' is at the top of the inner circle of the coin and the year \'2018\' at the bottom. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 578,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_03-min.png',
    periodStartDate: '2018-10-01',
    quantity: 1_000_000,
    description:
        'Finnish sauna culture. The design shows a Finnish landscape with a typical Finnish lakeside sauna placed in the centre. The year of issuance \'2018\' is placed at the centre bottom. The indication of the issuing country \'FI\' is at the centre left and the mint mark at the centre right. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 579,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_04-min.png',
    periodStartDate: '2018-10-01',
    quantity: 260_000,
    description:
        'The 50th anniversary of the ESRO 2B satellite. The design shows the ESRO 2B satellite, the first successful satellite of the European Space Research Organization and launched in May 1968, circling around planet Earth. The ESRO 2B, also renamed as \'IRIS\' (International Radiation Investigation Satellite) once in orbit, was concentrated on solar X-rays, cosmic radiation and Earth\'s radiation belts. The mintmark of Utrecht (the Mercury\'s wand) is located on the bottom together with the Belgian mint master mark, the coat of arms of the municipality Herzele, the country code BE and the initials LL referring to the designer of the coin, Mr Luc Luycx. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 580,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_05-min.png',
    periodStartDate: '2018-10-01',
    quantity: 101_000,
    description:
        '50th Anniversary of the death of Padre Pio. The design features the right profile of a portrait of Padre Pio. At the top, from left to right, in semi-circle is the inscription of the issuing country \'CITTÀ DEL VATICANO\'. At the bottom is the inscription \'Padre Pio\' and at its right the mint mark \'R\'. At the left hand of the design is the year \'1968\' and at the right is the year of issuance \'2018\'. At the bottom left is the name of the artist \'P.DANIELE\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 581,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_06-min.png',
    periodStartDate: '2018-10-01',
    quantity: 750_000,
    description:
        'Kostis Palamas – 75 years in memoriam. The design features a portrait of the Greek poet Kostis Palamas (1859-1943). Inscribed along the inner edge at left is the wording \'HELLENIC REPUBLIC\' and the name \'KOSTIS PALAMAS\' (in Greek). Also inscribed is a palmette (the mintmark of the Greek Mint) and the year of issuance \'2018\'. Visible at the lower right is the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 582,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_07-min.png',
    periodStartDate: '2018-10-01',
    quantity: 750_000,
    description:
        '70 years since the union of the Dodecanese. The design features in the central part a rose, the canting badge of Rhodes, inspired from a coin minted by the ancient city of Rhodes, one of the most characteristic coins of the Dodecanese, with stylised waves fanning out from the centre. Inscribed along the inner edge is the wording \'1948-2018 THE UNION OF THE DODECANESE WITH GREECE\' and \'HELLENIC REPUBLIC\' (in Greek). Also visible at left is a palmette (the mintmark of the Greek mint) and, at right, the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 583,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_08-min.png',
    periodStartDate: '2018-09-01',
    quantity: 512_000,
    description:
        'Zemgale. The design shows the coat of arms of the region of Zemgale. At the top, the name of the issuing country \'LATVIJA\' and at the bottom the inscription \'ZEMGALE\'. At the right hand side, the year of issuance \'2018\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 584,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_09-min.png',
    periodStartDate: '2018-09-01',
    quantity: 500_000,
    description:
        'The 175th anniversary of the death of the Grand Duke Guillaume Ist. The design shows on the right hand the effigy of His Royal Highness, the Grand Duke Henri, looking to the left and on the left hand the effigy of HRH the Grand Duke Guillaume Ist. Between both effigies are depicted vertically the year-dates \'1772-1843\' as well as the name \'Guillaume Ier\'. At the bottom appears the text \'LUXEMBOURG\' and the year-date \'2018\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 585,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_10-min.png',
    periodStartDate: '2018-09-01',
    quantity: 6_051_000,
    description:
        '420th anniversary of the birth of Gian Lorenzo Bernini. The centre of the coin features a detail from Bernini\'s sculpture \'Bust of Costanza Bonarelli\', and the dates \'1598-2018\'; at the edge, on the left is the inscription \'SAN MARINO\', on the right the inscription \'BERNINI\', the letter \'R\' identifying the Mint of Rome and the initials of the artist Annalisa Masini \'A.M.\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 586,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_11-min.png',
    periodStartDate: '2018-07-01',
    quantity: 320_000,
    description:
        'Unesco World Heritage Site — Temples of Mnajdra. The design features the Maltese prehistoric temples of Mnajdra, a Unesco World Heritage Site. Mnajdra is a prehistoric site consisting of three temples nestled around an oval forecourt. It is situated on the Southern coast of Malta, some 500 meters away from Hagar Qim. Mnajdra is best known for its astronomical alignments and the South temple seems to have been constructed to mark the sunrise on the equinox and the solstice. The Oldest parts of this complex date around 3 600-3 200 BC. At the top right of the design there are the inscriptions \'MNAJDRA\', \'TEMPLES\' and the years \'3 600-2 500 BC\', one underneath the other. At the bottom left there is the name of the issuing country \'MALTA\' and underneath there is the year of issuance \'2018\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 587,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_12-min.png',
    periodStartDate: '2018-07-01',
    quantity: 520_000,
    description:
        '250 years of the Ajuda Botanical Garden (\'Jardim Botânico da Ajuda\'). The design shows a very old Dracaena tree that is in the Ajuda Botanical Garden premises and is a symbol of the garden. The Ajuda Botanical Garden is a Technological Support Unit of the Agronomy University. It plays the role of an infrastructure for education and research but is also open to the public. It was the first botanical garden in Portugal projected to preserve, study and collect the most numerous possible species from the plant world. At the top of the design, from left to right, in semi-circle, there is the inscription \'250 ANOS JARDIM BOTÂNICO DA AJUDA\'. At the bottom, from left to right, in semi-circle, there is the inscription \'PORTUGAL 2018\'. Right underneath the image of the tree, at the left side, there are the initials of the artist \'J. FAZENDA\' and at the right side the mintmark \'INCM\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 588,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_13-min.png',
    periodStartDate: '2018-06-01',
    quantity: 16_000,
    description:
        'François Joseph Bosio. The design shows Mr BOSIO and a statue as the background image. The inscription \'MONACO\' is at the top of the image in semi-circle. At the bottom, in semi-circle as well, there are two inscriptions: \'FRANÇOIS-JOSEPH BOSIO\' and underneath \'1768 – SCULPTEUR – 2018\'. At the left and right sides of these two inscriptions, there are the mintmark and the mint master mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 589,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_14-min.png',
    periodStartDate: '2018-05-01',
    quantity: 520_000,
    description:
        '250 years of the Official Printing Works (\'Imprensa Nacional\'). The design displays the inscription \'1768-2018 IMPRENSA NACIONAL DUZENTOS E CINQUENTA 250 ANOS PORTUGAL MMXVIII\' as if the letters and numbers were books displayed in a library. At the bottom of the inner ring there is the name of the artist \'Eduardo Aires\' at the left side and the mintmark \'INCM\' at the right side. The Official Printing Works are responsible with the publication of the Portuguese Official Journal containing all the legislative activity of the country, books of the highest cultural relevance, and other cultural activities. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 590,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_15-min.png',
    periodStartDate: '2018-05-01',
    quantity: 260_000,
    description:
        'The 50th anniversary of May 1968 events in Belgium. The design represents students with a pamphlet and flag in their hands and refers to student demonstrations that took place in Belgium in connection with the sociocultural changes of May 1968. It was an important national event that shaped Belgium\'s national politics and influenced subsequent Government reforms, now 50 years ago. The mintmark of Utrecht (the Mercury\'s wand) is located on the left together with the Belgian mint master mark (the coat of arms of the municipality Herzele). The year mark 2018 and the country code BE are located at the left as well, just like the initials LL of the designer of the coin, Mr Luc Luycx. An auditorium marks the back, which is a reference to students. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 591,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_16-min.png',
    periodStartDate: '2018-05-01',
    quantity: 15_000_000,
    description:
        'Simone Veil. The design displays a portrait of Simone Veil, an icon in the combat for women\'s rights. Simone Veil, born Jacob, left us in June 2017 at the age of 89. After surviving deportation to Auschwitz, she went on to become one of the most important actors in Europe\'s building. She was the first elected president of the European Parliament from 1979 to 1982. She symbolizes the depenalization of abortion she fought for with the law bearing her name voted in 1975. In 2008, she is elected at the French Academy. Her deportation registration number appears on her collar. The background depicts the European Parliament on which her name, key dates, indication of the country \'RF\', year of issuance \'2018\' and the mintmarks are inscribed. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 592,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_17-min.png',
    periodStartDate: '2018-05-01',
    quantity: 101_000,
    description:
        'European Year of Cultural Heritage — The Laocoön group. The design features the Statue of Laocoön and His Sons, also called the Laocoön Group, a fundamental work of the world sculpture, foundational for the Vatican Museums. At the center bottom, the inscription of the issuing country \'Città del VATICANO\'. From left to right, in semi-circle, the inscription \'ANNO EUROPEO DEL PATRIMONIO CULTURALE\'. At the top right the year of issuance \'2018\' and the mintmark \'R\'. At the bottom right the name of the artist \'D. LONGO\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 593,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_18-min.png',
    periodStartDate: '2018-04-01',
    quantity: 60_500,
    description:
        '500th anniversary of the birth of Tintoretto. The centre of the coin depicts a detail from Tintoretto\'s painting \'The Visitation\' (the embrace between the Virgin Mary and Elizabeth), and the dates \'1518-2018\'; at the edge: \'SAN MARINO\' written above, and \'Tintoretto\' below; on the left are the initials of the artist Luciana de Simoni \'LDS\' and the letter \'R\' identifying the Mint of Rome. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 594,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_19-min.png',
    periodStartDate: '2018-04-01',
    quantity: 1_000_000,
    description:
        'Finnish national landscape Koli. The design shows a drawing from the top of the Finnish national landscape Koli. The year of issuance \'2018\' is placed at the center bottom. The indication of the issuing country \'FI\' is at the center left and the mint mark at the center right. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 595,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_20-min.png',
    periodStartDate: '2018-04-01',
    quantity: 500_000,
    description:
        'Lithuanian Song and Dance celebration (inscribed on the Unesco Representative List of the Intangible Cultural Heritage of Humanity). The design features stylised figures of people and birds, typical of one of the Lithuanian folk art genres — paper cuttings, symbolic of folk dance and song. The inscription of the issuing country \'LIETUVA\' is at the center bottom, the year of issuance \'2018\' is at the left hand side and the mark of the Lithuanian Mint is at the right hand side. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 596,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_21-min.png',
    periodStartDate: '2018-04-01',
    quantity: 1_000_000,
    description:
        'Slovenia World Day of Bees. In the middle of the inner ring of the coin is the image of honeycomb in a form of a globe, which shows the eastern hemisphere. Around the honeycomb on the left upper side is the inscription \'SVETOVNI DAN ČEBEL\', and on the lower right side the inscription \'SLOVENIJA 2018\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 597,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_22-min.png',
    periodStartDate: '2018-03-01',
    quantity: 3_000_000,
    description:
        'The 60th Anniversary of the establishment of the Italian Ministry of Health. The design shows an allegorical representation of Health with some symbols of the activities of the Ministry: Environment, Research, Nutrition and Medicine. On the left the logo \'RI\', acronym of the Italian Republic; above the mintmark of the Mint of Rome \'R\'; at the base of the female figure the initials of the author Silvia Petrassi. From left to right, in semi-circle, the inscription \'MINISTERO DELLA SALUTE\' and the dates \'1958-2018\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 598,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_23-min.png',
    periodStartDate: '2018-02-01',
    quantity: 400_000,
    description:
        'The 50th anniversary of King FELIPE VI. The design reproduces King Felipe VI\'s coat of arms. On the left hand side, in semi-circle, is the word \'ESPAÑA\' and below the year of issuance 2018. At the bottom right, in semi-circle, is the inscription \'50 ANIVERSARIO DE S.M. FELIPE VI\'. The mint mark is represented at the top right. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 599,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_24-min.png',
    periodStartDate: '2018-02-01',
    quantity: 300_000,
    description:
        'UNESCO\'s World Cultural and Natural Heritage Sites - Santiago. The City of Santiago de Compostela was declared World Cultural Heritage by UNESCO in 1985, considering its urban beauty and monumental integrity added to the deep echoes of its spiritual and cultural significance of the Middle Ages: the Camino de Santiago Pilgrimage. The Camino de Santiago (The Way of St. James) is a large network of ancient pilgrim routes stretching across Europe and coming together at the tomb of St. James in Santiago de Compostela in north-west Spain. The design reproduces the sculpture of Santiago as a central figure in the canvas of the Puerta Santa of Santiago de Compostela Cathedral. On the left hand side, in semi-circle, is the word "ESPAÑA", at the bottom left the year of issuance "2018" and underneath the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 600,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_25-min.png',
    periodStartDate: '2018-01-01',
    quantity: 75_000,
    description:
        '25th anniversary of the Andorran Constitution. The design depicts the \'Monument to the Men and Women of Andorra who launched the Constitution\', which stands in the square of the Consell General (Andorra\'s Parliament). This monument shows the silhouettes of a man and a woman and commemorates the will expressed by the Andorran citizenry, in the referendum held on 14 March 1993, to become a constitutional state, democratic and social, as expressed in article 1 of the Constitution. To the right of the monument there is the map of Andorra with the Latin inscription \'VIRTVS VNITA FORTIOR\' (virtue united is stronger) inside, which is the state motto of the Principality of Andorra. Surrounding the design there are the inscriptions \'25è ANIVERSARI DE LA CONSTITUCIÓ 1993-2018\' (25th anniversary of the Constitution 1993-2018) and the name of the country \'ANDORRA\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 601,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_26-min.png',
    periodStartDate: '2018-01-01',
    quantity: 1_000_000,
    description:
        'Estonia, Latvia and Lithuania jointly issued a commemorative euro coin with a common design in 2018, celebrating the establishment of the States of Estonia and Latvia and the re-establishment of the State of Lithuania. The three Baltic States are symbolically represented as a braid. They are united by their history: a common past, present and future. A stylised numeral representing the 100th anniversary, and the heraldic signs of all three States, are featured as well. At the left side is the name of the issuing country \'LIETUVA\' and the mint mark and at the right side is the year of issuance \'2018\' and the mark of the designer \'JP\'. The design was selected by public voting in all three Baltic countries. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 602,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_27-min.png',
    periodStartDate: '2018-01-01',
    quantity: 512_000,
    description:
        'Estonia, Latvia and Lithuania jointly issued a commemorative euro coin with a common design in 2018, celebrating the establishment of the States of Estonia and Latvia and the re-establishment of the State of Lithuania. The three Baltic States are symbolically represented as a braid. They are united by their history: a common past, present and future. A stylized numeral representing the 100th anniversary, and the heraldic signs of all three States, are featured as well. At the left side is the name of the issuing country \'LATVIJA\' and at the right side is the year of issuance \'2018\'. The design was selected by public voting in all three Baltic countries. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 603,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_28-min.png',
    periodStartDate: '2018-01-01',
    quantity: 500_000,
    description:
        'Estonia, Latvia and Lithuania jointly issued a commemorative euro coin with a common design in 2018, celebrating the establishment of the States of Estonia and Latvia and the re-establishment of the State of Lithuania. The three Baltic States are symbolically represented as a braid. They are united by their history: a common past, present and future. A stylised numeral representing the 100th anniversary, and the heraldic signs of all three States, are featured as well. At the left side is the name of the issuing country \'EESTI\' and at the right side is the year of issuance \'2018\'. The design was selected by public voting in all three Baltic countries. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 604,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_29-min.png',
    periodStartDate: '2018-01-01',
    quantity: 1_000_000,
    description:
        'The centennial of the independence of Estonia. The design depicts simultaneously the numbers 18 and 100, which symbolize the time when Estonia became an independent country and furthermore reflect the past hundred years. At the bottom right is the text \'SADA AASTAT EESTI VABARIIKI\' and next to it the name of the country \'EESTI\' and the year of issuance \'2018\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 605,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_30-min.png',
    periodStartDate: '2018-01-01',
    quantity: 30_000_000,
    description:
        'The 100th birthday anniversary of the great German statesman and Chancellor Helmut Schmidt (1918-2015). The design portrays Helmut Schmidt in a characteristic pose as he engages in dialogue with his interlocutor. In semi-circle at the top right the inscription \'HELMUT SCHMIDT\' and at the right side the years \'1918-2015\'. The mint mark of the respective mint appears underneath the years. At the left side is the code of the issuing country \'D\' and underneath is the year of issuance \'2018\'. At the bottom there are the initials of the artist. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 606,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_31-min.png',
    periodStartDate: '2018-01-01',
    quantity: 15_000_000,
    description:
        'Remembrance cornflower (Bleuet de France). For 100 years, the cornflower (Bleuet de France) has been the flower of remembrance and solidarity in France. It started as a means of helping injured veterans of the First World War, but before long had been adopted by the whole French nation as a symbol of gratitude for the sacrifices the soldiers had made to defend their country and their ideals. Today, as in the past, the cornflower still provides moral and financial support to veterans and victims of wars past and The design features the cornflower in the centre of the coin. It is surrounded by the words ‘Le Bleuet de France, fleur de mémoire et de solidarité’ (Bleuet of France, flower of remembrance and solidarity). The dates ‘1918-2018’ as well as the letters RF for République Française (French Republic) and the mint marks are also included in the design. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 607,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_32-min.png',
    periodStartDate: '2018-01-01',
    quantity: 4_000_000,
    description:
        'The 70th Anniversary of the Coming into Force of the Italian Constitution. Enrico De Nicola, provisional Head of State, signs the act of promulgation of the Constitution of the Italian Republic on December 27, 1947; on his right, the Head of Government Alcide De Gasperi, on the left, Umberto Terracini, President of the Italian Constituent Assembly. Above, the inscription ‘COSTITUZIONE’ and the monogram of the Italian Republic ‘RI’; in exergue, the inscription ‘CON SICURA COSCIENZA’, ‘R’, the mintmark of the Mint of Rome, and the dates ‘1948 • 2018’, respectively year of the coming into force of the Italian Constitution and year of the issue of the coin. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 608,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_33-min.png',
    periodStartDate: '2018-01-01',
    quantity: 1_000_000,
    description:
        'The 25th anniversary of the establishment of the Slovak Republic. The design symbolises Slovakia’s entry into the European Union and the euro area by showing a stylised portal arching over both a map of Slovakia and a euro symbol surrounded by the European Union stars, some covered by the map. The Slovak coat of arms appears on the left of the design. At the lower left side, in semi-circle is the name of the issuing country ‘SLOVENSKÁ REPUBLIKA’. The date of the country’s establishment ‘1.1.1993’ and the year of issuance ‘2018’ appear, one above the other, below the right side of the map. Between the map and the date are the mint mark of the Kremnica Mint (Mincovňa Kremnica), consisting of the initials ‘MK’ placed between two dies, and the stylised letters ‘PK’, the initials of the designer, Pavel Károly. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 609,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_34-min.png',
    periodStartDate: '2018-01-01',
    quantity: 500_000,
    description:
        'The 150th anniversary of the Luxembourg Constitution. The design shows on the left hand the effigy of His Royal Highness, the Grand-Duke Henri, looking to the right. At the right hand of the design are depicted the year-dates ‘1868-2018’ as well as the text ‘150 ans’. Below the effigy of the Grand-Duke appear the text ‘Constitution du Grand-Duché de Luxembourg’ and a lateral cut view of an open booklet. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 610,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_35-min.png',
    periodStartDate: '2018-01-01',
    quantity: 30_000_000,
    description:
        "Berlin (‘Federal States’ (Bundesländer) series). The design shows the main building of the Charlottenburg Palace from the side of the Cour d' Honneur. The inner part also features the name ‘BERLIN’ and the mint mark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’) at the bottom, the issuing country's country code ‘D’ right at the top, the year ‘2018’ left at the top and the engraver's mark left at the bottom. The coin’s outer ring bears the 12 stars of the European Union.",
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 611,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2018/2018_36-min.png',
    periodStartDate: '2018-01-01',
    quantity: 18_100_100,
    description:
        '100 years of the Austrian Republic. The design depicts the statue of Pallas Athena in front of the Greek-style building of the Austrian Parliament in Vienna. The goddess of wisdom serves as a symbol of the Austrian parliamentarism and stands for knowledge, reason and strategic talent. At the left side is the year ‘2018’ and underneath the text ‘100 JAHRE’ (100 YEARS). The text ‘REPUBLIK ÖSTERREICH’ (AUSTRIAN REPUBLIC) is inscribed at the bottom right in semi-circle. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.AUSTRIA,
  ),

  // 2019 -------------------------------------------------------------
  CoinModel(
    id: 612,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_01-min.png',
    periodStartDate: '2019-10-01',
    quantity: 60_000,
    description:
        '600 years of the Council of the Land. The design commemorates the 600th anniversary of the creation of the Consell de la Terra (Council of the Land). It was a representative body created in 1419, predecessor of the Consell General (General Council), the parliament of Andorra. The design depicts the upper part of the entry portal of Casa de la Vall (the parliament\'s old seat), with the coat of arms of the country and a fragment of a window above it. Two compact groups of human faces on both sides of the design, as if they were stones of the building, mean the cohesion of Andorrans as a social community united in history, institutions and values. The inscription \'600 ANYS DEL CONSELL DE LA TERRA\' (600 years of the Council of the Land) at the top, and the name of the issuing country \'ANDORRA\' and both year dates \'1419\' and \'2019\' in the middle of the number \'600\' below complete the design. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 613,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_02-min.png',
    periodStartDate: '2019-11-01',
    quantity: 1_000_000,
    description:
        'The centenary of the University of Tartu. The coin will mark the centenary of the University of Tartu as being established as the first Estonian language university. It was founded in 1632 by Swedish King Gustav II Adolf and is one of the oldest universities in northern and eastern Europe. In 1919 it became the first Estonian language university. The design depicts a motif of the main building of the university. It also bears the inscriptions \'RAHVUSÜLIKOOL 100\' (National University 100) and \'UNIVERSITAS TARTUENSIS\', the year \'1632\', the issuing country \'EESTI\' and the year of issuance \'2019\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 614,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_03-min.png',
    periodStartDate: '2019-10-01',
    quantity: 1_000_000,
    description:
        'The 100th anniversary of the foundation of the University of Ljubljana. The University of Ljubljana\'s logo is the core of the design. On the left side the University\'s façade above the solid square of its logo is replaced with the inscription \'100 LET UNIVERZE V LJUBLJANI\'. The design\'s background is textured in order to achieve a larger impact of the inscription with the solid square. On the lower part of the right side is the inscription \'SLOVENIJA 2019\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 615,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_04-min.png',
    periodStartDate: '2019-07-01',
    quantity: 500_000,
    description:
        'Sutartinės (Lithuanian multipart songs — inscribed on the Unesco Representative List of the Intangible Cultural Heritage of Humanity). The design features linear motifs, symbolising polyphonic melodies of the unique Lithuanian heritage — folk songs sutartinės. The lines are widening and narrowing again, spinning into a swirl decorated with various miniature geometric and nature figures. The inscription of the issuing country \'LIETUVA\', as well as the inscription \'SUTARTINĖS\' (Lithuanian multipart songs) and the year of issuance \'2019\' are depicted in semicircle. The mark of the Lithuanian Mint is featured as well. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 616,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_05-min.png',
    periodStartDate: '2019-07-01',
    quantity: 500_000,
    description:
        'Samogitia (Lithuanian Ethnographic Regions). The design features a bear standing on its hind legs, with a chain collar on the neck. It has been depicted on the coat of arms of Samogitia since the 16th century. The bear is situated against a shield topped with a crown, which is held by an armoured soldier (a symbol of courage, sacrifice and patriotism) and a goddess with an anchor (a symbol of hope). Below is a Latin inscription \'PATRIA UNA\' (one fatherland). The design is surrounded by the inscriptions \'LIETUVA\' (Lithuania) and \'ŽEMAITIJA\' (Samogitia), the year of issuance \'2019\' and the mintmark of the Lithuanian Mint. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 617,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_06-min.png',
    periodStartDate: '2019-07-01',
    quantity: 500_000,
    description:
        '600 years of the discovery of the Madeira Archipelago, by the Portuguese navigators Bartolomeu Perestrelo and Tristão Vaz. The event, known as the first Portuguese territorial discovery, marked a historic milestone in the consolidation of Portugal as a maritime power and gave rise to the Portuguese Age of Discoveries (1418-1522). The design bears the Madeira Archipelago and the island of Porto Santo. In semicircle are the inscriptions \'600 anos do Descobrimento da Madeira e do Porto Santo\' and \'PORTUGAL 2019\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 618,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_07-min.png',
    periodStartDate: '2019-07-01',
    quantity: 750_000,
    description:
        '500 years of the first circumnavigation organised and led by the Portuguese explorer and navigator Fernão De Magalhães. The Spanish expedition to the East Indies began in 1519 and ended in 1522, resulting in the first circumnavigation of the Earth. The design bears the effigy of Fernão de Magalhães. At the right side, in semicircle, is the inscription \'CIRCUM NAVEGAÇÃO\' (circumnavigation) and underneath the inscription \'1519 FERNÃO DE MAGALHÃES\'. At the left side, in semicircle, is the year of issuance \'2019\' and the name of the issuing country \'PORTUGAL\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 619,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_08-min.png',
    periodStartDate: '2019-10-21',
    quantity: 320_000,
    description:
        'Nature and Environment. The design was created by a school student and bears a fruit tree and a stylised representation of the sun. At the bottom left is the name of the issuing country \'MALTA\' and underneath the year of issuance \'2019\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 620,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_09-min.png',
    periodStartDate: '2019-10-01',
    quantity: 91_000,
    description:
        'Sistine Chapel — End of the restoration 1994-2019. The design features the Last Judgment in the Sistine Chapel. At the left, in semi-circle is the inscription of the issuing country \'CITTÀ DEL VATICANO\'. At the right, in semi-circle, are the inscriptions \'CAPPELLA SISTINA — FINE DEI RESTAURI\' and \'1994-2019\'. At the right side is the mintmark \'R\' and at the bottom the name of the artist \'D. LONGO\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 621,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_10-min.png',
    periodStartDate: '2019-10-01',
    quantity: 10_000_000,
    description:
        '30 years of the fall of the Berlin Wall. Thirty years ago, the Berlin Wall fell. Beyond the impact on German society, it was an event with global consequences. On November 9th, 1989, this occasion marks the end of the cold war and announces an appeasement after several decades of international tensions. At the European level, it is the first step towards the reunification of one of the leading countries of the European Union. This major change was after materialised by the Moscow Treaty of which France was a signatory. The European Union welcomed then 16 million new citizens in just one year; almost the structural and economic effect of welcoming a new country! The design represents the Berlin Wall, opened in its centre, letting the doves (allegories of the international appeasement), and the jubilant crowd pass. In the background, the Brandenburg Gate, Berlin\'s symbol par excellence, is represented. The mention \'30 ans de la chute du Mur de Berlin/30 Jahre Mauerfall\' is inscribed on one side of the wall. At the bottom of the design is the year of issuance \'2019\' and at its right the indication of the issuing country \'RF\' (standing for République française). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 622,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_11-min.png',
    periodStartDate: '2019-09-01',
    quantity: 30_000_000,
    description:
        'The 30th anniversary of the fall of the Berlin wall. Thirty years ago, the Berlin Wall fell. Beyond the impact on German society, it was an event with global consequences. On 9 November 1989, this occasion marks the end of the cold war and announces an appeasement after several decades of international tensions. At the European level, it is the first step towards the reunification of one of the leading countries of the European Union. This major change was later materialised by the Moscow Treaty of which France was a signatory. The European Union welcomed then 16 million new citizens in just one year; almost the structural and economic effect of welcoming a new country! The design represents the Berlin Wall, opened in its centre, letting the doves (allegories of the international appeasement), and the jubilant crowd pass. In the background, the Brandenburg Gate, Berlin\'s symbol par excellence, is represented. The mention \'30 Jahre Mauerfall\' (30 years of the fall of the Berlin Wall) is inscribed on one side of the wall. At the bottom of the design is the year of issuance \'2019\' and at its right the indication of the issuing country \'D\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 623,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_12-min.png',
    periodStartDate: '2019-09-01',
    quantity: 500_000,
    description:
        'The Constitution Act of Finland. The design shows three circular fields that are joined together at the centre. The three fields represent the trias politica, separation of powers into three different branches: a legislative, an executive, and a judiciary power. The year of issuance \'2019\' is placed centre left. The indication of the issuing country \'FI\' and the mint mark are placed bottom right. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 624,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_13-min.png',
    periodStartDate: '2019-09-01',
    quantity: 500_000,
    description:
        'The 100th anniversary of the universal suffrage. The design shows on the left hand the effigy of His Royal Highness, the Grand Duke Henri, and on the right hand a ballot box where a ballot paper is being inserted by a hand. At the bottom is the name of the issuing country \'LUXEMBOURG\'. At the top, in semi-circle form is the inscription \'Centenaire du suffrage universel\' (Centenary of the universal franchise) and underneath the inscription \'1919 - 2019\', the latter being the year of issuance. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 625,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_14-min.png',
    periodStartDate: '2019-07-01',
    quantity: 307_000,
    description:
        'The rising sun. The coin is dedicated to the history of the Coat of arms of Latvia and features the motif of a rising sun. This motif was originally part of the design proposal for the symbol of the autonomous Latvia, created by artist Ansis Cīrulis in 1917. Later on this motif emerged as one of the basic elements of the Coat of arms of Latvia. The motif of a rising sun has also been used by artist Ansis Cīrulis before, in the design of the Latvian riflemen\'s badge and his other artworks. After the foundation of the Republic of Latvia in 1918 variations of the motif of a rising sun appeared in all design proposals for the Coat of arms of the new State. The Coat of arms of Latvia was officially adopted in 1921. The design shows the motif of the rising sun, with stylised letters B and L (an abbreviation from the words \'Brīvā Latvija\' (Free Latvia)) in the centre. It also bears an inscription \'UZLECOŠĀ SAULE\' (The rising sun), the name of the issuing country \'LATVIJA\' and the year of issuance \'2019\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 626,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_15-min.png',
    periodStartDate: '2019-09-01',
    quantity: 60_500,
    description:
        '550th anniversary of the death of Filippo Lippi. The centre of the coin features the Madonna and Child, a detail from Filippo Lippi\'s \'Madonna and Child with Two Angels\'; above are the inscriptions \'SAN MARINO\' and \'FILIPPO LIPPI\' and on the left are the year \'1469\' and the letter \'R\' identifying the Mint of Rome. On the bottom left are the initials of the artist Maria Angela Cassol \'M.A.C.\', and in the centre the year \'2019\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 627,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_16-min.png',
    periodStartDate: '2019-07-01',
    quantity: 320_000,
    description:
        'Unesco World Heritage Site – pre-historic temples of Ta\' Haġrat. The design features Ta\' Haġrat, a prehistoric temple located in Mġarr, a small village in the northwest of Malta. The temple consists of two structures the largest of which dates to around 3 600-3 200 BC. This temple has a monumental doorway, which is its most distinctive characteristic. The inscription \'TA\'HAĠRAT TEMPLES 3600-3000 BC\' appears at the top of the design. At the bottom are the name of the issuing country \'MALTA\' and the year of issuance \'2019\'. The coin\'s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 628,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_17-min.png',
    periodStartDate: '2019-06-01',
    quantity: 1_000_000,
    description:
        'Song Festival\'s 150-year anniversary. The design is inspired by the Song Celebration procession, which moves like the waves on the sea with cheers of pride and joy and a panoply of national dress. The design unites music, national costumes, and the various sites of the great and powerful Song Celebration of the nation by the sea. The design also features the first notes of the Estonian national anthem and, at the bottom, the words \'Laulupidu 150\' (Song Celebration 150). At the top is the year of issuance \'2019\' and underneath the name of the issuing country \'EESTI\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 629,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_18-min.png',
    periodStartDate: '2019-06-01',
    quantity: 750_000,
    description:
        'Andreas Kalvos — 150 years in memoriam. Born in Zante, Andreas Kalvos (1792-1869) is one the most important modern Greek poets. Combining a solid neo-classicist education with the high ideals of Romanticism and archaicising with demotic Greek, he expressed both the revolutionary ideas of his time and his personal vision. The national side of the coin features a portrait of Andreas Kalvos. Inscribed along the inner edge at the left is the name \'ANDREAS KALVOS 1792-1869\', along with the minting year and a palmette (mintmark of the Greek Mint); inscribed along the inner edge at the right is the wording \'HELLENIC REPUBLIC\'. Also visible at the right is the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 630,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_19-min.png',
    periodStartDate: '2019-06-01',
    quantity: 750_000,
    description:
        'Centenary of the birth of Manolis Andronicos. Manolis Andronicos (1919-1992) was one of Greece\'s greatest archaeologists. His discovery of the royal tombs at Vergina in 1977 brought to light exquisite finds that attest to the splendour of ancient Macedonian civilisation. The design features a portrait of Manolis Andronicos. Inscribed along the inner edge at left is the name \'MANOLIS ANDRONICOS 1919-1992\', along with the minting year and a palmette (mintmark of the Greek Mint); inscribed along the inner edge at right is the wording \'HELLENIC REPUBLIC\'. Also visible at the right is the monogram of the artist (George Stamatopoulos). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 631,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_20-min.png',
    periodStartDate: '2019-06-01',
    quantity: 15_000,
    description:
        'The 200th anniversary of the accession to the throne of Prince Honoré V. The design shows the effigy of Prince Honoré V. At the left is the inscription \'HONORÉ V\' and at the right the name of the issuing country \'MONACO\'. At the bottom, in semi-circle, is the inscription \'1819 — Avènement — 2019\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 632,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_21-min.png',
    periodStartDate: '2019-05-01',
    quantity: 310_000,
    description:
        'The 60th anniversary of Asterix. For 60 years, Asterix has been a true icon of the French culture. Created in 1959 by scenarist René Goscinny and cartoonist Albert Uderzo, this character embodies the Frenchman with his smartness and sharpness through the Gallic identity. Apart from its artistic line, depicting contemporary society with humour has brought Asterix a great international fame for many years. Since its inception, it has been translated into all the languages of the European Union meeting a huge success. The reputation of Asterix is for example as strong in Germany as in France. It has also been very well established in the United Kingdom, the Netherlands, Spain, Portugal, Italy and Scandinavia for many years. Beyond the French icon, Asterix has become a true figure of the European 9th art. The design represents Asterix in profile wearing his famous winged helmet. He is surrounded by laurels and Roman inscriptions referring to his 60 years. At the top is the inscription \'ASTÉRIX\' and underneath the indication of the issuing country \'RF\' (standing for République française). The year of issuance \'2019\' is inscribed at the bottom, together with the French mintmark and mintmaster mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 633,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_22-min.png',
    periodStartDate: '2019-04-01',
    quantity: 1_000_000,
    description:
        'The 100th anniversary of the death of Milan Rastislav Štefánik. The design features a portrait of Milan Rastislav Štefánik, one of the most important figures in Slovak history. To the left of the portrait are the dates of Štefánik\'s birth \'1880\' and death \'1919\', one above the other. At the left side of the inner part of the coin, in semi-circle, are the name \'MILAN RASTISLAV ŠTEFÁNIK\' and the name of the issuing country \'SLOVENSKO\'. The year of issuance \'2019\' is between the portrait and the right side. Below the year are the stylised letters \'PV\', the initials of the designer, Peter Valach, and below them is the mint mark of the Kremnica Mint (Mincovňa Kremnica), consisting of the letters \'MK\' placed between two dies. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 634,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_23-min.png',
    periodStartDate: '2019-04-01',
    quantity: 60_500,
    description:
        '500th anniversary of the death of Leonardo da Vinci. The centre of the coin bears an angel painted by Leonardo da Vinci in \'The Baptism of Christ\'; at the edge, on the left is the inscription \'SAN MARINO\', on the right the inscription \'1519 Leonardo 2019\'; on the left are the initials of the artist Uliana Pernazza \'UP\' and on the bottom right, the letter \'R\' identifying the Mint of Rome. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 635,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_24-min.png',
    periodStartDate: '2019-03-01',
    quantity: 60_000,
    description:
        'Ski World Cup Finals 2019. The 2019 Ski World Cup Finals were held in the Principality of Andorra from 11 to 17 March 2019. With this event, the Principality of Andorra hosted one of the most important alpine skiing competitions in the world. For the Principality of Andorra, it was the most prestigious winter sport event that has ever been held in the country, and a turning point in the country\'s trajectory as a sport destination. The design of the coin shows in the foreground a skier sliding down a slope. In the background, four curved lines, from the official logo of these Ski World Cup Finals, represent the slopes where the competition took place. Some snowflakes complete the design together with the inscription \'FINALS DE LA COPA DEL MÓN D\'ESQUÍ ANDORRA 2019\' (Andorra 2019 Ski World Cup Finals). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 636,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_25-min.png',
    periodStartDate: '2019-03-01',
    quantity: 91_000,
    description:
        '90th anniversary of the foundation of the Vatican City State. The design features a portrait of Pope Pius XI (Sovereign of the State in 1929) and the Lateran in Rome. At the top, from left to right, in semi-circle is the inscription of the issuing country \'STATO DELLA CITTÀ DEL VATICANO\'. At the bottom are the years \'1929\' and \'2019\' and underneath the name of the artist \'FUSCO\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 637,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_26-min.png',
    periodStartDate: '2019-02-01',
    quantity: 1_000_000,
    description:
        'Unesco\'s World Cultural and Natural Heritage Sites — the old town of Avila and its churches outside the walls. The city of Avila has preserved the austerity and purity of the mediaeval style, surrounded by the most complete walls of Spain. The design reproduces at the centre a detail of the Avila wall. At the top side circular ascending the word \'ESPAÑA\', the year of issuance \'2019\' and the mint mark. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 638,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_27-min.png',
    periodStartDate: '2019-01-01',
    quantity: 1_000_000,
    description:
        '100 years since the establishment of the Dáil Éireann (Irish Parliament). The design bears the first sitting of Dáil Éireann in the Round Room. The Governance of the Irish nation began on the 21st of January and the sitting was conducted entirely in the Irish language to mark the symbolic nature of the meeting. The large Round Room of the Mansion House arcs above the vast congregation of the nation\'s first elected Dáil. The words \'An Chéad Dáil\', at the centre of the design, together with the year \'1919\' at the top, are inscribed in a traditional uncial font. At the bottom are inscribed the name of the country and the year of issuance \'ÉIRE 2019\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 639,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_28-min.png',
    periodStartDate: '2019-01-01',
    quantity: 30_000_000,
    description:
        'The 70th anniversary of the Bundesrat\'s founding. The design shows a highly detailed and finely sculpted rendering of the Bundesrat building. The upper half of the coin\'s inner section includes the mint mark of the respective mint (\'A\', \'D\', \'F\', \'G\' or \'J\'), the artist\'s initials and the year \'2019\'. The lower half of the coin\'s inner section contains the inscription \'BUNDESRAT\' and Germany\'s issuing country code \'D\'. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 640,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_29-min.png',
    periodStartDate: '2019-01-01',
    quantity: 3_000_000,
    description:
        'The 500th anniversary of the death of Leonardo da Vinci. The design shows a detail of the painting \'Dama con l\'ermellino\' (Lady with an Ermine) by Leonardo da Vinci (National Museum in Krakow). On the left, the inscription \'LEONARDO\', the initials of the author Maria Angela Cassol \'MAC\' and the logo \'RI\' acronym of the Italian Republic; on the right, \'R\', mintmark of the Mint of Rome and the dates \'1519-2019\', respectively the year of Leonardo\'s death and the year of the coin issuance. The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 641,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_30-min.png',
    periodStartDate: '2019-01-01',
    quantity: 500_000,
    description:
        'The 100th anniversary of the accession to the throne of Grand Duchess Charlotte. The design shows on the left hand the effigy of His Royal Highness, the Grand Duke Henri, and on the right hand the effigy of the Grand Duchess Charlotte. At the bottom is the name of the issuing country \'LUXEMBOURG\' and underneath the year of issuance \'2019\'. At the top, in semi-circle around the effigies is the inscription \'Centenaire de l\'accession au trône de la Grande-Duchesse Charlotte\' (Centenary of the accession to the throne of Grand Duchess Charlotte). The coin\'s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 642,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_31-min.png',
    periodStartDate: '2019-01-01',
    quantity: 155_000,
    description:
        'he 450th anniversary of the death of Pieter Bruegel the Elder. The inner part of the piece bears the portrait of the famous Belgian artist Pieter Bruegel the Elder, together with a painting on an easel. Above this, you can find the name P. BRUEGEL, the years 1569, with a subtle obelisk referring to the year of death, and 2019, the year of issuance. As the Royal Dutch Mint will strike the coins, the mintmark of Utrecht, a mercury staff is located on the left together with the Belgian mint director mintmark, the coat of arms of the municipality Herzele, the country code BE. The initials LL referring to the designer of the coin, Mr Luc Luycx, are located on the right. Finally, around the edge of the inner part small dots form a circle. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 643,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2019/2019_32-min.png',
    periodStartDate: '2019-01-01',
    quantity: 155_000,
    description:
        '5th anniversary of the European Monetary Institute (EMI). The inner part of the piece bears the portrait Alexandre Lamfalussy, the first president of the EMI, on the right with his name below. On the left-hand side, the abbreviation EMI stands central with the year 1994 above, referring to date of the establishment of the Institute and the designation of Lamfalussy as its first president. Below ‘EMI’, several coins are depicted falling on each other with the inscription €, ‘ECU’ and ‘BEF’ from top to bottom. Given the fact that this is a Belgian issuance, we have chosen for ‘BEF’, the abbreviation of our former national currency. The purpose of this representation is to symbolise the transition of the national currencies to an European single currency, the euro as the EMI’s main focus was on establishing the European System of Central Banks, including the ECB and the new currency On the upper part of the left side of the coin is an inscription ‘European Monetary Institute’. As the Royal Dutch Mint will strike the coins, the mintmark of Utrecht, a mercury staff is located on the left with the Belgian mint director mintmark, the coat of arms of the municipality Herzele. The country code BE and the year mark 2019 are located on the bottom. The initials LL referring to the designer of the coin, Mr Luc Luycx, are inscribed on the right. The coin’s outer ring bears the 12 stars of the European Union.',
    country: CountryNames.BELGIUM,
  ),

  // 2020 -------------------------------------------------------------
  CoinModel(
    id: 644,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_01-min.png',
    periodStartDate: '2020-12-01',
    quantity: 500_000,
    description:
        'The birth of Prince Charles. The design depicts Prince Charles along with his parents, Their Royal Highnesses the Hereditary Grand Duke Guillaume and Hereditary Grand Duchess Stephanie. The text "S.A.R. de Prënz Charles" and the date "10 May 2020" appear beneath the effigies. The country\'s name "LËTZEBUERG" is vertically placed on the left. The Grand Duke Henri\'s monogram (the letter ‘H’ with a crown) is featured. The outer ring includes the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 645,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_02-min.png',
    periodStartDate: '2020-11-01',
    quantity: 360_000,
    description:
        '730th anniversary of the University of Coimbra. The design portrays the University of Coimbra\'s tower along with visual triangles representing the university\'s roofs, including the Joanina Library. The inscriptions "UNIVERSIDADE DE COIMBRA 730 ANOS PORTUGAL 2020" complete the image. The outer ring includes the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 646,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_03-min.png',
    periodStartDate: '2020-11-01',
    quantity: 1_000_000,
    description:
        '20th anniversary of Slovakia’s accession to the Organisation for Economic Co-operation and Development (OECD). The upper right half of the national side design depicts a representation of the concept of digital humanism: printed circuits in the shape of a human brain, in the centre of which is a circle representing a microprocessor. The Slovak coat of arms is placed next to the lower right edge. Inscribed inside a square outline that partly overlaps the main image are the words ‘20. VÝROČIE’ and ‘VSTUP SR DO OECD’ (the 20th anniversary of Slovakia’s accession to the OECD). Below the square is the name of the issuing country ‘SLOVENSKO’ and the year of issuance ‘2020’, one above the other. Between the square and the left edge of the design is the mint mark of the Kremnica Mint (Mincovňa Kremnica), consisting of the letters ‘MK’ placed between two dies. Below the mint mark are the stylised letters ‘PV’ referring to the designer Peter Valach. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 647,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_04-min.png',
    periodStartDate: '2020-10-01',
    quantity: 412_000,
    description:
        'The 30th anniversary of the Cyprus Institute of Neurology and genetics. The design depicts a ‘neuron with its synapses’ in reference to the activities performed by the Cyprus Institute of Neurology and Genetics, which celebrates 30 years of existence. The Cyprus Institute of Neurology and Genetics receives international recognition and plays an active and essential role as a national, regional and international centre of excellence for the provision opf high quality services, innovative reasearch and postgraduate education. The iossuing country’s name ‘KYΠΡΟΣ - KIBRIS’ and the phrase ‘ΙΝΣΤΙTOYΤΟ ΝΕΥΡΟΛΟΓΊΑΣ & ΓΕΝΕΤΙKHΣ KYΠΡΟY 1990-2020’ (i.e. Cyprus Institute of Neurology and Genetics 1990-2020) are inscribed in circle around the design. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 648,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_05-min.png',
    periodStartDate: '2020-10-01',
    quantity: 500_000,
    description:
        'UNESCO Cultural Heritage - Kryžių Kalnas (the Hill of Crosses). The design depicts the Hill of Crosses: fragments of wooden and forged crosses, symbolising Lithuanian cross-crafting and folk culture. Cross-crafting and cross-symbolism in Lithuania are included in the UNESCO Representative List of the Intangible Cultural Heritage of Humanity. The inscriptions featured are: Lithuania’s name ‘LIETUVA’, the year of issue ‘2020’ on the top, ‘KRYŽIŲ KALNAS’ (the Hill of Crosses) and the mark of the Lithuanian Mint at the bottom. The design is realised by Rytas Jonas Belevičius. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 649,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_06-min.png',
    periodStartDate: '2020-09-01',
    quantity: 800_000,
    description:
        'Väinö Linna 100 years. The coin celebrates the well-known late Finnish writer Väinö Linna. This year marks the centenary of his birth in 1920. The design reflects Linna’s work in a textile mill and depicts, in addition to his face, letters as weaved fabric and threads that run through his books. The inscription VÄINÖ LINNA is at the left side. At the bottom are the inscriptions of the year of issuance ‘2020’, of the issuing country ‘FI’ and the mintmark. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 650,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_07-min.png',
    periodStartDate: '2020-10-01',
    quantity: 220_000,
    description:
        'Children’s games. The design depicts a melange of traditional games popular with Maltese children. These include marbles, spinning tops and traditional kite-making and flying. Depicted is also a Maltese version of hop-scotch which is known locally as ‘passju’. Three bees flying in a circle allude to a popular chant sung by Maltese children during play. Included in the design is the name of the issuing country, ‘Malta’, and the year of issue, ‘2020’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 651,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_08-min.png',
    periodStartDate: '2020-10-01',
    quantity: 30_000_000,
    description:
        'The 50th anniversary of Willy Brandt’s Kniefall von Warschau. The design shows Brandt, who was the chancellor of Germany at that time, keeling before the Monument to the Ghetto Heroes in Warsaw in a gesture of humility. Yhe Warsaw Ghetto Uprising of 1943 is evoked by the composition’s powerful imagery. Traced in extremely fine relief, the design pictures compelling symbols: a seven-branched menorah, the ghetto victims, as well as the genuflection. The inner part of the coin also features the artist’s initials (top), the mint mark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’), the year, ‘2020’ (centre left), Germany’s issuing country code, ‘D’ (bottom right), and the lettering ‘50 JAHRE KNIEFALL VON WARSCHAU’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 652,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_09-min.png',
    periodStartDate: '2020-10-01',
    quantity: 300_000,
    description:
        'Medical Research. The design shows the figuration of the human in union, represented by a face inscribed in a sphere. It faces the infinitely small, represented by fragments of DNA inscribed in a circle. By its oblique axis, this allegory represents the research and its intelligence dominating the infinitely small, studying it and triumphing over the diseases. The indication of the issuing country ‘RF’ is located at the top right while the mintmark and the year of issuance ‘2020’ are located at the bottom left. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 653,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_10-min.png',
    periodStartDate: '2020-10-01',
    quantity: 101_000,
    description:
        '500th Anniversary of the death of Raphael Sanzio. The design features a portrait of Raphael and two angels. At the right, in semi-circle, is the inscription ‘RAFFAELLO SANZIO’. Above the image of the two angels are the years ‘1520’ and ‘2020’ and underneath it is the name of the issuing country ‘CITTA’ DEL VATICANO’. At the bottom is the mintmark ‘R’ and the artist’s name ‘D. LONGO’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 654,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_11-min.png',
    periodStartDate: '2020-08-01',
    quantity: 54_000,
    description:
        '250th anniversary of the death of Giambattista Tiepolo. The left part of the coin features the bust of an angel, a detail from Tiepolo’s painting ‘Angel Succouring Hagar’, which hangs in the Scuola Grande di San Rocco, Venice, and the initials of the designer Claudia Momoni ‘C.M.’. Above is the inscription ‘TIEPOLO’ and the letter ‘R’ identifying the Mint of Rome; on the right are the dates 1770 and 2020 and the inscription ‘San Marino’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 655,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_12-min.png',
    periodStartDate: '2020-06-01',
    quantity: 800_000,
    description:
        'Universities and society – University of Turku 100 years. The grid-like design represents the interaction between universities and the society. At the top of the design, there is the year of issuance ‘2020’, at the right side the mintmark and underneath the mintmark is the indication of the issuing country ‘FI’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 656,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_13-min.png',
    periodStartDate: '2020-06-01',
    quantity: 60_000,
    description:
        '50 years of Universal Female Suffrage. The design of the coin shows a female face inside a wrapper of endless moving lines. These lines are formed by female names in Catalan language close together, making it difficult to read them individually, as a tribute to solidarity of women in the fight for their rights. The inscriptions ‘50 ANYS DEL SUFRAGI UNIVERSAL FEMENÍ’ (50 years of Universal Female Suffrage) and ‘ANDORRA 1970 - 2020’ complete the design. These inscriptions are also incorporated into the movement of the lines in a way, in order to give more importance to the anniversary that is being commemorated. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 657,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_14-min.png',
    periodStartDate: '2020-06-01',
    quantity: 1_000_000,
    description:
        'The 500th anniversary of the birth of Adam Bohorič. The design has at its core a multilingual slogan from the cover of Bohorič’s Latin – Slovenian grammar titled “Proste zimske urice”. The slogan in Slovenian, written in bohoričica (the type of writing named after Adam Bohorič), which is easily recognizable due to the use of a typical letter f, is positioned in the lower half of the coin’s core. Behind is the Slovenian slogan in Latin – presenting Bohorič’s contribution to the international academic sphere. At the top of the design, in semi-circle, is the inscription ‘ADAM BOHORIČ1520 / SLOVENIJA 2020’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 658,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_15-min.png',
    periodStartDate: '2020-04-01',
    quantity: 412_000,
    description:
        ' Latgalian ceramics. The coin is dedicated to the Latgalian pottery. The traditional pottery established itself for substantial periods of time in two districts, Latgale and Kurzeme, but only in Latgale it has survived throughout the times and passed over to the next generations. The Latgalian pottery is included also in the Latvian Culture Canon. The design depicts a characteristic piece of Latgalian ceramics – a clay candelabrum. It bears an inscription ‘LATGALES KERAMIKA’ (Latgalian ceramics), the country name ‘LATVIJA’ as well as the year of issuance ‘2020’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 659,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_16-min.png',
    periodStartDate: '2020-10-01',
    quantity: 300_000,
    description:
        'Medical Research. The design shows the figuration of the human in union, represented by a face inscribed in a sphere. It faces the infinitely small, represented by fragments of DNA inscribed in a circle. By its oblique axis, this allegory represents the research and its intelligence dominating the infinitely small, studying it and triumphing over the diseases. The indication of the issuing country ‘RF’ is located at the top right while the mintmark and the year of issuance ‘2020’ are located at the bottom left. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 660,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_17-min.png',
    periodStartDate: '2020-07-01',
    quantity: 60_000,
    description:
        '50 years of Universal Female Suffrage. The design of the coin shows a female face inside a wrapper of endless moving lines. These lines are formed by female names in Catalan language close together, making it difficult to read them individually, as a tribute to solidarity of women in the fight for their rights. The inscriptions ‘50 ANYS DEL SUFRAGI UNIVERSAL FEMENÍ’ (50 years of Universal Female Suffrage) and ‘ANDORRA 1970 - 2020’ complete the design. These inscriptions are also incorporated into the movement of the lines in a way, in order to give more importance to the anniversary that is being commemorated. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 661,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_18-min.png',
    periodStartDate: '2020-06-01',
    quantity: 15_000,
    description:
        'The 300th anniversary of the birth of Prince Honoré III. The design shows the effigy of Prince Honoré III. At the left is the inscription ‘HONORÉ III’ and at the right the name of the issuing country ‘MONACO’. At the bottom, in semi-circle, is the inscription ‘1720 – Naissance – 2020’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 662,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_19-min.png',
    periodStartDate: '2020-06-01',
    quantity: 3_000_000,
    description:
        '150th anniversary of the birth of Maria Montessori. A portrait of Maria Montessori in a geometric composition with some of didactic elements drawn from her educational system. In the right field, ‘RI’, acronym of the Italian Republic; on the left, ‘R’ ,identifying the Mint of Rome; on the right, ‘LDS’, initials of the designer Luciana De Simoni; at the top and bottom, the dates ‘1870’ e ‘2020’, the year of birth of the Italian pedagogue and that of coin’s issue, respectively; around the portrait, the inscription ‘MARIA MONTESSORI’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 663,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_20-min.png',
    periodStartDate: '2020-05-01',
    quantity: 750_000,
    description:
        '100 years since the union of Thrace with Greece. The design replicates an ancient coin of the Thracian city of Abdera, featuring a griffin. Inscribed along the inner edge are the words ‘100 YEARS SINCE THE UNION OF THRACE WITH GREECE’ and ‘HELLENIC REPUBLIC’, as well as the year of issuance ‘2020’ and a palmette (the mintmark of the Greek mint). Also visible at left is the monogram of the artist (George Stamatopoulos). The region of Thrace, located in the northeastern corner of the country, was united with Greece after the end of World War I. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 664,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_21-min.png',
    periodStartDate: '2020-05-01',
    quantity: 155_000,
    description:
        'Jan van Eyck. The inner part of the piece depicts the portrait of the famous Flemish artist Jan van Eyck, together with his signature and a painter’s palette that also contains the initials LL, referring to the designer of the coin, Mr Luc Luycx and two paintbrushes. Above this, you can find the name J. van Eyck. As the Royal Dutch Mint will strike the coins, the mintmark of Utrecht, a mercury staff is located on the bottom together with the Belgian mint director mintmark, the coat of arms of the municipality Herzele. The country code BE and the year mark 2020 is located on the right. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 665,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_22-min.png',
    periodStartDate: '2020-05-01',
    quantity: 510_000,
    description:
        '75th anniversary of the United Nations. The design depicts the UN logo. At the top is the year of issuance ‘2020’, the name of the issuing country ‘PORTUGAL’ and the inscription ‘UN 75 YEARS’. Under the words ‘UN’ and ‘YEARS’ is their translation in Portuguese ‘ONU’ and ‘ANOS’. At the left side is the name of the mint ‘CASA DA MOEDA’ and at the right side is the engraver’s name ‘ANDRÉ LETRIA’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 666,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_23-min.png',
    periodStartDate: '2020-05-01',
    quantity: 170_000,
    description:
        'Unesco World Heritage Site – pre-historic temples of Skorba. The design features Skorba, a prehistoric temple located near the hamlet of Zebbiegh, in the northwest of Malta. The complex consists of two temples built side by side. These were built on a much older settlement remains of which were discovered outside the temple complex. Skorba lacks the monumentality of the other temples on the Maltese islands. Nevertheless, the site is of utmost importance having enabled archaeologists to set Malta’s prehistoric cultural sequence and establish that the islands were first inhabited at around 5 000 BC. The inscription ‘SKORBA TEMPLES 3600-2500 BC’ appears at the top of the design. At the bottom are the name of the issuing country ‘MALTA’ and the year of issuance ‘2020’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 667,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_24-min.png',
    periodStartDate: '2020-10-01',
    quantity: 101_000,
    description:
        '500th Anniversary of the death of Raphael Sanzio. The design features a portrait of Raphael and two angels. At the right, in semi-circle, is the inscription ‘RAFFAELLO SANZIO’. Above the image of the two angels are the years ‘1520’ and ‘2020’ and underneath it is the name of the issuing country ‘CITTA’ DEL VATICANO’. At the bottom is the mintmark ‘R’ and the artist’s name ‘D. LONGO’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 668,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_25-min.png',
    periodStartDate: '2020-08-01',
    quantity: 54_000,
    description:
        '250th anniversary of the death of Giambattista Tiepolo. The left part of the coin features the bust of an angel, a detail from Tiepolo’s painting ‘Angel Succouring Hagar’, which hangs in the Scuola Grande di San Rocco, Venice, and the initials of the designer Claudia Momoni ‘C.M.’. Above is the inscription ‘TIEPOLO’ and the letter ‘R’ identifying the Mint of Rome; on the right are the dates 1770 and 2020 and the inscription ‘San Marino’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 669,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_26-min.png',
    periodStartDate: '2020-03-01',
    quantity: 500_000,
    description:
        'Aukštaitija (from the series Lithuanian Etnographic Regions). The design features a coat of arms with an armour-clad knight holding a sword in his right hand. The coat of arms is held by two angels, simbolically exalting and protecting Aukštaitija – one of the most important regions of Lithuania and the cradle of its statehood. Below is a Latin inscription PATRIAM TUAM MUNDUM EXISTIMA (CONSIDER YOUR HOMELAND TO BE THE WHOLE WORLD). The design is surrounded by inscriptions: ‘LIETUVA’ (the name of the issuing country), ‘AUKŠTAITIJA’, the year of issuance ‘2020’ and the mintmark of the Lithuanian Mint. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 670,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_27-min.png',
    periodStartDate: '2020-03-01',
    quantity: 750_000,
    description:
        'The bicentenary of the discovery of Antarctica. The discovery is linked to Estonia because one of the first men to see Antarctica in 1820 was Fabian Gottlieb von Bellingshausen, a Baltic German seafarer born in Saaremaa, who documented the discovery. The design depicts a motif of a sailing ship. It also bear the inscriptions ‘Fabian Gottlieb von Bellingshausen’ and ‘ANTARKTIKA 200’, the country name ‘EESTI’ and the year of issuance ‘2020’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 671,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_28-min.png',
    periodStartDate: '2020-02-01',
    quantity: 4_000_000,
    description:
        'UNESCO’s World Cultural and Natural Heritage Sites – Aragón and the Aragonese Mudejar architecture. The design shows the image of the tower of El Salvador de Teruel. On the left side in capital letters is the word ‘ESPAÑA’ and on the right side the mintmark and underneath it the year of issuance 2020. At the top in the central part, in a circular sense and in capital letters the legend ‘ARQUITECTURA MUDEJAR DE ARAGÓN’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 672,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_29-min.png',
    periodStartDate: '2020-02-01',
    quantity: 30_000_000,
    description:
        'Brandenburg (the Bundesländer series). The design shows the Sanssouci Palace. The upper half of the coin’s inner section includes the mint mark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’), the artist’s initials and the year ‘2020’. The lower half of the coin’s inner section contains the inscription ‘BRANDENBURG’ and Germany’s issuing country code ‘D’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 673,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_30-min.png',
    periodStartDate: '2020-02-01',
    quantity: 755_000,
    description:
        'International Year of Plant Health 2020 (IYPH 2020). The inner part of the piece depicts the official logo of the IYPH 2020 that symbolises leaves and the text ‘International year of plant health’. The leaves represent healthy plants as the source of the oxygen we breathe, the food we eat and all life on earth. This positive image of leaves protected from deadly pests and diseases forms a circle, which represents the world and underlines how plant health and protection is a global issue. Plant health is the key to ending hunger, reducing poverty, protecting the environment and boosting economic development. As the Royal Dutch Mint will strike the coins, the mintmark of Utrecht, a mercury staff is located on the right. The Belgian mint director mintmark, the coat of arms of the municipality Herzele is located on the left. The country code BE and the year mark 2020 are located on the bottom. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 674,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_31-min.png',
    periodStartDate: '2020-02-01',
    quantity: 1_000_000,
    description:
        'The centenary of the Tartu Peace Treaty. The treaty was signed between Estonia and Soviet Russia on 2 February 1920, and it fixed the Eastern border of Estonia, bringing an end to the War of Independence. The design depicts a tree with branches disguising the words TARTU RAHU (Tartu Peace Treaty). It also bears the country name ‘EESTI’ and the date of issue ‘2 February 2020’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 675,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_32-min.png',
    periodStartDate: '2020-01-01',
    quantity: 3_000_000,
    description:
        'The 80th Anniversary of Foundation of ‘Corpo Nazionale dei Vigili del Fuoco’ (National Fire Department). The design shows, in the center, the logo of the National Fire Department. On the left, ‘RI’, acronym of the Italian Republic; on the right, the year of the coin’s issue ‘2020’; ‘R’, identifying the Mint of Rome; below, ‘LDS’, initials of the designer Luciana De Simoni; above, arch-shaped inscription ‘CORPO NAZIONALE DEI VIGILI DEL FUOCO’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 676,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_33-min.png',
    periodStartDate: '2020-01-01',
    quantity: 500_000,
    description:
        'The 200th anniversary of the birth of Prince Henri. The design shows on the right hand the effigy of His Royal Highness, the Grand Duke Henri, and on the left hand the effigy of Prince Henri. At the bottom is the name of the issuing country ‘LUXEMBOURG’ and the year-date ‘2020’. At the left, in semi-circle form, is the inscription ‘Prince Henri d’Orange-Nassau’ and underneath his effigy is the inscription ‘1820 – 1879’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 677,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2020/2020_34-min.png',
    periodStartDate: '2020-01-01',
    quantity: 750_000,
    description:
        '2 500 years since the Battle of Thermopylae. The design depicts an ancient Greek helmet. Inscribed along the inner edge are the words ‘2500 YEARS SINCE THE BATTLE OF THERMOPYLAE’ and ‘HELLENIC REPUBLIC’. Also inscribed in the background are the year of issuance ‘2020’ and a palmette (the mintmark of the Greek mint). Visible down and right of the helmet is the monogram of the artist (George Stamatopoulos). Although ending in defeat for the Greeks, the Battle of Thermopylae remains a timeless symbol of heroic resistance. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),

  // 2021 -------------------------------------------------------------
  CoinModel(
    id: 678,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_01-min.png',
    periodStartDate: '2021-10-01',
    quantity: 70_000,
    description:
        'Taking care of our seniors. The subject of the coin ‘CUIDEM LA NOSTRA GENT GRAN’ (taking care of our seniors) is symbolized by the image of the hand of a young person holding another hand that shows all the signs of aging, with a stethoscope below them. The name of the issuing country ‘ANDORRA’ encircling several reproductions of the SARS-CoV-2 virus represents the State’s commitment to preventing its spread and caring for its citizens. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 679,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_02-min.png',
    periodStartDate: '2021-10-01',
    quantity: 73_750,
    description:
        'Our Lady of Meritxell. The foreground of the design depicts the reproduction of the Romanesque carving of Our Lady of Meritxell (patron saint of the Principality of Andorra), which dates back from the 11th and 12th centuries. The background shows a partial reproduction of the basilica sanctuary, a graphic flower element, the name ‘ANDORRA’ and the years ‘1921-2021’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 680,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_03-min.png',
    periodStartDate: '2021-11-01',
    quantity: 1_000_000,
    description:
        'The 100th anniversary of the birth of Alexander Dubček. The design depicts a left-profile portrait of Alexander Dubček, a leading Slovak politician of the Prague Spring. Inscribed along the left edge is ‘SLOVENSKO’, overlying the portrait is ‘Alexander Dubček’ and below it ‘1921’ and ‘1992’. At the right edge is ‘2021’, the mintmark ‘MK’, and the designer’s initials ‘BR’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 681,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_04-min.png',
    periodStartDate: '2021-09-01',
    quantity: 800_000,
    description:
        'The 100-year autonomy of Åland. The theme is an archipelago landscape: a seaway with nautical signs, a boat bow, compass, sea horizon, sky and clouds. Inscribed “AUTONOMY OF THE ÅLAND ISLANDS FOR 100 YEARS” in Finnish and Swedish, with two diamond highlights, “2021 FI” and the mintmark. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 682,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_05-min.png',
    periodStartDate: '2021-09-01',
    quantity: 155_000,
    description:
        'The 500th anniversary of the ordinance of Charles V. The national side depicts Charles V’s portrait and a golden Carolus guilder, with Utrecht mintmark, Herzele mark, initials LL, country code BE and year 2021. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 683,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_06-min.png',
    periodStartDate: '2021-09-01',
    quantity: 1_000_000,
    description:
        'The Estonian national animal – the wolf. The design depicts the silhouette of the wolf and a forest. Close to the inner ring are “EESTI”, “2021” and “CANIS LUPUS”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 684,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_07-min.png',
    periodStartDate: '2021-10-01',
    quantity: 181_000,
    description:
        'Maltese prehistoric temples of Tarxien. The design depicts a detail of the structure with “TARXIEN TEMPLES 3600–2500 BC” above and “MALTA” and “2021” below. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 685,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_08-min.png',
    periodStartDate: '2021-10-01',
    quantity: 86_000,
    description:
        'The 700th anniversary of the death of Dante Alighieri. The design features a portrait of Dante and Palazzo Vecchio, with “CITTÀ DEL VATICANO”, “Dante”, “1321–2021” and artist “P. DANIELE”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 686,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_09-min.png',
    periodStartDate: '2021-10-01',
    quantity: 1_000_000,
    description:
        'The 200th anniversary of the Provincial Museum for Carniola. Inspired by Vače Situla belts symbolizing layered history, with “SLOVENIJA” and “2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 687,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_10-min.png',
    periodStartDate: '2021-09-01',
    quantity: 510_000,
    description:
        'Olympic Games Paris 2024. The design represents Marianne running with the Eiffel Tower forming the axis, plus an athletics track and Paris 2024 emblem, with “RF” and mintmarks. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 688,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_11-min.png',
    periodStartDate: '2021-09-01',
    quantity: 1_000_000,
    description:
        'Finno-Ugric peoples. Based on Lake Äänisjärv cave drawings: symbols of hunter, elk, water bird, sun, forming a life circle around a water bird. Inscribed “EESTI” and “2021” and “FENNOUGRIA”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 689,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_12-min.png',
    periodStartDate: '2021-08-01',
    quantity: 54_000,
    description:
        'The 550th anniversary of the birth of Albrecht Dürer. Depicts Virgin Mary with Child from Dürer’s “Madonna with Child”, with “SAN MARINO”, mintmark “R”, monogram “AD”, initials “VdS” and dates “1471–2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 690,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_13-min.png',
    periodStartDate: '2021-07-01',
    quantity: 15_000,
    description:
        '10th anniversary of the marriage of Prince Albert II and Princess Charlene. Profiles of the couple, with “MONACO” and “2011 MARIAGE PRINCIER 2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 691,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_14-min.png',
    periodStartDate: '2021-07-01',
    quantity: 500_000,
    description:
        'Dzūkija (Lithuanian Ethnographic Regions). Coat of arms with soldier, shield, lynxes, ribbon with “EX GENTE BELICOSISSIMA POPULUS LABORIOSUS”, and “LIETUVA”, “DZŪKIJA”, “2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 692,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_15-min.png',
    periodStartDate: '2021-06-01',
    quantity: 86_000,
    description:
        'The 450th anniversary of the birth of Caravaggio. The design features “Boy with a Basket of Fruit” by Caravaggio, with “CITTA’ DEL VATICANO”, mintmark “R”, “CARAVAGGIO”, “1571–2021”, and initials “CP”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 693,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_16-min.png',
    periodStartDate: '2021-06-01',
    quantity: 72_500,
    description:
        'Heroes of the pandemic. Designed by Maria Anna Frisone, depicting two medical professionals bracing to face the unknown, with “HEROES OF THE PANDEMIC” and “MALTA – 2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 694,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_17-min.png',
    periodStartDate: '2021-06-01',
    quantity: 155_000,
    description:
        'The 100th anniversary of the Belgium-Luxembourg Economic Union (BLEU). Effigies of King Philip I and Grand Duke Henri, “1921–2021”, Utrecht mintmark, Herzele mark, initials LL. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 695,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_18-min.png',
    periodStartDate: '2021-05-01',
    quantity: 500_000,
    description:
        'Portugal’s participation in the 2020 Tokyo Olympics. A stylized representation of the National Olympic Committee’s symbol, surrounded by “Portugal nos Jogos Olímpicos de Tóquio ’20 2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 696,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_19-min.png',
    periodStartDate: '2021-03-01',
    quantity: 800_000,
    description:
        'Journalism and Open Communication supporting Finnish democracy. Stylized human figures entwined in a ribbon-like net, “JOURNALISMI JOURNALISTIK”, and “2021 FI” with mintmark. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 697,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_20-min.png',
    periodStartDate: '2021-04-01',
    quantity: 500_000,
    description:
        'UNESCO’s Man and the Biosphere Programme – Žuvintas Biosphere Reserve. Depicts landscapes, great bittern, fire-bellied toad, aquatic warbler, cranes, mute swan, with “LIETUVA”, “ŽUVINTAS”, “UNESCO”, “2021” and mintmark. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 698,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_21-min.png',
    periodStartDate: '2021-04-01',
    quantity: 1_500_000,
    description:
        '200 years since the Greek Revolution. The design features the Greek flag encircled by laurel branches, “1821 – 2021 200 YEARS SINCE THE GREEK REVOLUTION” and “HELLENIC REPUBLIC”, palmette and artist signature. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 699,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_22-min.png',
    periodStartDate: '2021-01-01',
    quantity: 412_000,
    description:
        'The 100th anniversary of Latvia’s international recognition de iure. It was on 26 January 1921 when Latvian diplomats secured recognition. The design depicts ‘100 Latvija de iure 2021’ with “LATVIJA” and “2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 700,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_23-min.png',
    periodStartDate: '2021-03-01',
    quantity: 54_000,
    description:
        'The 450th anniversary of Caravaggio’s birth. Depicts the penitent Magdalene from Caravaggio’s work in the Doria Pamphilj Gallery, with “SAN MARINO”, “1571–2021”, designer initials “SP”, “CARAVAGGIO” and mintmark. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 701,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_24-min.png',
    periodStartDate: '2021-03-01',
    quantity: 7_500_000,
    description:
        'UNICEF. Allegory of UNICEF’s work: hands supporting a globe, laurel wreath for the 75th anniversary, acronym RF, “UNICEF” with dates and motto “For each child”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 702,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_25-min.png',
    periodStartDate: '2021-02-01',
    quantity: 4_000_000,
    description:
        'UNESCO – Toledo. View of Puerta de Sol and a detail of La Sinagoga del Tránsito in Mudejar style, with “ESPAÑA” and “2021” and the mintmark. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 703,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_26-min.png',
    periodStartDate: '2021-02-01',
    quantity: 500_000,
    description:
        'The 40th anniversary of the marriage of Grand Duke Henri. Effigies of Grand Duke Henri and Grand Duchess Maria Teresa, wedding rings, date “14. FEBRUAR 1981 – 2021”, and “LETZEBUERG”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 704,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_27-min.png',
    periodStartDate: '2021-01-26',
    quantity: 30_000_000,
    description:
        'Bundesländer series – Saxony-Anhalt. Magdeburg Cathedral, “SACHSEN-ANHALT”, country code D, mintmark (A/D/F/G/J), engraver’s mark, and “2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 705,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_28-min.png',
    periodStartDate: '2021-01-01',
    quantity: 3_000_000,
    description:
        '150th Anniversary of Rome Capital of Italy. Detail of Dea Roma by Angelo Zanelli on the Altare della Patria, with “ROMA CAPITALE”, “•1871•2021•”, “RI”, “R”, and designer initials UP. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 706,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_29-min.png',
    periodStartDate: '2021-01-01',
    quantity: 3_000_000,
    description:
        'Healthcare professionals. A man and woman in medical attire with masks, stethoscope, folder, with “GRAZIE”, heart, cross, “RI”, “R”, designer initials CM, and “2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 707,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_30-min.png',
    periodStartDate: '2021-01-01',
    quantity: 500_000,
    description:
        'The 100th anniversary of the Grand Duke Jean. Effigies of Grand Duke Jean and Grand Duke Henri, names, birth year “1921”, city outline, “GROUSSHERZOGE VU LËTZEBUERG” and “2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 708,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2021/2021_31-min.png',
    periodStartDate: '2021-01-01',
    quantity: 510_000,
    description:
        'Portuguese Presidency of the Council of the European Union. Links between Portugal’s capital and other EU capitals form a map within “PRESIDÊNCIA DO CONSELHO DA UNIÃO EUROPEIA PORTUGAL 2021”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),

  // 2022 -------------------------------------------------------------
  CoinModel(
    id: 709,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_01-min.png',
    periodStartDate: '2022-10-01',
    quantity: 70_000,
    description:
        'The legend of Charlemagne. The coin design represents the legend that Emperor Charlemagne founded Andorra in 805. The background shows a mountain landscape with a river, and the name "ANDORRA". In the foreground is a partial reproduction of Charlemagne by Albrecht Dürer and the year "2022".',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 710,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_02-min.png',
    periodStartDate: '2022-10-01',
    quantity: 70_000,
    description:
        '10 years of the Monetary Agreement between Andorra and the EU. Puzzle pieces represent the countries involved, symbolizing unity in the eurozone. Stars encircle the euro symbol, with "ANDORRA", "2012" and "2022" inscribed.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 711,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_03-min.png',
    periodStartDate: '2022-10-01',
    quantity: 500_000,
    description:
        'Lithuanian Ethnographic Regions - Suvalkija. Features a Taurus on a decorated escutcheon with oak branches and a ribbon inscribed "VIENYBĖ TEŽYDI". Surrounded by "LIETUVA", "SUVALKIJA", the year "2022", and mintmark.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 712,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_04-min.png',
    periodStartDate: '2022-10-01',
    quantity: 2_000_000,
    description:
        'Ukraine and Freedom. Depicts a woman holding a bird and wheat. Inscribed with "SLAVA UKRAINI", "EESTI", and "2022".',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 713,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_05-min.png',
    periodStartDate: '2022-09-01',
    quantity: 400_000,
    description:
        'Climate research in Finland. Features stylized beard lichen roots. Inscriptions in Finnish and Swedish for "CLIMATE RESEARCH", and "2022 FI".',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 714,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_06-min.png',
    periodStartDate: '2022-10-01',
    quantity: 65_500,
    description:
        '22nd anniversary of UNSCR 1325 on Women, Peace and Security. Features three female faces with inscriptions "WOMEN", "PEACE", "SECURITY", "UNSCR", "1325", and "MALTA 2022".',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 715,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_07-min.png',
    periodStartDate: '2022-10-01',
    quantity: 55_000,
    description:
        '530th anniversary of Piero della Francesca’s death. Shows profile of Federico da Montefeltro from the "Diptych of the Dukes of Urbino", with inscriptions "SAN MARINO", "PIERO DELLA FRANCESCA", "1492", "2022", "R", and "C.M.".',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 716,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_08-min.png',
    periodStartDate: '2022-10-01',
    quantity: 55_000,
    description:
        'Bicentenary of Antonio Canova’s death. Features goddess Hebe based on Canova’s sculpture. Inscriptions: "CANOVA", "SAN MARINO", "1822", "2022", "R", and initials of Antonio Vecchio.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 717,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_09-min.png',
    periodStartDate: '2022-10-01',
    quantity: 1_000_000,
    description:
        '300th anniversary of Europe’s first atmospheric steam engine. Features the engine built by Isaac Potter in Nová Baňa, Slovakia. Inscriptions include "SLOVENSKO", "1722·2022", "MK", and designer’s initials.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 718,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_10-min.png',
    periodStartDate: '2022-09-01',
    quantity: 15_000,
    description:
        '100th anniversary of Prince Albert I’s death. Portrait of Prince Albert I with inscriptions "MONACO", "ALBERT Ier", "1848-1922", and "2022".',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 719,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_11-min.png',
    periodStartDate: '2022-09-01',
    quantity: 260_000,
    description:
        'Olympic Games 2024 countdown. Depicts a discus thrower blended with the Arc de Triomphe and athletics track. Inscriptions include "RF", "2022", mintmarks, and Paris 2024 emblem.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 720,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_12-min.png',
    periodStartDate: '2022-09-01',
    quantity: 84_000,
    description:
        'The 25th anniversary of the death of Mother Teresa of Calcutta. The design features a portrait of Mother Teresa with a child. At the top, in semi-circle, is the inscription ‘MADRE TERESA DI CALCUTTA’ and at the bottom is the name of the issuing country ‘CITTÀ DEL VATICANO’. At the right of the portrait is the mintmark ‘R’ and underneath it are the years ‘1997’ and ‘2022’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 721,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_13-min.png',
    periodStartDate: '2022-07-01',
    quantity: 750_000,
    description:
        '200 years from the first Greek Constitution. The design features the temple of Asclepius at Epidaurus with the statue of the god at centre. The theme replicates the reverse of a commemorative medal on the First National Assembly held by the revolted Greeks at Epidaurus, which was awarded to the Assembly members during the reign of king Otho. Inscribed along the inner edge is the wording ‘HELLENIC REPUBLIC’ and ‘THE FIRST GREEK CONSTITUTION’, as well as the years ‘1822’ and ‘2022’, a palmette (the mintmark of the Greek mint) and the monogram of the artist (George Stamatopoulos). The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 722,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_14-min.png',
    periodStartDate: '2022-07-01',
    quantity: 1_060_000,
    description:
        'Austria Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 723,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_15-min.png',
    periodStartDate: '2022-07-01',
    quantity: 1_000_000,
    description:
        'Belgium Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 724,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_16-min.png',
    periodStartDate: '2022-07-01',
    quantity: 412_000,
    description:
        'Cyprus Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 725,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_17-min.png',
    periodStartDate: '2022-07-01',
    quantity: 20_000_000,
    description:
        'Germany Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 726,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_18-min.png',
    periodStartDate: '2022-07-01',
    quantity: 1_000_000,
    description:
        'Estonia Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 727,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_19-min.png',
    periodStartDate: '2022-07-01',
    quantity: 401_500,
    description:
        'Finland Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 728,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_20-min.png',
    periodStartDate: '2022-07-01',
    quantity: 3_500_000,
    description:
        'France Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 729,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_21-min.png',
    periodStartDate: '2022-07-01',
    quantity: 745_000,
    description:
        'Greece Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 730,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_22-min.png',
    periodStartDate: '2022-07-01',
    quantity: 500_000,
    description:
        'Ireland Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 731,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_23-min.png',
    periodStartDate: '2022-07-01',
    quantity: 3_000_000,
    description:
        'Italy Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 732,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_24-min.png',
    periodStartDate: '2022-07-01',
    quantity: 308_000,
    description:
        'Latvia Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 733,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_25-min.png',
    periodStartDate: '2022-07-01',
    quantity: 300_000,
    description:
        'Lithuania version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 734,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_26-min.png',
    periodStartDate: '2022-07-01',
    quantity: 500_000,
    description:
        'Luxembourg Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 735,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_27-min.png',
    periodStartDate: '2022-07-01',
    quantity: 82_500,
    description:
        'Malta Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 736,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_28-min.png',
    periodStartDate: '2022-07-01',
    quantity: 570_000,
    description:
        'Netherlands Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 737,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_29-min.png',
    periodStartDate: '2022-07-01',
    quantity: 500_000,
    description:
        'Portugal Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 738,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_30-min.png',
    periodStartDate: '2022-07-01',
    quantity: 1_000_000,
    description:
        'Slovakia Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 739,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_31-min.png',
    periodStartDate: '2022-07-01',
    quantity: 1_000_000,
    description:
        'Slovenia Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 740,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_32-min.png',
    periodStartDate: '2022-07-01',
    quantity: 1_000_000,
    description:
        'Spain Version. 35 years of the Erasmus programme. The design is a mix of two major elements of the Erasmus programme: the original intellectual inspiration, Erasmus himself, and the allegory of its influence over Europe. The first one is symbolised by one of the most known depiction of Erasmus. The second one is symbolised by a beam of links going across the coin from a beacon to another, representing the numerous intellectual and human exchanges between the European students. As a reference to Europe, some of these links form other stars, born from the synergy between the countries. The figure 35, for 35th anniversary comes out from the stars in a contemporary graphical style. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.EU,
  ),
  CoinModel(
    id: 741,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_33-min.png',
    periodStartDate: '2022-04-01',
    quantity: 750_000,
    description:
        '100 years of basketball in Lithuania. The design shows the contour of the map of Lithuania arranged as a basketball court in the centre, which signifies that basketball has been played in Lithuania already for 100 years. The coin also features the inscriptions ‘LIETUVA’ (Lithuania), ‘1922-2022’ and the logo of the Lithuanian mint, its manufacturer, arranged in a semi-circle around the centre. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 742,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_34-min.png',
    periodStartDate: '2022-03-01',
    quantity: 400_000,
    description:
        '100 years of Finland\'s National Ballet. The design depicts the powerful and free movements of a dancer covered in a light flowing textile that accentuates the beauty and fluidity of the dancer\'s pose. It also bears the year of issuance ‘2022’ and at the top the indication of the issuing country ‘FI’ and the mintmark. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 743,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_35-min.png',
    periodStartDate: '2022-03-01',
    quantity: 2_000_000,
    description:
        'The healthcare sector in recognition of the exceptional commitment during the Covid-19 pandemic. The design depicts in the inner part of the coin the health personnel... [full description continued as given].',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 744,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_36-min.png',
    periodStartDate: '2022-05-01',
    quantity: 192_000,
    description:
        'UNESCO: Ħal Saflieni Hypogeum. The design shows a detail of the prehistoric site... [full description continued as given].',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 745,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_37-min.png',
    periodStartDate: '2022-04-01',
    quantity: 415_000,
    description:
        'The centenary of Latvijas Banka – financial literacy... [full description continued as given].',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 746,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_38-min.png',
    periodStartDate: '2022-04-01',
    quantity: 500_000,
    description:
        'The 10th anniversary of the marriage of the Hereditary Grand Duke Guillaume and the Hereditary Grand Duchesse Stéphanie... [full description continued as given].',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 747,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_39-min.png',
    periodStartDate: '2022-01-01',
    quantity: 1_000_000,
    description:
        'The 150th anniversary of the founding of the Society of Estonian Literati... [full description continued as given].',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 748,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_40-min.png',
    periodStartDate: '2022-01-01',
    quantity: 1_000_000,
    description:
        'The 5th centennary of the first circumnavigation of the Earth... [full description continued as given].',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 749,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_41-min.png',
    periodStartDate: '2022-01-01',
    quantity: 1_000_000,
    description:
        'UNESCO: Garajonay National Park... [full description continued as given].',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 750,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_42-min.png',
    periodStartDate: '2022-03-01',
    quantity: 1_000_000,
    description:
        'The 100th anniversary of the crossing the South Atlantic Ocean by air... [full description continued as given].',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 751,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_43-min.png',
    periodStartDate: '2022-03-01',
    quantity: 84_000,
    description:
        'The 125th anniversary of the birth of Pope Paul VI... [full description continued as given].',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 752,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_44-min.png',
    periodStartDate: '2022-01-01',
    quantity: 9_000_000,
    description:
        'The 90th anniversary of President Jacques Chirac’s birth... [full description continued as given].',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 753,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_45-min.png',
    periodStartDate: '2022-01-01',
    quantity: 3_000_000,
    description:
        'The 30th Anniversary of the death of Giovanni Falcone and Paolo Borsellino... [full description continued as given].',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 754,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_46-min.png',
    periodStartDate: '2022-01-01',
    quantity: 3_000_000,
    description:
        '170th Anniversary of the foundation of the Italian National Police... [full description continued as given].',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 755,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_47-min.png',
    periodStartDate: '2022-01-01',
    quantity: 30_000_000,
    description:
        'Bundeslander series – Thuringia... [full description continued as given].',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 756,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_48-min.png',
    periodStartDate: '2022-01-01',
    quantity: 500_000,
    description:
        'The 50th Anniversary of the legal protection of the Luxembourg flag... [full description continued as given].',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 757,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2022/2022_49-min.png',
    periodStartDate: '2022-01-01',
    quantity: 1_000_000,
    description:
        'The 150th anniversary of the birth of architect Jože Plečnik... [full description continued as given].',
    country: CountryNames.SLOVENIA,
  ),

  // 2023 -------------------------------------------------------------
  CoinModel(
    id: 758,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_01-min.png',
    periodStartDate: '2023-10-01',
    quantity: 70_000,
    description:
        'Summer solstice fire festivals in the Pyrenees. The summer solstice fire festivals were inscribed on UNESCO’s Representative List of the Intangible Cultural Heritage of Humanity in 2015. They are traditional and popular festivities widely celebrated in Andorra each year. The design reproduces a human figure, named ‘fallaire’, wearing a traditional cape and tracing a circle of fire with the ‘falla’. This is the main element of the festival and consists of tree barks that, once lit, they are energetically whirled around creating large circles of fire. The graphic composition of lines in the background of the design represents the summer solstice together with the name of the issuing country ‘ANDORRA’ and the year ‘2023’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 759,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_02-min.png',
    periodStartDate: '2023-10-01',
    quantity: 70_000,
    description:
        '30 years of the entry of the Principality of Andorra into the United Nations. The United Nations is represented by two symbolic elements: two laurel wreaths and a globe, which forms part of the number 30 that has been represented, with the inscription ANYS (years) and the year date 2023 below. In the upper part of the design there is the coat of arms of Andorra and the inscription ‘ANDORRA MEMBRE DE LES NACIONS UNIDES’ (Andorra member of the United Nations). The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 760,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_03-min.png',
    periodStartDate: '2023-12-01',
    quantity: 1_000_000,
    description:
        'The 150th anniversary of the birth of Josip Plemelj (mathematician and astronomer). The design displays parts of the equation that Josip Plemelj solved as a first person in the world. Numbers and symbols rotate on circumferences that depict planet rotation, movement in space, as well as composing individual unsolvable elements into whole. That way the design shows both fields of Josip Plemelj\'s work, i.e. mathematics and astronomy. The inscription ‘JOSIP PLEMELJ 1873’, the name of the issuing country ‘SLOVENIJA’ and the year of issuance ‘2023’ are integrated in the design. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 761,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_04-min.png',
    periodStartDate: '2023-11-01',
    quantity: 1_015_000,
    description:
        'Peace. The coin is dedicated to Peace among nations and to friendly and mutually beneficial coexistence. The search for peace must sit on a collective effort towards a common purpose. In the current highly polarized geopolitical context, this coin is aimed to help remind of the urgence to protect the priceless asset that is peace. The design radially displays the word ‘PAZ’ (PEACE) in the 16 official idioms spoken in all 20 countries of the Euro Zone as of January 2023. The inscription at the top reads ‘PORTUGAL’, followed by the year of issuance ‘2023’ at the top right; at the top left is the name of the designer ‘José S. Teixeira’ and at the left the mintmark ‘CASA DA MOEDA’, the name of the Portuguese Mint. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 762,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_05-min.png',
    periodStartDate: '2023-04-01',
    quantity: 412_000,
    description:
        'The 60th anniversary of the foundation of the Central Bank of Cyprus. The design depicts tools on a microchip symbolising the stability of the economy in the modern industrial and digital era secured by the Central Bank of Cyprus, which celebrates 60 years of existence. The issuing country\'s name ‘ΚYΠΡΟΣ KIBRIS’ and the dates ‘1963-2023’ are at the bottom. Additionally, the phrase ‘60 ΧΡOΝΙΑ ΑΠO ΤΗΝ IΔΡΥΣΗ ΤΗΣ ΚΕΝΤΡΙKHΣ ΤΡAΠΕΖΑΣ ΤΗΣ ΚYΠΡΟΥ’ (i.e. 60 years since the foundation of the Central Bank of Cyprus) is inscribed on the inner part of the national side of the coin. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 763,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_06-min.png',
    periodStartDate: '2023-09-01',
    quantity: 400_000,
    description:
        'Social and health services. The design represents a stylized map of Finland. The left-hand side bears the lettering ‘WELL-BEING’ in Finnish and Swedish. The year of issuance ‘2023’ is slightly on the left-hand side in the middle of the coin. At the bottom is the indication of the issuing country ‘FI’. At the right hand-side is the mintmark of the Mint of Finland. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 764,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_07-min.png',
    periodStartDate: '2023-10-01',
    quantity: 1_000_000,
    description:
        '200th anniversary of the start of the horse-drawn express mail coach service between Vienna and Bratislava. The design’s symbolic depiction of the express mail coach service between Vienna and Bratislava features a horse-drawn coach in rapid motion and a centrally placed rectangular inset containing a post-horn. Inscribed below the image is the year ‘1823’, when the express mail service began operation, and below that date are the city names in Slovak, ‘VIEDEŇ’ and ‘BRATISLAVA’, one above the other. At the bottom of the coin’s inner circle is the year of issuance ‘2023’, separated from the text above by a horizontal line. The name of the issuing country ‘SLOVENSKO’ is inscribed along the upper edge of the design. To the right of the coach is the mint mark of the Kremnica Mint (Mincovňa Kremnica), consisting of the letters ‘MK’ placed between two dies. Just below the mark are the stylised initials ‘MP’, referring to the national side’s designer Mária Poldaufová. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 765,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_08-min.png',
    periodStartDate: '2023-10-01',
    quantity: 130_000,
    description:
        'The 75th anniversary of the national suffrage for women in Belgium. The design depicts in the centre a box on a ballot paper, which is being coloured in by a pencil. The coloured box is overlapped by the Venus symbol (the gender symbol for woman/female). At the bottom left next to the central image is inscribed 75 JAAR ANS. Surrounding the central image are also inscriptions in Dutch and French: ‘ALGEMEEN VROUWENKIESRECHT’ – ‘SUFFRAGE UNIVERSEL FÉMININ’. At the bottom of the piece are located the initials of the designer Iris Bruijns. As the Royal Dutch Mint will strike the coins, the mintmark of Utrecht, a mercury staff is located at the right side of the piece, together with the Belgian mint master mark, an aster flower in front of an Erlenmeyer flask, the country code ‘BE’ and the year mark ‘2023’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 766,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_09-min.png',
    periodStartDate: '2023-09-01',
    quantity: 250_000,
    description:
        'The introduction of the euro as the official currency of Croatia on 1 January 2023. The design features the inscriptions of the issuing country ‘HRVATSKA’ (Croatia) and the year of issuance ‘2023.’, depicted horizontally, as well as the words ‘ČLANICA EUROPODRUČJA’ (member of the euro area), which are inscribed along the outer edge of the coin’s core. These inscriptions symbolically form a stylised symbol of the euro ‘€’. The other central motive of the coin is Croatia\'s distinctive and recognisable symbol, the Croatian checkerboard, which represents part of the coat of arms of the Republic of Croatia. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 767,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_10-min.png',
    periodStartDate: '2023-09-01',
    quantity: 56_000,
    description:
        'The 500th anniversary of the death of Luca Signorelli. The design shows an angel in the centre, a detail from the painting ‘Il Paradiso’ by Luca Signorelli, preserved in the Chapel of San Brizio in the Cathedral of Orvieto. At the left-hand side is the letter R, identifying the Mint of Rome. In semi-circle at the bottom left is the word ‘SIGNORELLI’. At the right-hand side is the name of the issuing country ‘SAN MARINO’, and at the top the years ‘1523 2023’. In the lower centre are the initials of the author Marta Bonifacio, MB. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 768,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_11-min.png',
    periodStartDate: '2023-07-01',
    quantity: 1_015_000,
    description:
        'World Youth Day (WYD) was held in Lisbon in August 2023. The design depicts the Pilgrim Cross, a set of human-like figures of different sizes and textures displayed as in a globe. At the bottom, two hands envelop the whole in a welcoming gesture of the inclusion and universality that is implied in this gathering. On the top edge, two inscriptions read ‘JORNADA MUNDIAL DA JUVENTUDE’ and ‘LISBOA 2023’. On the below edge, the coat of arms of Portugal, the inscription ‘PORTUGAL’, the mintmark ‘CASA DA MOEDA’ and the name of the designer ‘JOÃO DUARTE’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 769,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_12-min.png',
    periodStartDate: '2023-07-01',
    quantity: 500_000,
    description:
        'The 50th anniversary of Ireland’s membership of the European Union. The design depicts a modification to the ‘EU50’ programme logo used by Government Departments to promote events marking the 50th anniversary of Ireland’s EU membership. The name of the issuing country ‘ÉIRE’ is inserted above the logo. The year ‘1973’ is referenced to recognise the year Ireland joined the EU as well as ‘2023’ to mark the coin issue year. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.IRELAND,
  ),
  CoinModel(
    id: 770,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_13-min.png',
    periodStartDate: '2023-07-01',
    quantity: 750_000,
    description:
        '100 years from the birth of Maria Callas. The design features a portrait of the legendary Greek soprano Maria Callas. Inscribed along the inner edge is the wording ‘100 YEARS FROM THE BIRTH OF MARIA CALLAS’, and at the right the minting year ‘2023’ and a palmette (mintmark of the Greek Mint); below the portrait runs the inscription ‘HELLENIC REPUBLIC’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 771,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_14-min.png',
    periodStartDate: '2023-07-01',
    quantity: 750_000,
    description:
        '150 years from the birth of Constantin Carathéodory. The design features a portrait of the Greek mathematician Constantin Carathéodory. Inscribed along the inner edge at the left is the wording ‘CONSTANTIN CARATHÉODORY 1873-1950’, and at right the minting year ‘2023’ and a palmette (mintmark of the Greek Mint); below the portrait runs the inscription ‘HELLENIC REPUBLIC’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 772,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_15-min.png',
    periodStartDate: '2023-04-01',
    quantity: 1_000_000,
    description:
        'Estonian national bird – the barn swallow. The design depicts the silhouette of the barn swallow with the text ‘HIRUNDO RUSTICA’ (the barn swallow in Latin) at the top right, in semi-circle. At the bottom is the name of the issuing country ‘EESTI’ and underneath the year of issuance ‘2023’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 773,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_16-min.png',
    periodStartDate: '2023-06-01',
    quantity: 15_000_000,
    description:
        'Rugby World Cup France 2023. On the occasion of the Rugby World Cup organised in France, Monnaie de Paris celebrates rugby and this competition which will bring together teams from twenty nations. The design represents a stylized rugby player making a pass. In the background, the rugby field is the globe on which the rugby goalposts are placed. The set is part of an imaginary rugby galaxy where the other planets are oval. The emblem of the competition is inserted next to the player, while the name of the competition surrounds the design. The indication of the issuing country ‘RF’, the mintmark and the mint master mark are inserted under the image on the right-hand side. The name of the competition, the issuing country ‘FRANCE’ and the year ‘2023’ are inserted on the left hand side. The name of the competition surrounding the design, as well as and the ‘RF’ mention appear in the official font of the event, called Mobius. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 774,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_17-min.png',
    periodStartDate: '2023-06-01',
    quantity: 85_500,
    description:
        'The arrival of the French in Malta in 1798. In June 1798, Napoleon Bonaparte ended the rule of the Order of St John in Malta. During his short stay in Malta, Napoleon established a Republican Government and issued a thorough reform of laws and institutions of Malta. Amongst other things, slavery and the privileges of nobility were abolished. A lay state was established, and the court of the Inquisition was closed. The design depicts a personification of the French Republic as depicted on the official letterheads of the period. At the left-hand side is the inscription ‘225th ANNIVERSARY’ followed from the top to the right, in semi-circle, by the inscription ‘ARRIVAL OF THE FRENCH IN MALTA’. At the bottom is the year of issuance ‘2023’. The inscriptions ‘Liberté’ (Freedom) and ‘Egalité’ (Equality) are at the left and right side of the image, respectively. At the top left of the inscription ‘Egalité’ are the years ‘1798-2023’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 775,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_18-min.png',
    periodStartDate: '2023-06-01',
    quantity: 95_500,
    description:
        'The 550th anniversary of the birth of Nicolaus Copernicus. The design depicts a profile portrait of Copernicus, together with a stylized heliocentric representation of the universe as proposed by Copernicus. At the top left is the inscription ‘NICOLAUS COPERNICUS 1473 – 1543’ and at the bottom left is the name of the issuing country ‘MALTA’ followed by the year of issuance ‘2023’. Also at the bottom is the signature of the artist Daniela Fusco ‘FUSCO’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 776,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_19-min.png',
    periodStartDate: '2023-06-01',
    quantity: 25_000,
    description:
        '100th anniversary of the birth of Prince Rainier III. The design shows the portrait of Prince Rainier III. At the top, in semi-circle, is the name of the issuing country ‘MONACO’ followed by the year of issuance ‘2023’. At the bottom left is the inscription ‘100th ANNIVERSARY’ and at the right-hand side is the inscription ‘PRINCE RAINIER III’ in semi-circle. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 777,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_20-min.png',
    periodStartDate: '2023-06-01',
    quantity: 1_000_000,
    description:
        'The “Year of Art Nouveau,” which takes place during 2023 in Belgium. The design shows a decorative detail from the facade of the “Hotel Van Eetvelde,” an iconic town house in Brussels designed by Belgian Art Nouveau architect Victor Horta and recognized as a UNESCO World Heritage site. The curved, asymmetrical lines of this decorative detail reflect the characteristic nature-inspired style of the Art Nouveau movement. The lower half of the design showcases this detail, while the upper half is empty with the inscription “ART NOUVEAU.” The initials of the designer Iris Bruijns are located at the far right. The coin also includes the mintmark of Utrecht (Mercury staff) and the Belgian mint director’s mintmark, along with the year mark “2023” and the country code “BE.” The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 778,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_21-min.png',
    periodStartDate: '2023-06-01',
    quantity: 1_500_000,
    description:
        'The Spanish Presidency of the Council of the EU in 2023. The design features two images: the first is the logo of the Spanish Presidency of the Council of the EU, surrounded by the captions “ESPANA 2023 – PRESIDENCIA ESPANOLA” and “CONSEJO DE LA UNION EUROPEA.” The second image, at the lower part, represents the mint mark of the Fabrica Nacional de Moneda y Timbre Real Casa de la Moneda with the crowned “M.” The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 779,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_22-min.png',
    periodStartDate: '2023-05-01',
    quantity: 82_500,
    description:
        'The 150th anniversary of the death of Alessandro Manzoni. The design features Manzoni’s portrait, a pen, and the beginning of his masterpiece “I Promessi Sposi.” The inscription “CITTÀ DEL VATICANO” is placed at the top in a semi-circle, while the bottom has the inscription “Alessandro Manzoni” along with the years “1873–2023.” The left side shows the mintmark “R.” The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 780,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_23-min.png',
    periodStartDate: '2023-05-01',
    quantity: 82_500,
    description:
        'The 5th Centenary of the death of Pietro Perugino. The design shows Perugino’s portrait and a detail from the fresco “Baptism” in the Sistine Chapel. The inscription “PERUGINO” is at the bottom, with the dates “1523–2023.” The mintmark “R” is at the left. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 781,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_24-min.png',
    periodStartDate: '2023-05-01',
    quantity: 415_000,
    description:
        'The Ukrainian Sunflower. The design represents a sunflower, a national symbol of Ukraine, reflecting its role as one of the world’s largest producers of sunflower oil. The sunflower also symbolizes peace, especially after the war began in Ukraine. The inscription “SLAVA UKRAINAI!” (Glory to Ukraine) is at the top, and at the bottom is the country name “LATVIJA” and the year “2023.” The Latvian artist Krišs Salmanis is credited with the design. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 782,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_25-min.png',
    periodStartDate: '2023-03-01',
    quantity: 400_000,
    description:
        'Finland’s First Nature Conservation Act. The theme of the coin is a stylized beetle, symbolizing nature conservation. The inscription “NATURE CONSERVATION” appears at the top in Finnish and at the bottom in Swedish, with the year “2023.” The mintmark of the Mint of Finland is shown on the left, and the coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 783,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_26-min.png',
    periodStartDate: '2023-04-01',
    quantity: 56_000,
    description:
        'The 500th anniversary of the death of Perugino. The design showcases the Virgin Mary with the Child Jesus, a detail from the painting “Madonna with Child, Saint Sebastian and Saint John the Baptist” by Perugino. The inscription “PERUGINO” and the years “1523–2023” appear at the left, while the mintmark “R” is located at the right. The country “SAN MARINO” is written at the bottom, and the coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 784,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_27-min.png',
    periodStartDate: '2023-01-01',
    quantity: 500_000,
    description:
        'Together with Ukraine. The design features a stylized sunflower, its petals forming silhouettes of people holding hands, symbolizing unity, support, and hope. The sunflower represents the rising sun and freedom, with birds and symbols of courage. The inscriptions include “LIETUVA” (Lithuania), “KARTU SU UKRAINA” (Together with Ukraine), the year “2023,” and the mintmark of the Lithuanian Mint. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 785,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_28-min.png',
    periodStartDate: '2023-01-01',
    quantity: 1_500_000,
    description:
        'UNESCO: Cáceres. The design depicts a panoramic view of the Old Town of Cáceres, a UNESCO World Heritage site in Spain, highlighting its unique historic features from Northern Gothic, Islamic, Italian Renaissance, and New World arts. The inscription “ESPAÑA” appears at the top, while “CÁCERES” is at the bottom. The coin also includes the year “2023” and the mintmark. The outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 786,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_29-min.png',
    periodStartDate: '2023-03-01',
    quantity: 20_000_000,
    description:
        'The 1275th anniversary of Charlemagne’s birth. The design combines Charlemagne’s personal monogram and the octagon of Aachen Cathedral, merging the motifs into a dynamic, three-dimensional artwork. The inscriptions “KARL DER GROßE” (Charlemagne), “748–814,” and the year “2023” appear around the design. The coin includes the mintmark of the respective mint and the artist’s initials. The outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 787,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_30-min.png',
    periodStartDate: '2023-03-01',
    quantity: 1_000_000,
    description:
        'The 100th anniversary of the first blood transfusion in Slovakia. The design features an equilateral cross with blood group symbols (A, B, 0, AB) inscribed in each arm. In the center is a drop of blood, surrounded by test tubes containing stylized blood drops. The inscriptions “PRVÁ TRANSFÚZIA KRVI 1923 – 2023” and the country “SLOVENSKO” are featured. The mint mark of the Kremnica Mint is also present, along with the 12 stars of the European flag.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 788,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_31-min.png',
    periodStartDate: '2023-02-01',
    quantity: 120_000,
    description:
        'The 175th anniversary of the Luxembourg Parliament. The design depicts at the left-hand side the effigy of the Grand Duke Henri and at the right-hand side the building of the Chamber of Deputies. The year date ‘1848’ and the text ‘Chambre des députés’ appear above and at the right of the building. At the bottom centre, the name of the issuing country ‘LUXEMBOURG’ as well as the issuing year date ‘2023’ are represented. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 789,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_32-min.png',
    periodStartDate: '2023-02-01',
    quantity: 120_000,
    description:
        'The 25th anniversary of the membership of Grand Duke Henri to the International Olympic Committee. The design depicts the effigy of the Grand Duke Henri looking to the right and to the figure ‘25’. Several pictograms of Olympic disciplines are shown close to the effigy. Below the effigy, three intersecting circles are enriching the design. At the bottom right, the text ‘MEMBER VUM INTERNATIONALEN OLYMPESCHE KOMMITEE’ is depicted. The name of the country ‘LËTZEBUERG’ as well as the text ‘GROUSSHERZOG HENRI’ are represented at the left. The coin’s outer ring bears the 12 stars of the European flag. ',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 790,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_33-min.png',
    periodStartDate: '2023-01-01',
    quantity: 260_000,
    description:
        'Olympic Games Paris 2024. One hundred years after the Paris 1924 Olympic Games, the French capital will once again host the Summer Games in 2024. One year before the launch of the Olympic Games, the Monnaie de Paris is continuing the celebration by counting down to the start of the Games by highlighting its heritage and that of Paris. An event with international echo whose intensity gradually increases in the years leading up to the event, with already several €2 commemorative coins dedicated to the Olympic Games over the past years. The design of the coin depicts the Sower, a national figure and icon of French numismatics, practicing pugilism, the forerunner of boxing, in reference to the Antic Olympic Games. Her silhouette is in the foreground in front of the Pont-Neuf and its surroundings, typical of the Ile de la Cité area, a key element of the Parisian landscape. In the background, an athletic track, into which the emblem of Paris 2024 is inserted on the right-hand side, is represented. The year date, the RF mention and the mintmarks are inserted under the arch, on the bridge railing and in the Seine. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 791,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_34-min.png',
    periodStartDate: '2023-01-01',
    quantity: 3_000_000,
    description:
        'The 100th anniversary of the Air Force. The design depicts the reproduction of the logo of the Centenary of the Air Force. On the left ‘R’, identifying the Mint of Rome; above, ‘RI’, acronym of the Italian Republic; below, the arch-shaped inscription ‘AERONAUTICA MILITARE’; on the right, ‘VdS’, initials of the designer Valerio De Seta. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 792,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_35-min.png',
    periodStartDate: '2023-01-01',
    quantity: 3_000_000,
    description:
        'The 150th anniversary of the death of Alessandro Manzoni. The design features the half-length portrait of Alessandro Manzoni, inspired by the image of the Italian writer as depicted on the 100 000 lire banknote issued in 1967. On the left, ‘RI’, acronym of the Italian Republic, the dates ‘1873-2023’, the year of the death of the writer and the year of the coin’s issue, respectively, and the arch-shaped inscription ‘ALESSANDRO MANZONI’. On the right, ‘R’, identifying the Mint of Rome, and ‘AV’, initials of the designer Antonio Vecchio. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 793,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2023/2023_36-min.png',
    periodStartDate: '2023-01-01',
    quantity: 30_000_000,
    description:
        'Bundeslander series – Hamburg. The design shows the Elbphilharmonie concert hall, Hamburg’s newest landmark. The impressive and detailed representation of the concert building against the background of the maritime urban landscape represents the Land of Hamburg in an exceptionally convincing manner. The left half of the coin’s inner section includes Germany’s issuing country code, ‘D’, the year ‘2023’ and the mintmark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’). The right half features the artist’s initials, and the lower part features the inscription ‘HAMBURG’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GERMANY,
  ),

  // 2024 -------------------------------------------------------------
  CoinModel(
    id: 794,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_01-min.png',
    periodStartDate: '2024-10-01',
    quantity: 500_000,
    description:
        'Lithuanian tradition of straw gardens inscribed on the UNESCO Representative List of the Intangible Cultural Heritage of Humanity. The design features a stylised straw garden consisting of geometric shapes of varying sizes, one tip of which is pointed upwards (to the sky) and the other downwards (to the underground). The design also bears the inscription “LIETUVA” (LITHUANIA), the year of issue (2024) and the mintmark of the Lithuanian Mint. Straw gardens are a Baltic cultural tradition that carries decorative and ceremonial significance and is related to well-being and spirituality. The national side of the coin is designed by Tomas Dragūnas. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LITHUANIA,
  ),
  CoinModel(
    id: 795,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_02-min.png',
    periodStartDate: '2024-10-01',
    quantity: 7_000,
    description:
        '20 years since the Accession of Cyprus to the European Union. The design depicts Cyprus as a power of creation and development within the European environment, symbolized by the building of the European Commission in Brussels. The globe of the Earth is also shown, symbolizing the geopolitical importance of Cyprus and its contribution to peace and wellbeing of nations. The issuing country’s name “ΚΥΠΡΟΣ - KIBRIS” and the dates “2004-2024” are inscribed at the bottom of the design. Additionally, the phrase “20 ΧΡΌΝΙΑ ΑΠΌ ΤΗΝ ΈΝΤΑΞΗ ΤΗΣ ΚΎΠΡΟΥ ΣΤΗΝ ΕΥΡΩΠΑΪΚΉ ΈΝΩΣΗ” (i.e. 20 years since the accession of Cyprus to the European Union) is inscribed in circle around the design. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.CYPRUS,
  ),
  CoinModel(
    id: 796,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_03-min.png',
    periodStartDate: '2024-10-01',
    quantity: 60_000,
    description:
        '100 years of skiing in Andorra. It is considered that the first contacts of the Andorran population with skiing took place in 1924. Nowadays, skiing is the country\'s king of sports making Andorra a very popular destination thanks to its snow-capped mountains, spectacular landscapes and world-class ski resorts. The design of the coin commemorates the centenary of the practice of this sport in Andorra and reproduces the lower part of the silhouette of a skier together with the name of the issuing country ‘ANDORRA’ and the year of issue ‘2024’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 797,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_04-min.png',
    periodStartDate: '2024-10-01',
    quantity: 60_000,
    description:
        'UCI Mountain Bike World Championships 2024. This year, Andorra will host an important international sporting event: the UCI Mountain Bike World Championships 2024. The design of the coin shows a rider passing through a landscape showing the spectacular nature of this sport, with the inscription ‘CAMPIONATS DEL MÓN UCI DE BTT’ (UCI Mountain Bike World Championships 2024). The inscriptions of the issuing country ‘ANDORRA’ and the year of issuance ‘2024’ have been reproduced at the sides of the rider, as if they were another element of this sport. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ANDORRA,
  ),
  CoinModel(
    id: 798,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_05-min.png',
    periodStartDate: '2024-09-01',
    quantity: 400_000,
    description:
        'Finnish Architecture. The design shows the silhouettes of four buildings. The roof towers of the buildings point towards the centre. The texts ‘GESELLIUS’, ‘LINDGREN’, ‘SAARINEN’ and the indication of the issuing country ‘FI’, the mintmark and the year ‘2024’ run diagonally between the buildings. The texts and the silhouettes of the buildings form a clock-like composition on the circular image surface of the coin. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 799,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_06-min.png',
    periodStartDate: '2024-10-01',
    quantity: 413_000,
    description:
        'Himmeli. Himmeli is an ancient Latvian Christmas decoration. The design shows the traditional module shape the decoration is made up: the octahedron which consists of 12 interconnected straws and it symbolises the year with its 12 months. The himmeli is one of the oldest Christmas decorations, being in use long before the Christmas tree. At the bottom left is inscribed the name of the country of issuance “LATVIJA”. At the bottom right is inscribed the year of issuance “2024”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LATVIA,
  ),
  CoinModel(
    id: 800,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_07-min.png',
    periodStartDate: '2024-11-01',
    quantity: 1_000_000,
    description:
        '250 years of National and University Library (Narodna in univerzitetna knjižnica). Slightly tilted National and University Library’s doorhandle with Pegasus, a winged divine stallion, used as a symbolic guide for library’s visitors to the world of knowledge by the architect Jože Plečnik, is displayed on the coin. Doorhandle is the first contact with the institution that invites us to the world of knowledge and inspiration. At the top, in semi-circle, is the inscription “NARODNA IN UNIVERZITETNA KNJIŽNICA“. At the bottom are the name of the country of issuance “SLOVENIJA” and the year of issuance “2024”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVENIA,
  ),
  CoinModel(
    id: 801,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_08-min.png',
    periodStartDate: '2024-10-01',
    quantity: 82_900,
    description:
        'The 750th anniversary of the death of St. Thomas Aquinas. The design features St. Thomas Aquinas in the foreground in the vestments of the Dominican Order to which he belonged. In his left hand he holds a volume of his most important work, the Summa Theologiae, and in the other a pen. A shining sun stands out on the saint’s chest, a symbol of his great wisdom. Among the various titles he received, he is most widely known as the “Angelic Doctor”, which is quoted below and which glorifies his exceptional purity of soul and body. In the background on the left is the lily, a symbol of chastity, and the Church of St. Thomas of Roccasecca, the first religious building in the world built in honor of St. Thomas Aquinas, declared a saint on July 18, 1323 by Pope John XXII. At the top is the inscription “CITTÀ DEL VATICANO”. At the left is the year “1274” and at the right the year “2024” and underneath it are the mintmark “R” and the name of the artist “A. CICCONI”. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 802,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_09-min.png',
    periodStartDate: '2024-10-01',
    quantity: 200_000,
    description:
        'The 500th anniversary of Marko Marulić’s enduring legacy. In recognition of this significant milestone, the Government of the Republic of Croatia has proclaimed 2024 as the Year of Marko Marulić. The central motif of the national side of the coin is the portrait of Marko Marulić (1450–1524), Croatian writer. Marko Marulić (Marul) was born in Split in 1450 and is a prominent representative of European Christian humanism and Renaissance epics. His literary works, mostly written in Latin, are comprised of works in verse and prose, his literary models being the Bible, the Church Fathers\' philosophy and classical antiquity. He wrote the epic poem Judita, his magnum opus, in Croatian. It is the first artistic epic in Croatian literature composed in the Croatian language to contain the underlying poetics of Virgil and the Biblical epics. In it, Marulić achieved a true Renaissance synthesis of Croatian, Latin and Italian literary tradition, thus creating a masterpiece. Completed in 1501, it was first published twenty years later. The coin also features the inscriptions of the two-letter issuing country code "HR" (Croatia), the year of issuance "2024." and the words "MARKO MARULIĆ", which are all inscribed circularly along the edge of the coin\'s core. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 803,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_10-min.png',
    periodStartDate: '2024-09-01',
    quantity: 1_000_000,
    description:
        '100th anniversary of the Košice Peace Marathon. The design depicts, on the left side, a marathon runner and, on the right side, a detail of St Elizabeth’s Cathedral, one of the architectural landmarks of Košice. Inscribed across the lower part of the design are the name of the issuing country ‘SLOVENSKO’ and, below it, the marathon’s inaugural year ‘1924’ and the coin’s year of issuance ‘2024’. The inscription ‘KOŠICKÝ MARATÓN’ runs along the edge of the upper half of the design. Next to the lower left edge is the mint mark of the Kremnica Mint (Mincovňa Kremnica), consisting of the letters ‘MK’ placed between two dies. To the right of it are the stylised initials ‘LR’, referring to the national side’s designer Roman Lugár. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SLOVAKIA,
  ),
  CoinModel(
    id: 804,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_11-min.png',
    periodStartDate: '2024-09-01',
    quantity: 56_000,
    description:
        '530th anniversary of the death of Ghirlandaio. In the centre is the Virgin in prayer, a detail of the painting ‘Adoration of the Shepherds’ by Domenico Ghirlandaio, kept in the Sassetti Chapel of Santa Trinità (Florence). On the left are the inscription ‘SAN MARINO’ and the letter ‘R’, the identifier of the Mint of Rome; on the right, the inscription ‘GHIRLANDAIO’ and the dates ‘1494’ and ‘2024’; at the bottom, the initials of the artist, Valerio de Seta (‘VdS’). The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 805,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_12-min.png',
    periodStartDate: '2024-07-01',
    quantity: 520_000,
    description:
        'Portugal’s participation in the 33rd Olympic Games. The design shows a set of elements arranged in the shape of a heart, representing a collective hug; around the heart there are 15 circles in symbolic reference to the Olympic rings and to the continents they represent, the tip of the heart shape is surmounted by the coat of arms of Portugal; the centre of the ‘hug’ holds the logo of the Portuguese Olympic Committee, conveying the idea that the hearts of the Portuguese will collectively beat for the Portuguese Olympic team at the Paris 2024 Olympic Games. Below the heart shape, the caption ‘Equipa Olímpica Portugal’, and the year ‘2024’; on the left the mintmark ‘Casa da Moeda’; and on the right the name of the designer. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 806,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_13-min.png',
    periodStartDate: '2024-07-01',
    quantity: 750_000,
    description:
        '50 years from the restoration of democracy in Greece. The design features the Hellenic Parliament building, surrounded by the wording ‘50 ΧΡΟΝΙΑ ΑΠΟ ΤΗ ΜΕΤΑΠΟΛΙΤΕΥΣΗ’ (‘50 YEARS FROM THE RESTORATION OF DEMOCRACY IN GREECE’) and ‘ΕΛΛΗΝΙΚΗ ΔΗΜΟΚΡΑΤΙΑ’ (‘HELLENIC REPUBLIC’). Below is inscribed a palmette (mintmark of the Greek Mint). The fall of the colonels’ junta on 24 July 1974 marked the restoration of democracy in Greece following a seven-year dictatorship. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 807,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_14-min.png',
    periodStartDate: '2024-07-01',
    quantity: 750_000,
    description:
        '150 years from the birth of Penelope Delta. The design features a portrait of Penelope Delta. The theme is bordered by the wording ‘ΠΗΝΕΛΟΠΗ ΔΕΛΤΑ 1874-1941’ (‘PENELOPE DELTA 1874-1941’) and ‘ΕΛΛΗΝΙΚΗ ΔΗΜΟΚΡΑΤΙΑ’ (‘HELLENIC REPUBLIC’). To the left is a palmette (mintmark of the Greek Mint) and to the right the minting year. Penelope Delta was a pioneer of children’s literature in Greece. Generations of Greek children have been raised with her books, which remain popular. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GREECE,
  ),
  CoinModel(
    id: 808,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_15-min.png',
    periodStartDate: '2024-06-01',
    quantity: 85_500,
    description:
        "The Maltese Honey Bee. The design was created by Maria Anna Frisone and depicts the Maltese honey bee (Apis Mellifera Ruttneri) which is one of the endemic species of flora and fauna found on the Maltese islands. The design shows a rendition of the bee with a flower and a honeycomb filling up the background. The coin raises awareness of one of Malta's endemic species and encapsulates the work of the bee which pollinates flowers and makes honey. At the left side is the inscription of the issuing country ‘MALTA’ and at the right side the year of issuance ‘2024’. The coin’s outer ring bears the 12 stars of the European flag.",
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 809,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_16-min.png',
    periodStartDate: '2024-03-01',
    quantity: 400_000,
    description:
        'Elections and democracy. The design shows stylized ballots. Ballots consist of circles and rectangles. The subject is abstract, but still recognizable. There are eight ballots, and they are partially overlapped, creating smaller geometric shapes at the intersections of the overlapping tickets. The year 2024 is at the bottom. The lettering ‘FI’ is on the right-hand side slightly above the midline. The text VAALIT ♦ DEMOKRATIA rotates on the right-hand side of the money ring. The text VAL ♦ DEMOKRATI is circling the coin on the left-hand side. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FINLAND,
  ),
  CoinModel(
    id: 810,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_17-min.png',
    periodStartDate: '2024-04-01',
    quantity: 1_000_000,
    description:
        'The cornflower – Estonian national flower. The design shows the silhouette of a cornflower with the text ‘CENTAUREA CYANUS’ (cornflower in Latin) at the top left, in semi-circle. At the bottom is the name of the issuing country ‘EESTI’ and underneath the year of issuance ‘2024’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ESTONIA,
  ),
  CoinModel(
    id: 811,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_18-min.png',
    periodStartDate: '2024-06-01',
    quantity: 15_000,
    description:
        '500 years since the signature of the Treaty with Charles V. The design shows the effigy of Charles V. At the top, in semi-circle, is the name of the issuing country ‘MONACO’. At the bottom is the inscription ‘1524 - TRAITE AVEC CHARLES QUINT (Treaty with Charles V) - 2024’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MONACO,
  ),
  CoinModel(
    id: 812,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_19-min.png',
    periodStartDate: '2024-06-01',
    quantity: 200_000,
    description:
        'Varaždin (Stari grad Varaždin – the Old Town of Varaždin). The design features the keep of the Varaždin Castle (12th – 16th century). Varaždin is first mentioned in 1181. Having suffered massive casualties in the Tatar invasion of 1242, it was built as a royal fortress, which would become known as the Old Town. Its appearance has changed through the centuries: from a strong medieval fortress surrounded by water-filled moats to the main fortress and armoury of Slavonian Military Border and Varaždin military headquarters and a beautiful Renaissance castle. At present, the Old Town is the most important and magnificent historical building of the City of Varaždin, a highest-category monument of the Croatian architectural heritage. The coin also features the name of the issuing country ‘HRVATSKA’ (Croatia), the year of issuance ‘2024’, and the words ‘STARI GRAD VARAŽDIN’ (the Old Town of Varaždin), which are all inscribed circularly at the top and the bottom of the design. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.CROATIA,
  ),
  CoinModel(
    id: 813,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_20-min.png',
    periodStartDate: '2024-06-01',
    quantity: 85_500,
    description:
        'Iċ-Ċittadella (The Citadel). The design was created by Noel Galea Bason and depicts the walled city known locally as ‘Iċ-Ċittadella’ (The Citadel) on the island of Gozo, which is the second largest island forming the Maltese archipelago. In their present form, the fortifications encircling the ‘Ċittadella’ were built and modified by the Order of St John. The design shows a depiction of the city with its fortified walls. At the bottom left is the inscription of the issuing country ‘MALTA’ and at the bottom right is the year of issuance ‘2024’. At the top is the inscription ‘ĊITTADELLA’ and underneath is the inscription ‘GOZO’. This coin is intended to be part of a series dedicated to Maltese walled cities e.g. Mdina and Valletta which are an intrinsic part of Maltese and European cultural heritage. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.MALTA,
  ),
  CoinModel(
    id: 814,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_21-min.png',
    periodStartDate: '2024-05-01',
    quantity: 24_000_000,
    description:
        'The Eiffel Tower. For the countdown to the Paris 2024 Olympic Games, Monnaie de Paris celebrates the road to the games through Paris as well as its own heritage. 100 years after the 1924 Games, the French capital is once again hosting the Summer Games. This is an event with international resonance, gradually building in intensity in the years leading up to the event, culminating in 2024 with the issue of two commemorative two-euro coins dedicated to the Olympic Games. The design represents an expression of France through iconic buildings; the Eiffel Tower and the Notre Dame de la Garde Basilica situated in Marseille are united there. In the background, a tiare flower represents the island of Tahiti where the surfing competitions will take place. The Eiffel Tower is in motion, she carries the values of sport. Its arms are represented by 73 rivets signifying the host communities. For the first time, the Olympic and Paralympic symbols are brought together, to celebrate the Games for all. The year date, the indication of the issuing country ‘RF’ as well as the mintmarks are inserted on the athletics track. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 815,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_22-min.png',
    periodStartDate: '2024-05-01',
    quantity: 82_900,
    description:
        'The 150th anniversary of the birth of Guglielmo Marconi. The design features Marconi’s portrait at the center, the portraits of Pope Pius XI at the right, and future Pius XII at the left. At the top right, in semi-circle, is the inscription ‘GUGLIELMO MARCONI’ and underneath it the dates ‘1874’ and ‘2024’. At the bottom is the inscription ‘CITTÀ DEL VATICANO’ followed by the name of the artist ‘L. PANCOTTO’ (Loredana Pancotto). At the left is the mintmark ‘R’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.VATICAN,
  ),
  CoinModel(
    id: 816,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_23-min.png',
    periodStartDate: '2024-05-01',
    quantity: 2_130_000,
    description:
        "Fight against cancer in Belgium. The design shows in the centre a ribbon, which is used as a universal symbol to express engagement in the fight against cancer. The shape of the ribbon extends further along the two sides in curved lines, symbolising the movement of a heartbeat on a monitor, as an expression of life and vitality. Three lines can be seen at the top, as a reference to a rainbow (symbolising hope and consolation). Inserted in the bottom line is the country code BE and the year 2024. In the lower part of the piece are inscriptions in French and Dutch: 'Lutte contre le cancer' - 'Strijd tegen kanker'. The initials of the designer Iris Bruijns are located on the left side above the inscriptions. As the Royal Dutch Mint will strike the coins, the mintmark of Utrecht, a mercury staff is located at the very bottom of the piece, together with the Belgian mint director mintmark, an aster flower in front of an Erlenmeyer flask. The coin’s outer ring bears the 12 stars of the European flag.",
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 817,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_24-min.png',
    periodStartDate: '2024-04-01',
    quantity: 515_000,
    description:
        'The 50th anniversary of the 25th of April 1974. The 25th of April 1974 is the date of the revolution that marked the establishment of the democratic rule in Portugal and the beginning of a journey of profound economic, social and cultural transformations that led to the Europeanization of the country. At the centre of the design, a carnation symbolizes the revolution, surrounded by multiple eccentric circles that suggest that people’s actions and beliefs may change over the years, but remain essentially true to the principles of the revolution. On the edge, on the right, the verse ‘Esta é a madrugada que eu esperava’ [This is the dawn I have been waiting for], and the name of its author, poet ‘Sophia de Mello Breyner Andresen’; and on the left by the national coat of arms, the captions ‘Portugal’ and ‘25 April 1974_2024’, followed by the name of the designer and the mintmark ‘Casa da Moeda’, the name of the Portuguese Mint. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.PORTUGAL,
  ),
  CoinModel(
    id: 818,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_25-min.png',
    periodStartDate: '2024-04-01',
    quantity: 56_000,
    description:
        "The 50th anniversary of the Declaration of Citizens' Rights and the Fundamental Principles of San Marino. In the centre is represented an open book bearing the inscription ‘I DIRITTI DELLA PERSONA UMANA SONO INVIOLABILI’ (The rights of the human person are inviolable), taken from Article 5 of the Law n°59 of 8 July 1974 ‘Declaration of Citizens' Rights and of the fundamental principles of the San Marinese legal order’. At the top are the silhouettes of the Statue of Liberty and the Public Palace, as well as the name of the issuing country ‘SAN MARINO’. On the left, the letter ‘R’, identifying the Mint of Rome. At the bottom centre is the year of issuance ‘2024’ and the initials of the engraver Emanuele Ferretti (‘E.F. INC. ’). The coin’s outer ring bears the 12 stars of the European flag.",
    country: CountryNames.SAN_MARINO,
  ),
  CoinModel(
    id: 819,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_26-min.png',
    periodStartDate: '2024-01-01',
    quantity: 1_500_000,
    description:
        '200 years since the creation of the National Police as a state security corp. The design shows the emblem of the National Police. Surrounding it are the legends: ‘ESPANA- POLICIA NACIONAL 1824-2024’. In the lower right part of the emblem is the mint mark ‘Eme Coronada’. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 820,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_27-min.png',
    periodStartDate: '2024-01-01',
    quantity: 1_500_000,
    description:
        'The recognition of Seville (Archivo de Indias, Real Alcazar de Sevilla y Catedral de Sevilla) as a UNESCO World Heritage Site. The design shows a view of the ‘Patio de las Doncellas’ of the Real Alcåzar of Seville. At the top, in a circular direction and in capital letters, the legend SEVILLA; below, the mint mark ‘Eme Coronada’. At the bottom, in a circular direction and in capital letters, the legend ESPANA and the year of issue 2024. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.SPAIN,
  ),
  CoinModel(
    id: 821,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_28-min.png',
    periodStartDate: '2024-01-01',
    quantity: 2_128_500,
    description:
        'The Belgian presidency of the Council of the EU. The design depicts a flock of birds (swallows), which is a symbol for the workings of the EU, by moving together as a group yet with each member having room to manoeuvre in an individual manner, thereby creating one complex, dynamic entity. The group therefore primarily stands for togetherness. During the flight of the swallows, there is always one who pulls the head and takes the group in tow, which will be Belgium in the first half of 2024. The 27 birds also symbolise the total number of EU member states. The country code ‘BE’ is located in between the birds, in the upper right side of the design. Underneath the flock of birds, a vacant space on the lower half is filled with the description ‘BELGIAN PRESIDENCY OF THE COUNCIL OF THE EU 2024’. At the far left are the initials of the designer Iris Bruijns. As the Royal Dutch Mint will strike the coins, the mintmark of Utrecht, a mercury staff is also located on the far left, above which stands the Belgian mint director mintmark, an aster flower in front of an Erlenmeyer flask. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.BELGIUM,
  ),
  CoinModel(
    id: 822,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_29-min.png',
    periodStartDate: '2024-03-01',
    quantity: 30_000_000,
    description:
        'The 175th anniversary of the Frankfurt Constitution (also known as the St Paul’s Church Constitution, which was the first attempt to create a unified German nation state.). The design features several thematic layers. In the foreground is a perspective depiction of St Paul’s Church with the representatives of the national constitutional assembly filing in. This overlays a rendering of the constitutional document and a quill, representing the outcome of the Frankfurt Parliament. Finally, the design is crowned by three female allegories – Unity, Justice and Freedom – and the tricolour flag of black, red and gold. The vibrant three- dimensional relief evokes the timelessness of the basic democratic principles that were put down in writing for the first time and in a foundational way in the Frankfurt Constitution. The coin’s inner ring also features the inscription ‘PAULSKIRCHENVERFASSUNG 1849’ (‘St Paul’s Church Constitution 1849’) and, at the bottom, the year of issue ‘2024’, Germany’s issuing country code ‘D’, the mint mark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’), and the initials of the artist, Bodo Broschat from Berlin. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.GERMANY,
  ),
  CoinModel(
    id: 823,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_30-min.png',
    periodStartDate: '2024-01-01',
    quantity: 200_000,
    description:
        'The 175th anniversary of the death of Grand Duke Guillaume II. The design depicts on the left side the statue of Grand Duke Guillaume II on horseback and on the right side the effigy of Grand Duke Henri looking to the left. The texts ‘GROUSSHERZOGE VU LÉTZEBUERG’ and ‘GUILLAUME II 1792-1849’ are depicted in semicircular form in the upper left part of the design. The year-date ‘2024’ and the figure ‘175’ as indication of the anniversary appear below the effigy of Grand Duke Henri. As the producing mint is not yet known, the mint marks might be adapted within the spaceholder. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 824,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_31-min.png',
    periodStartDate: '2024-01-01',
    quantity: 510_000,
    description:
        'The 100th anniversary of the signature by the Grand Duchess Charlotte of the Grand Ducal decree concerning the issuance of the divisional currency in nickel, commonly called ‘Feierstéppler’. The design depicts in its centre the representation of the Luxembourg coin issued in 1924 showing a steel industry worker, this representation being integrated in the figure ‘100’ as indication of the anniversary of the first issuance of one of the longest circulating Luxembourg franc coins. The name of the issuing country LÉTZEBUERG as well as the year date 2024 appear at the top of the design. The bottom of the design depicts the word ‘FEIERSTÉPPLER’, the common and popular designation of this coin. The monogram (letter ‘H’ with a crown) is a representation of Grand Duke Henri. As the producing mint is not yet known, the mint marks might be adapted within the spaceholder. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.LUXEMBOURG,
  ),
  CoinModel(
    id: 825,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_32-min.png',
    periodStartDate: '2024-01-01',
    quantity: 510_000,
    description:
        'Jeux Olympiques 2024 - Lutte. For the countdown to the Paris 2024 Olympic Games, Monnaie de Paris celebrates the road to the games through Paris as well as its own heritage. 100 years after the 1924 Games, the French capital is once again hosting the Summer Games. This is an event with international resonance, gradually building in intensity in the years leading up to the event, culminating in 2024 with the issue of two commemorative two-euro coins dedicated to the Olympic Games. The design represents Hercules, a national figure and icon of French numismatics, practicing antique wrestling with Notre- Dame’s Chimera, in reference to the Olympic Games of the Ancient era. Both wrestlers are depicted in the foreground in front of Notre-Dame Cathedral. In the background, an athletics track in which the emblem of Paris 2024 is inserted on the left side, is represented. The yeardate, the RF indication, as well as the mintmarks are inserted on the athletics track. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.FRANCE,
  ),
  CoinModel(
    id: 826,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_33-min.png',
    periodStartDate: '2024-01-01',
    quantity: 3_000_000,
    description:
        'The 250th anniversary of the foundation of the Guardia di Finanza Corps. The design depicts, in the centre, a stylized version of the heraldic symbol of Guardia di Finanza Corps: it portrays the concept of security and provides a future vision of the Corps’ role celebrating the past, by combining it with the years to come and challenges they will continue to face. This emblem includes different elements: mountain, sea and the sky, which are the natural environments where Corps operate; the Griffon, a mythological animal which, according to the legend, supervises protection of the Treasury, represented by the chest of the State, and the turreted crown. At the top, in semi-circle, is the inscription ‘GUARDIA DI FINANZA’. Below, ‘RI’, acronym of the Italian Republic and the dates ‘1774-2024’, year of the establishment of the Guardia di Finanza Corps and year of coin’s issue respectively; on the right, ‘R’, identifying the Mint of Rome and ‘MB’, the initials of designer Marta Bonifacio. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 827,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_34-min.png',
    periodStartDate: '2024-01-01',
    quantity: 3_000_000,
    description:
        'Rita Levi-Montalcini. The design depicts in the foreground, a half-length portrait of Rita Levi-Montalcini inspired by a Manuela Fabbri’s photography; in the background, a microscope, taken from a medal designed by Gino Levi-Montalcini, brother of the well renown scientist, whose base is horseshoe shaped, as a good luck charm for the awarding of the Nobel Prize for Medicine in the 1986. Above, the arch-shaped inscription ‘RITA LEVI-MONTALCINI’; on the left ‘RI’, acronym of the Italian Republic and ‘R’, identifying the Mint of Rome; below ‘2024’, the year of the coin’s issue; on the right, ‘SP’, initials of the designer Silvia Petrassi. The coin’s outer ring bears the 12 stars of the European flag.',
    country: CountryNames.ITALY,
  ),
  CoinModel(
    id: 828,
    type: CoinType.COMMEMORATIVE,
    image: 'assets/coins/_commemoratives/2024/2024_35-min.png',
    periodStartDate: '2024-01-01',
    quantity: 30_000_000,
    description:
        'Mecklenburg-Vorpommern. The coin is dedicated to the German state (Land) of Mecklenburg-Western Pomerania. It is the second issuance in the second series of German 2-euro commemorative coins featuring the German states, or Länder. Each year, a coin pays tribute to one of the 16 Länder by depicting a significant building or landmark. The order of the states is based on the rotating presidency of the Bundesrat, which is one of the five permanent constitutional bodies of the Federal Republic of Germany and represents the interests of the Länder. The design shows the Königsstuhl, an iconic formation of chalk cliffs and beech forest located in Jasmund National Park on the island of Rügen. The cliffs are depicted from the perspective of the shoreline, thereby highlighting the monumentality of this unique natural landmark in a particularly effective manner. The beautifully detailed image provides scale through the combined rendering of sea, birdlife and humankind. The modern typography, in harmony with the flying seagull, is skilfully integrated into the relief. The upper half of the coin’s inner circle features the inscription ‘MECKLENBURG VORPOMMERN’, the year of issue ‘2024’, Germany’s issuing country code ‘D’ and, at the upper right, the letter ‘X’ as placeholder for the mint mark of the respective mint (‘A’, ‘D’, ‘F’, ‘G’ or ‘J’). The initials of the artist Michael Otto (from Rodenbach, Germany) are shown in the lower half of the inner circle. The coin’s outer ring bears the 12 stars of the European flag',
    country: CountryNames.GERMANY,
  ),
];
