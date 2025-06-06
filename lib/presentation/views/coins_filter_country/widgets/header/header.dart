import 'package:coinllector_app/config/themes/colors.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:coinllector_app/presentation/views/coins_filter_country/widgets/header/header_image_stack.dart';
import 'package:coinllector_app/shared/components/header_info_text.dart';
import 'package:coinllector_app/shared/enums/country_names_enum.dart';
import 'package:flutter/material.dart';

class CoinCountryBanner extends StatelessWidget {
  final CountryNames name;
  final int owned;
  final int total;

  const CoinCountryBanner({
    super.key,
    required this.name,
    required this.owned,
    required this.total,
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
          HeaderImageStack(name: name),
          SizedBox(height: AppSizes.p16),
          HeaderInfoText(owned: owned, total: total),
        ],
      ),
    );
  }
}
