import 'dart:io';

import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final VoidCallback onEditTap;
  final File? pfp;

  const ProfileHeader({super.key, required this.onEditTap, this.pfp});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(AppSizes.r16),
          bottomLeft: Radius.circular(AppSizes.r16),
        ),
        gradient: colorScheme.gradient,
      ),
      padding: const EdgeInsets.only(
        top: kToolbarHeight + 32,
        left: 24,
        right: 24,
        bottom: 24,
      ),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CircleAvatar(
                radius: 48,
                backgroundImage:
                    pfp != null
                        ? FileImage(pfp!)
                        : const NetworkImage(
                              'https://t3.ftcdn.net/jpg/02/36/99/22/360_F_236992283_sNOxCVQeFLd5pdqaKGh8DRGMZy7P4XKm.jpg',
                            )
                            as ImageProvider,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () => onEditTap(),

                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: colorScheme.onSurface,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.5),
                          blurRadius: 2,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.edit,
                      size: 16,
                      color: colorScheme.surface,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.p16),
          Text("Diogo Cardoso", style: textTheme.titleSmall),
        ],
      ),
    );
  }
}
