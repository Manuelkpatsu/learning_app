import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app/theme/custom_color.dart';

class CourseRating extends StatelessWidget {
  final double rating;

  const CourseRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      initialRating: rating,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: 18,
      ignoreGestures: true,
      ratingWidget: RatingWidget(
        full: const Icon(Icons.star, color: CustomColor.yellowColor),
        half: const Icon(Icons.star_half, color: CustomColor.yellowColor),
        empty: const Icon(Icons.star, color: CustomColor.unfilledRatingColor),
      ),
      itemPadding: const EdgeInsets.symmetric(horizontal: 1),
      onRatingUpdate: (rating) {},
    );
  }
}
