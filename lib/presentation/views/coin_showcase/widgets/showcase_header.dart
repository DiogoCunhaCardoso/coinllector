import 'package:coinllector_app/domain/entities/country.dart';
import 'package:coinllector_app/shared/components/gradient_checkbox.dart';
import 'package:flutter/material.dart';

class ShowcaseHeader extends StatelessWidget {
  final Country? country;
  final bool isOwned;
  final ValueChanged<bool> onToggleOwnership;

  const ShowcaseHeader({
    super.key,
    this.country,
    required this.isOwned,
    required this.onToggleOwnership,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(16),
          bottomLeft: Radius.circular(16),
        ),
        color: colorScheme.surfaceContainerHighest,
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
            child: GradientCheckbox(
              value: isOwned,
              onChanged: (value) => onToggleOwnership(value),
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
