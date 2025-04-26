import 'package:coinllector_app/shared/components/custom_app_bar.dart';
import 'package:coinllector_app/config/themes/sizes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileSettingsAboutView extends StatelessWidget {
  const ProfileSettingsAboutView({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: CustomAppBar(title: "About", scaffoldContext: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.p16,
          vertical: AppSizes.p24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Designed & Developed",
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: AppSizes.p8),
            RichText(
              text: TextSpan(
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
                children: [
                  const TextSpan(text: "by "),
                  TextSpan(
                    text: "Diogo Cardoso.",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.primary,
                    ),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap =
                              () => _launchUrl(
                                'https://www.linkedin.com/in/diogo-cunha-cardoso-b37242213/',
                              ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSizes.p24),
            Text(
              "Copyright",
              style: textTheme.bodyMedium!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: AppSizes.p8),
            RichText(
              text: TextSpan(
                style: textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.normal,
                ),
                children: [
                  const TextSpan(
                    text:
                        "Copyright for coin images and coin descriptions from ",
                  ),
                  TextSpan(
                    text: "European Central Bank.",
                    style: TextStyle(color: colorScheme.primary),
                    recognizer:
                        TapGestureRecognizer()
                          ..onTap =
                              () => _launchUrl(
                                'https://www.ecb.europa.eu/euro/html/index.en.html',
                              ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
