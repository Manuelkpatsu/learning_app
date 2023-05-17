import 'package:flutter/material.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:readmore/readmore.dart';

class CourseDescriptionText extends StatelessWidget {
  final String description;

  const CourseDescriptionText({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      description,
      trimLines: 3,
      colorClickableText: CustomColor.primaryColor,
      trimCollapsedText: 'Read more',
      trimExpandedText: 'Show less',
      style: const TextStyle(
        color: CustomColor.amountColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
