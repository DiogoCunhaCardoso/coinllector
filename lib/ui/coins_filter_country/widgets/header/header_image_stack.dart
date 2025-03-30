import 'package:coinllector_app/models/country.dart';
import 'package:flutter/material.dart';

class _HeaderImage extends StatelessWidget {
  final CountryNames name;
  final double opacity;
  final String image;

  const _HeaderImage({
    required this.name,
    this.opacity = 1.0,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Image.asset(image, width: 92, height: 92, fit: BoxFit.cover),
    );
  }
}

class HeaderImageStack extends StatelessWidget {
  final CountryNames name;

  const HeaderImageStack({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    final isEU = name == CountryNames.EU;
    final flagImage = "assets/country/${name.name.toLowerCase()}-flag.png";

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 92 / 3 * 2,
              child: _HeaderImage(
                name: name,
                opacity: 0.5,
                image:
                    isEU
                        ? flagImage
                        : "assets/coins/${name.name.toLowerCase()}/models/two_euro.png",
              ),
            ),
            Positioned(
              right: -92 / 3 * 2,
              child: _HeaderImage(
                name: name,
                opacity: 0.5,
                image:
                    isEU
                        ? flagImage
                        : "assets/coins/${name.name.toLowerCase()}/models/one_euro.png",
              ),
            ),
            _HeaderImage(name: name, image: flagImage),
          ],
        ),
      ],
    );
  }
}
