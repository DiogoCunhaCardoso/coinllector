import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/shared/components/gradient_checkbox.dart';
import 'package:coinllector_app/shared/enums/mint.dart';
import 'package:flutter/material.dart';

class MintSheetTile extends StatelessWidget {
  const MintSheetTile({
    super.key,
    required this.mintMark,
    required this.isSelected,
    required this.onSelected,
  });

  final MintMark mintMark;
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
      leading: CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage("assets/country/germany-flag.png"),
      ),
      title: Text(
        "${mintMark.fullName} (${mintMark.displayName})",
        style: textTheme.labelMedium,
      ),

      trailing: GradientCheckbox(
        value: isSelected,
        onChanged: (value) => onSelected(value),
      ),
      onTap: () {
        onSelected(!isSelected);
      },
    );
  }
}
