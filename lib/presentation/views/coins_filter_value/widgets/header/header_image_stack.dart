import 'package:coinllector_app/shared/enums/coin_types_enum.dart';
import 'package:flutter/material.dart';

class _HeaderImage extends StatelessWidget {
  final CoinType type;
  final double opacity;

  const _HeaderImage({required this.type, this.opacity = 1.0});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Image.asset(
        "assets/value/value-${type.name.toLowerCase()}.png",
        width: 92,
        height: 92,
        fit: BoxFit.cover,
      ),
    );
  }
}

class HeaderImageStack extends StatelessWidget {
  final CoinType type;

  const HeaderImageStack({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              right: 92 / 3 * 2,
              child: _HeaderImage(type: type, opacity: 0.5),
            ),
            Positioned(
              right: -92 / 3 * 2,
              child: _HeaderImage(type: type, opacity: 0.5),
            ),
            _HeaderImage(type: type),
          ],
        ),
      ],
    );
  }
}
