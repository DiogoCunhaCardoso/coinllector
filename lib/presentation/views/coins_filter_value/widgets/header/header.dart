import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/header/header_image_stack.dart';
import 'package:coinllector_app/shared/components/tab_button.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/components/header_info_text.dart';
import 'package:flutter/material.dart';

class CoinTypeBanner extends StatelessWidget {
  final CoinType type;
  final int owned;
  final int total;
  final bool isCommemorative;
  final VoidCallback? onCommemorativeButtonPressed;

  const CoinTypeBanner({
    super.key,
    required this.type,
    required this.owned,
    required this.total,
    required this.isCommemorative,
    this.onCommemorativeButtonPressed, // Made optional
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Stack(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            gradient: colorScheme.gradient,
          ),
          padding: const EdgeInsets.only(
            top: kToolbarHeight + 24,
            left: 24,
            right: 24,
            bottom: 24,
          ),
          child: Column(
            children: [
              HeaderImageStack(type: type),
              SizedBox(height: AppSizes.p16),
              HeaderInfoText(owned: owned, total: total),
            ],
          ),
        ),

        // Show button only if commemorative
        if (isCommemorative)
          Positioned(
            bottom: AppSizes.p16,
            right: AppSizes.p16,
            child: SizedBox(
              width: 95,
              height: 31,
              child: TabButton(
                text: 'Select Year',
                isSelected: true,
                onPressed:
                    onCommemorativeButtonPressed ??
                    () {}, // Default empty function
              ),
            ),
          ),
      ],
    );
  }
}
