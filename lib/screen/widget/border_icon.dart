import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class BorderIcon extends StatelessWidget {
  final IconData icon;

  const BorderIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: Colors.white,
        border: Border.all(color: CustomColor.iconBorderColor, width: 0.5),
        boxShadow: [
          BoxShadow(
            color: CustomColor.iconShadowColor.withOpacity(0.15),
            offset: const Offset(0, 15),
            blurRadius: 60,
          ),
        ],
      ),
      child: Icon(icon, size: 12, color: Colors.black),
    );
  }
}
