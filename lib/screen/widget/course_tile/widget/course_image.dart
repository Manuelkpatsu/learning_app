import 'dart:math';

import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class CourseImage extends StatelessWidget {
  final String image;

  const CourseImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = CustomColor.values[Random.secure().nextInt(CustomColor.values.length - 1) + 1];

    return Container(
      alignment: Alignment.center,
      width: 96,
      height: 83,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(
        image,
        width: 76,
        height: 76,
        fit: BoxFit.contain,
      ),
    );
  }
}
