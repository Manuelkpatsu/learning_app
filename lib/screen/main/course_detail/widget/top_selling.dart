import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class TopSelling extends StatelessWidget {
  const TopSelling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: CustomColor.primaryColor,
        borderRadius: BorderRadius.circular(3),
      ),
      child: const Text(
        'Top Selling',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 11,
          height: 1.54,
        ),
      ),
    );
  }
}
