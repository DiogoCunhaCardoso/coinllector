import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/domain/entities/country.dart';
import 'package:flutter/material.dart';

class ShowcaseHeader extends StatelessWidget {
  final Country? country;
  final bool isOwned;
  final ValueChanged<bool>? onToggleOwnership;

  const ShowcaseHeader({
    super.key,
    this.country,
    required this.isOwned,
    required this.onToggleOwnership,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        gradient: AppColors.gradient,
      ),
      padding: const EdgeInsets.only(
        top: kToolbarHeight + 24,
        left: 24,
        right: 24,
        bottom: 24,
      ),
      height: 220,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 28,
            height: 28,
            child: Transform.scale(
              scale: 1.2,
              child: Checkbox(
                value: isOwned,
                onChanged: (value) => onToggleOwnership?.call(value ?? false),
                fillColor: WidgetStateProperty.resolveWith<Color>((states) {
                  return states.contains(WidgetState.selected)
                      ? AppColors.primary
                      : AppColors.onSurfaceVariant;
                }),
              ),
            ),
          ),
          CircleAvatar(
            radius: 16,
            backgroundImage:
                country?.flagImage != null
                    ? AssetImage(country!.flagImage)
                    : null,
          ),
        ],
      ),
    );
  }
}
