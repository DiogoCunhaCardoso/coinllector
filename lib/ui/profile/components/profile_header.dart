import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/themes/typography.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              radius: 48,
              backgroundImage: NetworkImage(
                'https://scontent.fopo6-2.fna.fbcdn.net/v/t39.30808-1/384106452_6702664629841372_2506567935603255304_n.jpg?stp=c342.0.1365.1365a_dst-jpg_s200x200_tt6&_nc_cat=111&ccb=1-7&_nc_sid=e99d92&_nc_ohc=kINerdyMBS4Q7kNvgFJWL2K&_nc_oc=AdlVfVxoDpkx1VQdp9ur0ZORM9-ats_9KklAze9jkfGE23227CDPzEMLcS3Bdsu1u4-kdUpm8L6mpGRfibh28Enk&_nc_zt=24&_nc_ht=scontent.fopo6-2.fna&_nc_gid=tLKsWsHRpaU9CF4Y0ffMVg&oh=00_AYGJVozyIOI1k8Jf8mQoufaz1oZgwf6swzx3TnDDh_56vA&oe=67EA025D',
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.5),
                      blurRadius: 2,
                      offset: const Offset(0, 1),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.edit,
                  size: 16,
                  color: AppColors.surface,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSizes.p16),
        const Text("@diog.cardoso", style: AppTextStyles.body),
      ],
    );
  }
}
