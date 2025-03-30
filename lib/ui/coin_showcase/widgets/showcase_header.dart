import 'package:coinllector_app/models/country.dart';
import 'package:coinllector_app/themes/colors.dart';
import 'package:flutter/material.dart';

class ShowcaseHeader extends StatelessWidget {
  final Country? country;

  const ShowcaseHeader({super.key, this.country});

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
              scale: 1.33,
              child: Checkbox(value: true, onChanged: (bool? value) {}),
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
