import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:coinllector_app/themes/sizes.dart';
import 'package:coinllector_app/ui/coins_filter_country/widgets/header/header_image_stack.dart';
import 'package:coinllector_app/ui/coins_filter_country/widgets/header/header_info_text.dart';
import 'package:flutter/material.dart';

class CoinBanner extends StatelessWidget {
  final CountryNames name;
  final int owned;
  final int total;

  const CoinBanner({
    super.key,
    required this.name,
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
          HeaderImageStack(name: name),
          SizedBox(height: AppSizes.p16),
          HeaderInfoText(owned: owned, total: total),
        ],
      ),
    );
  }
}
