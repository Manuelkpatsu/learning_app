import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

class ArrowIcon extends StatelessWidget {
  final IconData icon;
  final double size;
  final double iconSize;

  const ArrowIcon({
    Key? key,
    this.icon = IconlyLight.arrow_right_2,
    this.size = 32,
    this.iconSize = 22,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: size,
      width: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: CustomColor.blueColor,
      ),
      child: Icon(icon, size: iconSize, color: Colors.white),
    );
  }
}
