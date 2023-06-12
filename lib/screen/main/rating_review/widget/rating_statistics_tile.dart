import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';

class RatingStatisticsTile extends StatelessWidget {
  final int numberOfStars;
  final int totalOccurrenceOfRating;
  final int totalNumberOfRatings;

  const RatingStatisticsTile({
    Key? key,
    required this.numberOfStars,
    required this.totalOccurrenceOfRating,
    required this.totalNumberOfRatings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
            value: (totalOccurrenceOfRating / totalNumberOfRatings) * 1,
          ),
        ),
      ],
    );
  }
}
