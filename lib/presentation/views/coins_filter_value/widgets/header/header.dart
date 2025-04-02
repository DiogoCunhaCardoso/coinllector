import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/views/coins_filter_value/widgets/header/header_image_stack.dart';
import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:coinllector_app/shared/header_info_text.dart';
import 'package:flutter/material.dart';

class CoinBanner extends StatelessWidget {
  final CoinType type;
  final int owned;
  final int total;

  const CoinBanner({
    super.key,
    required this.type,
    required this.owned,
    required this.total,
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
      child: Column(
        children: [
          HeaderImageStack(type: type),
          SizedBox(height: AppSizes.p16),
          HeaderInfoText(owned: owned, total: total),
        ],
      ),
    );
  }
}
