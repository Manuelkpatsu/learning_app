import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/screen/widget/arrow_icon.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'widget/course_cost.dart';
import 'widget/course_duration.dart';
import 'widget/course_image.dart';
import 'widget/course_name_text.dart';
import 'widget/course_rating.dart';

class CourseTile extends StatelessWidget {
  final Course course;
  final VoidCallback? onPressed;

  const CourseTile({
    Key? key,
    required this.course,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          padding: const EdgeInsets.all(9),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: CustomColor.containerShadowColor.withOpacity(0.12),
                offset: const Offset(0, 15),
                blurRadius: 60,
              ),
            ],
          ),
          child: Row(
            children: [
              CourseImage(image: course.image),
              const SizedBox(width: 12),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CourseNameText(name: course.name),
                          CourseRating(rating: course.rate),
                          CourseDuration(duration: course.courseDuration),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const ArrowIcon(),
                        const SizedBox(height: 4),
                        CourseCost(amount: course.costOfCourse),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
