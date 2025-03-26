import 'package:coinllector_app/routing/routes.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  AppDrawer({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final List<String> _routes = [
    AppRoutes.coinsView,
    AppRoutes.profileView,
    AppRoutes.settingsView,
  ];

  final List<String> _menuTitles = ["Coins", "Profile", "Settings"];

  final List<IconData> _menuIcons = [
    Icons.monetization_on,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drawer Header
          Padding(
            padding: const EdgeInsets.all(AppSizes.p16),
            child: Column(
              children: [
                const SizedBox(height: AppSizes.p24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Coinllector",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          // Drawer Menu Items (Looping through routes)
          ...List.generate(_routes.length, (index) {
            bool isActive = selectedIndex == index;
            return GestureDetector(
              onTap: () => onItemTapped(index),
              child: Container(
                decoration:
                    isActive
                        ? BoxDecoration(
                          gradient:
                              AppColors.gradient, // Active item background
                          borderRadius: BorderRadius.circular(8),
                        )
                        : null,
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                child: ListTile(
                  leading: Icon(
                    _menuIcons[index],
                    color:
                        isActive
                            ? Colors.white
                            : Colors.white.withValues(alpha: 0.6),
                  ),
                  title: Text(
                    _menuTitles[index],
                    style: TextStyle(
                      color:
                          isActive
                              ? Colors.white
                              : Colors.white.withValues(alpha: 0.6),
                    ),
                  ),
                  selected: isActive,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
