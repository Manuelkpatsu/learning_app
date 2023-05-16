import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/screen/widget/course_tile/course_tile.dart';

class CoursesWidget extends StatelessWidget {
  final List<Course> courses;

  const CoursesWidget({Key? key, required this.courses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (ctx, index) {
          final course = courses[index];

          return Padding(
            padding: EdgeInsets.only(bottom: index == courses.length - 1 ? 0 : 16),
            child: CourseTile(
              onPressed: () {},
              course: course,
            ),
          );
        },
      ),
    );
  }
}
