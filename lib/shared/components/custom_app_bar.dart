import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showMenuIcon;
  final BuildContext scaffoldContext;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.scaffoldContext,
    this.showMenuIcon = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + AppSizes.p16);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      toolbarHeight: kToolbarHeight + AppSizes.p16,
      title: Text(title),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: colorScheme.gradient,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(AppSizes.r24),
            bottomLeft: Radius.circular(AppSizes.r24),
          ),
        ),
      ),
      leading:
          showMenuIcon
              ? IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(scaffoldContext).openDrawer(),
              )
              : null,
    );
  }
}
