import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

class ArrowIcon extends StatelessWidget {
  final IconData icon;

  const ArrowIcon({Key? key, this.icon = IconlyLight.arrow_right_2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 32,
      width: 32,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: CustomColor.blueColor,
      ),
      child: Icon(icon, size: 22, color: Colors.white),
    );
  }
}
