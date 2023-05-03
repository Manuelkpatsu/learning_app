import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class Curvy extends StatelessWidget {
  const Curvy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(painter: OpenPainter());
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..shader = ui.Gradient.linear(
        const Offset(6, 1),
        const Offset(-1, 6),
        [
          CustomColor.yellowColor,
          CustomColor.orangeColor,
        ],
      )
      ..strokeWidth = 3;
    var width = 92;
    var height = 92;

    Offset center = Offset(width / 2, height / 2);
    double radius = min(width / 2, height / 2);
    double arcAngle = 2 * pi * (1 / 4);

    // draw arc
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi / 2,
      arcAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
