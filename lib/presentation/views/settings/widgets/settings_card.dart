import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  final String title;
  final bool hasSwitch;
  final bool? value;
  final ValueChanged<bool>? onChanged;
  final VoidCallback? onTap;
  final VoidCallback? info;

  const SettingsCard({
    super.key,
    required this.title,
    this.hasSwitch = false,
    this.value,
    this.onChanged,
    this.onTap,
    this.info,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 72,
      child: Card(
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.p16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      title,
                      style: textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (info != null)
                      IconButton(
                        icon: Icon(
                          Icons.info_outline,
                          size: 20,
                          color: colorScheme.primary,
                        ),
                        onPressed: info,
                        tooltip: 'More info',
                        splashRadius: 20,
                      ),
                  ],
                ),

                if (hasSwitch)
                  Transform.scale(
                    scale: 0.9,
                    child: Switch.adaptive(
                      value: value ?? false,
                      onChanged: onChanged,
                      activeColor: colorScheme.primary,
                    ),
                  )
                else
                  Icon(
                    Icons.chevron_right,
                    color: colorScheme.onSurfaceVariant,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
