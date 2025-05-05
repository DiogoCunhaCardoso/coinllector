import 'package:flutter/material.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/enums/years_enum.dart';

class YearSheetTile extends StatelessWidget {
  const YearSheetTile({
    super.key,
    required this.year,
    required this.isSelected,
    required this.onSelected,
  });

  final CoinYear year;
  final bool isSelected;
  final ValueChanged<bool?> onSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.r8)),
      ),
      tileColor: colorScheme.surfaceContainerHighest,
      title: Text(
        year.name.substring(1), // Removes the underscore from the CoinYear enum
        style: textTheme.labelLarge?.copyWith(
          color: isSelected ? colorScheme.primary : colorScheme.onSurface,
        ),
      ),
      onTap: () {
        onSelected(!isSelected);
      },
    );
  }
}
