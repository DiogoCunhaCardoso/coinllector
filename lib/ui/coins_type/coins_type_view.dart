import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coins/widgets/tab_content.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinsByTypeView extends StatelessWidget {
  const CoinsByTypeView({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> coinsData = [
      {"image": "assets/value/value-$type.png", "type": "commemorative"},
      {"image": "assets/value/value-$type.png", "type": "commemorative"},
      {"image": "assets/value/value-$type.png", "type": "commemorative"},
      {"image": "assets/value/value-$type.png", "type": "commemorative"},
      {"image": "assets/value/value-$type.png", "type": "commemorative"},
      {"image": "assets/value/value-$type.png", "type": "commemorative"},
      {"image": "assets/value/value-$type.png", "type": "commemorative"},
    ];

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
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  gradient: AppColors.gradient,
                ),
                padding: const EdgeInsets.only(
                  top: kToolbarHeight + 24,
                  left: 24,
                  right: 24,
                  bottom: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/logo.png"),
                    const SizedBox(height: AppSizes.p24),
                    const Text("Total Coins"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("127/"), Text("231 Coins")],
                    ),
                  ],
                ),
              ),

              // Content Area
              Expanded(
                child: CoinsContent(
                  coins: coinsData,
                  onCoinTap: (type) {
                    context.go(AppRoutes.coinsShowcase(type));
                  },
                ),
              ),
            ],
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
