import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ModalListTile extends StatelessWidget {
  const ModalListTile({
    super.key,
    required this.title,
    required this.hasCheckbox,
  });

  final String title;
  final bool hasCheckbox;

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
      title: Text(title, style: textTheme.labelSmall),
      trailing:
          hasCheckbox
              ? Checkbox(
                value: true,
                onChanged: ((value) => false),
                activeColor: colorScheme.primary,
              )
              : null, // If
    );
  }
}
