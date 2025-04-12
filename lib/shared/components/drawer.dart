import 'package:coinllector_app/config/router/routes.dart';
import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/data/datasources/remote/stripe/stripe_service.dart';
import 'package:flutter/material.dart';

class DrawerMenuItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool isActive;
  final Function() onTap;

  const DrawerMenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
            isActive
                ? BoxDecoration(
                  gradient: AppColors.gradient, // Active item background
                  borderRadius: BorderRadius.circular(AppSizes.p8),
                )
                : null,
        margin: const EdgeInsets.symmetric(
          horizontal: AppSizes.p8,
          vertical: 4,
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color:
                isActive ? Colors.white : Colors.white.withValues(alpha: 0.6),
          ),
          title: Text(
            title,
            style: TextStyle(
              color:
                  isActive ? Colors.white : Colors.white.withValues(alpha: 0.6),
            ),
          ),
          selected: isActive,
        ),
      ),
    );
  }
}

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
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.p24,
          horizontal: 4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Drawer Header
            Column(
              children: [
                const SizedBox(height: AppSizes.p24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/logo.png", height: 20),
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
            const SizedBox(height: 32),

            ...List.generate(_routes.length, (index) {
              bool isActive = selectedIndex == index;
              return DrawerMenuItem(
                title: _menuTitles[index],
                icon: _menuIcons[index],
                isActive: isActive,
                onTap: () => onItemTapped(index),
              );
            }),
            Spacer(),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
                StripeService.instance.makePayment();
              },
              child: Text("PRO"),
            ),
          ],
        ),
      ),
    );
  }
}
