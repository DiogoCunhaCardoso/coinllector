import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/config/themes/typography.dart';
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
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(AppSizes.r8)),
      ),
      tileColor: AppColors.surfaceVariant,
      leading: CircleAvatar(
        radius: 12,
        backgroundImage: AssetImage("assets/country/germany-flag.png"),
      ),
      title: Text(title, style: AppTextStyles.labelSmall),
      trailing:
          hasCheckbox
              ? Checkbox(
                value: true,
                onChanged: ((value) => false),
                activeColor: AppColors.primary,
              )
              : null, // If
    );
  }
}
