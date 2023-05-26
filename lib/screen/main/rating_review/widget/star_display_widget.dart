import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class StarDisplayWidget extends StatelessWidget {
  final int value;

  const StarDisplayWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(value, (index) {
        return const Icon(Icons.star, size: 14, color: CustomColor.activeRatingColor);
      }),
    );
  }
}
