import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ConfirmationDialog {
  static Future<bool> show({
    required BuildContext context,
    String title = 'Confirm Removal',
    String content = 'Are you sure you want to remove this coin?',
    String cancelText = 'Cancel',
    String confirmText = 'Confirm',
  }) async {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    final result = await showDialog<bool>(
      context: context,
      builder:
          (ctx) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.r16),
            ),
            backgroundColor: colorScheme.surfaceContainerHighest,
            title: Text(title, style: textTheme.bodyLarge),
            content: Text(
              content,
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(false),
                child: Text(cancelText, style: textTheme.labelMedium),
              ),
              TextButton(
                onPressed: () => Navigator.of(ctx).pop(true),
                child: Text(confirmText, style: textTheme.labelMedium),
              ),
            ],
          ),
    );

    return result ?? false;
  }
}
