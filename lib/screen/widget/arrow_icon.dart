import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/theme/custom_color.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({Key? key}) : super(key: key);

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
      child: const Icon(IconlyLight.arrow_right_2, size: 22, color: Colors.white),
    );
  }
}
