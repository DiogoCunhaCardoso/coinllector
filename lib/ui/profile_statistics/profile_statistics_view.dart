import 'package:coinllector_app/shared_components/custom_app_bar.dart';
import 'package:coinllector_app/shared_components/highest_coin_card.dart';
import 'package:coinllector_app/shared_components/tab_button.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:flutter/material.dart';

class ProfileStatisticsView extends StatefulWidget {
  const ProfileStatisticsView({super.key});

  @override
  ProfileStatisticsViewState createState() => ProfileStatisticsViewState();
}

class ProfileStatisticsViewState extends State<ProfileStatisticsView> {
  int _selectedIndex = 0;

  // Arrays with data for Value and Country
  final List<Map<String, String>> valueData = [
    {
      'countryName': 'Portugal',
      'image':
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Flag_of_Portugal_%28alternate%29.svg/255px-Flag_of_Portugal_%28alternate%29.svg.png",
      'coinsOwned': '15',
      'totalCoins': '25',
    },
    {
      'countryName': 'France',
      'image':
          "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/1024px-Flag_of_France.svg.png",
      'coinsOwned': '20',
      'totalCoins': '30',
    },
    {
      'countryName': 'Germany',
      'image':
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/255px-Flag_of_Germany.svg.png",
      'coinsOwned': '18',
      'totalCoins': '28',
    },
  ];

  final List<Map<String, String>> countryData = [
    {'countryName': 'Country A', 'coinsOwned': '10', 'totalCoins': '20'},
    {'countryName': 'Country B', 'coinsOwned': '25', 'totalCoins': '40'},
    {'countryName': 'Country C', 'coinsOwned': '30', 'totalCoins': '45'},
  ];

  List<Map<String, String>> getSelectedData() {
    return _selectedIndex == 0 ? valueData : countryData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Statistics", scaffoldContext: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p16,
          vertical: AppSizes.p24,
        ),
        child: Column(
          children: [
            Container(
              height: 48, // Set any height you want
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.onSurfaceVariant,
                borderRadius: BorderRadius.circular(AppSizes.r8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabButton(
                    text: "Value",
                    isSelected: _selectedIndex == 0,
                    onPressed: () => setState(() => _selectedIndex = 0),
                  ),
                  const SizedBox(width: AppSizes.p8),
                  TabButton(
                    text: "Country",
                    isSelected: _selectedIndex == 1,
                    onPressed: () => setState(() => _selectedIndex = 1),
                  ),
                ],
              ),
            ),

            // List of cards
            Expanded(
              child: ListView.builder(
                itemCount: getSelectedData().length,
                itemBuilder: (context, index) {
                  final item = getSelectedData()[index];
                  return Padding(
                    padding: EdgeInsets.only(
                      top: index == 0 ? AppSizes.p24 : AppSizes.p8,
                    ),
                    child: HighestCoinCard(
                      countryName: item['countryName']!,
                      coinsOwned: item['coinsOwned']!,
                      totalCoins: item['totalCoins']!,
                      image: item['image']!,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
