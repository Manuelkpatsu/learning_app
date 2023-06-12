import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class RatingTile extends StatelessWidget {
  final int numberOfStars;

  const RatingTile({Key? key, required this.numberOfStars}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.centerRight,
          width: 40,
          child: Row(
            children: List.generate(numberOfStars, (index) {
              return const Icon(Icons.star, size: 7, color: CustomColor.statisticsColor);
            }),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: LinearProgressIndicator(
            minHeight: 2.5,
            color: CustomColor.statisticsColor,
            backgroundColor: CustomColor.statisticsProgressColor,
            value: ,
          ),
        ),
      ],
    );
  }
}
