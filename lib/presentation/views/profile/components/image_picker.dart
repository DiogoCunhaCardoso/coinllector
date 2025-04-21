import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ImagePickerBottomSheet extends StatelessWidget {
  final VoidCallback onCameraTap;
  final VoidCallback onGalleryTap;

  const ImagePickerBottomSheet({
    super.key,
    required this.onCameraTap,
    required this.onGalleryTap,
  });

  static Future<void> show({
    required BuildContext context,
    required VoidCallback onCameraTap,
    required VoidCallback onGalleryTap,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder:
          (_) => ImagePickerBottomSheet(
            onCameraTap: onCameraTap,
            onGalleryTap: onGalleryTap,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(AppSizes.r8)),
              ),
              leading: const Icon(Icons.camera_alt),
              title: Text('Camera', style: textTheme.labelLarge),
              onTap: () {
                Navigator.pop(context);
                onCameraTap();
              },
            ),
            ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(AppSizes.r8)),
              ),
              leading: const Icon(Icons.photo_library),
              title: Text('Gallery', style: textTheme.labelLarge),
              onTap: () {
                Navigator.pop(context);
                onGalleryTap();
              },
            ),
          ],
        ),
      ),
    );
  }
}
