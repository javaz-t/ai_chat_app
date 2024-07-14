import 'package:flutter/material.dart';

import 'custom_text.dart';

class GradientText extends StatelessWidget {
  final String text;
  final double size;
  final bool underline;
  final double? letterSpacing;
  final FontWeight bolt;
  final List<Color> colors;
  const GradientText(
      {super.key,
        required this.text,
        required this.size,
        this.underline = false,
        this.letterSpacing,
        this.bolt = FontWeight.w600,
        this.colors = const [
          Colors.yellow,

          Colors.red,
          Colors.yellow,
          Color(0xFFF237FF),
        ]});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
        shaderCallback: (bounds) =>  LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ).createShader(Rect.fromLTWH(
          0,
          0,
          bounds.width,
          bounds.height,
        )),
        child: Center(
          child: CustomText(
            textAlign: TextAlign.center,
            text: text,
            size: size,
            bolt: bolt,
            color: Colors.white,
          ),
        ));
  }
}
