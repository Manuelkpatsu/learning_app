import 'package:flutter/material.dart';
import 'package:learning_app/screen/widget/instructor_image.dart';
import 'package:learning_app/screen/widget/instructor_name_text.dart';

import 'about_this_course_text.dart';
import 'course_description_text.dart';
import 'course_preview_instructor_text.dart';
import 'instructor_description_text.dart';

class InformationWidget extends StatelessWidget {
  final String description;
  final String instructorImage;
  final String instructorName;
  final String instructorDescription;

  const InformationWidget({
    Key? key,
    required this.description,
    required this.instructorImage,
    required this.instructorName,
    required this.instructorDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AboutThisCourseText(),
          const SizedBox(height: 8),
          CourseDescriptionText(description: description),
          const SizedBox(height: 16),
          const CoursePreviewInstructorText(),
          const SizedBox(height: 5),
          Row(
            children: [
              InstructorImage(image: instructorImage),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InstructorNameText(name: instructorName),
                    InstructorDescriptionText(description: instructorDescription),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
