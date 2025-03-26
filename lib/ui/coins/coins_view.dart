import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/services/database_service.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/themes/typography.dart';
import 'package:coinllector_app/ui/coins/widgets/tab_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinsView extends StatefulWidget {
  const CoinsView({super.key});

  @override
  State<CoinsView> createState() => _CoinsViewState();
}

class _CoinsViewState extends State<CoinsView> {
  final DatabaseService _databaseService = DatabaseService.instance;
  int _selectedIndex = 0; // Track selected tab index

  final List<Map<String, String>> coinsData = [
    {"image": "assets/value/value-commemorative.png", "type": "commemorative"},
    {"image": "assets/value/value-2euro.png", "type": "2euro"},
    {"image": "assets/value/value-1euro.png", "type": "1euro"},
    {"image": "assets/value/value-50cent.png", "type": "50cent"},
    {"image": "assets/value/value-20cent.png", "type": "20cent"},
    {"image": "assets/value/value-10cent.png", "type": "10cent"},
    {"image": "assets/value/value-5cent.png", "type": "5cent"},
    {"image": "assets/value/value-2cent.png", "type": "2cent"},
    {"image": "assets/value/value-1cent.png", "type": "1cent"},
  ];

  final List<Map<String, String>> coinsCountriesData = [
    {"image": "assets/country/_eu-flag.png", "type": "country"},
    {"image": "assets/country/andorra-state-flag.png", "type": "country"},
    {"image": "assets/country/austria-flag.png", "type": "country"},
    {"image": "assets/country/belgium-flag.png", "type": "country"},
    {"image": "assets/country/croatia-flag.png", "type": "country"},
    {"image": "assets/country/cyprus-flag.png", "type": "country"},
    {"image": "assets/country/estonia-flag.png", "type": "country"},
    {"image": "assets/country/finland-flag.png", "type": "country"},
    {"image": "assets/country/germany-flag.png", "type": "country"},
    {"image": "assets/country/greece-flag.png", "type": "country"},
    {"image": "assets/country/france-flag.png", "type": "country"},
    {"image": "assets/country/ireland-flag.png", "type": "country"},
    {"image": "assets/country/italy-flag.png", "type": "country"},
    {"image": "assets/country/latvia-flag.png", "type": "country"},
    {"image": "assets/country/lithuania-flag.png", "type": "country"},
    {"image": "assets/country/luxembourg-flag.png", "type": "country"},
    {"image": "assets/country/malta-flag.png", "type": "country"},
    {"image": "assets/country/monaco-state-flag.png", "type": "country"},
    {"image": "assets/country/netherlands-flag.png", "type": "country"},
    {"image": "assets/country/portugal-flag.png", "type": "country"},
    {"image": "assets/country/san-marino-state-flag.png", "type": "country"},
    {"image": "assets/country/slovakia-flag.png", "type": "country"},
    {"image": "assets/country/slovenia-flag.png", "type": "country"},
    {"image": "assets/country/spain-flag.png", "type": "country"},
    {"image": "assets/country/vaticano-state-flag.png", "type": "country"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Header container (extends under AppBar)
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(AppSizes.r24),
                    bottomLeft: Radius.circular(AppSizes.r24),
                  ),
                  gradient: AppColors.gradient,
                ),
                padding: const EdgeInsets.only(
                  top: kToolbarHeight + 24,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/logo.png"),

                    const SizedBox(height: AppSizes.p24),
                    const Text("Total Coins", style: AppTextStyles.label),
                    const SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        style: AppTextStyles.bodyLarge,
                        children: const [
                          TextSpan(text: "127/"),
                          TextSpan(text: "231"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Custom Tab Bar
                    Container(
                      height: 52,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.onSurface.withValues(alpha: 0.6),
                        borderRadius: BorderRadius.circular(12),
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
                  ],
                ),
              ),

              // Tab Content
              Expanded(
                child: IndexedStack(
                  index: _selectedIndex,
                  children: [
                    CoinsContent(
                      coins: coinsData,
                      onCoinTap:
                          (type) => context.go(AppRoutes.coinsWithType(type)),
                    ),
                    CoinsContent(
                      coins: coinsCountriesData,
                      onCoinTap:
                          (type) => context.go(AppRoutes.coinsWithType(type)),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// TabButton widget (should be defined elsewhere in your project)
class TabButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onPressed;

  const TabButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? AppColors.onSurface : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color:
                    isSelected
                        ? AppColors.surface
                        : AppColors.surface.withValues(alpha: 0.6),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
