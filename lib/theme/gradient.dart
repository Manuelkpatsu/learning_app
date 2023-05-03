import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomGradient {
  const CustomGradient._();

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      CustomColor.gradientColorOne,
      CustomColor.gradientColorTwo,
    ],
  );
}

final Shader textLinearGradient = CustomGradient.primaryGradient.createShader(
  const Rect.fromLTRB(100, 0, 300, 0),
);
