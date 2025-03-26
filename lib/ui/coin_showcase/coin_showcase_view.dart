import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coin_showcase/widgets/showcase_buttons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinShowcase extends StatelessWidget {
  const CoinShowcase({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              // Header section
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
                height: 220,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 28,
                      height: 28,
                      child: Transform.scale(
                        scale: 1.33,
                        child: Checkbox(
                          value: true,
                          onChanged: (bool? value) {},
                        ),
                      ),
                    ),
                    const CircleAvatar(radius: 16),
                  ],
                ),
              ),

              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Column(
                    children: [
                      const SizedBox(height: 64),
                      // Centered stats row
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "1M",
                                  style: TextStyle(
                                    color: AppColors.onSurfaceVariant,
                                  ),
                                ),
                                const Text("Quantity"),
                              ],
                            ),
                            SizedBox(width: AppSizes.p24),
                            Column(
                              children: [
                                Text(
                                  "jan 2004",
                                  style: TextStyle(
                                    color: AppColors.onSurfaceVariant,
                                  ),
                                ),
                                const Text("Release"),
                              ],
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: AppSizes.p16),

                      // Left-aligned text section
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSizes.p16,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Andorra",
                              style: Theme.of(context).textTheme.titleLarge
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'The €2 coin shows the coat of arms of Andorra with the motto "virtus unita fortior" (virtue united is stronger). Edge-lettering of the €2 coin: 2 **, repeated six times.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // POSITIONED ITEMS -----------------------------------

          // Coin image
          Positioned(
            top: kToolbarHeight + 24 + AppSizes.p32,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                width: 148,
                "assets/value/value-2euro.png",
                fit: BoxFit.fill,
              ),
            ),
          ),

          // AppBar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text(type),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => context.pop(),
              ),
            ),
          ),

          // Navigation Buttons
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: ShowcaseButtons(onBackPressed: () {}, onNextPressed: () {}),
          ),
        ],
      ),
    );
  }
}
