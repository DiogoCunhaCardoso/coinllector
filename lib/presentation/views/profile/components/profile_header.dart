import 'dart:io';

import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final VoidCallback onEditTap;
  final VoidCallback onUsernameEdit;
  final File? pfp;
  final String? username;

  const ProfileHeader({
    super.key,
    required this.onEditTap,
    required this.onUsernameEdit,
    this.pfp,
    this.username,
  });

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
                backgroundColor: colorScheme.onPrimary,
                radius: 48,
                backgroundImage:
                    pfp != null
                        ? FileImage(pfp!)
                        : const AssetImage('assets/icon/pfp_default.jpg')
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
          GestureDetector(
            onTap: onUsernameEdit,
            child: Text(
              username ?? 'Add Name',
              style:
                  username != null
                      ? textTheme.titleSmall
                      : textTheme.titleSmall?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.6),
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
