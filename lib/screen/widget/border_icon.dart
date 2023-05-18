import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class BorderIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double size;
  final double iconSize;
  final double borderRadius;
  final BoxShape shape;

  const BorderIcon({
    Key? key,
    required this.icon,
    this.iconColor = Colors.black,
    this.size = 18,
    this.iconSize = 12,
    this.borderRadius = 7,
    this.shape = BoxShape.rectangle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: shape == BoxShape.circle ? null : BorderRadius.circular(borderRadius),
        shape: shape,
        color: Colors.white,
        border: Border.all(color: CustomColor.iconBorderColor, width: 1),
        boxShadow: [
          BoxShadow(
            color: CustomColor.iconShadowColor.withOpacity(0.15),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: Icon(icon, size: iconSize, color: iconColor),
    );
  }
}
