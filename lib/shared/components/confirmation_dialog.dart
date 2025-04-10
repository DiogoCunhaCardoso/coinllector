import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/config/themes/typography.dart';
import 'package:flutter/material.dart';

class ConfirmationDialog {
  static Future<bool> show({
    required BuildContext context,
    String title = 'Confirm Removal',
    String content = 'Are you sure you want to remove this coin?',
    String cancelText = 'Cancel',
    String confirmText = 'Confirm',
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.r16),
            ),
            backgroundColor: AppColors.surfaceVariant,
            title: Text(title, style: AppTextStyles.bodyLarge),
            content: Text(
              content,
              style: AppTextStyles.body.copyWith(fontWeight: FontWeight.normal),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: Text(cancelText, style: AppTextStyles.label),
              ),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                child: Text(confirmText, style: AppTextStyles.label),
              ),
            ],
          ),
    );

    return result ?? false;
  }
}
