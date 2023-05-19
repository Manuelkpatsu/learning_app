import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/models/instructor.dart';
import 'package:learning_app/screen/widget/see_more_button.dart';

import 'live_chat_instructor.dart';
import 'live_course_tile.dart';
import 'live_courses_text.dart';

class LiveSessionsWidget extends StatelessWidget {
  final List<Course> liveCourses;
  final VoidCallback? onCallPressed;
  final VoidCallback? onChatPressed;
  final Instructor instructor;

  const LiveSessionsWidget({
    Key? key,
    required this.liveCourses,
    required this.onCallPressed,
    required this.onChatPressed,
    required this.instructor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const LiveCoursesText(),
                  SeeMoreButton(onPressed: () {}),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            sliver: SliverGrid.builder(
              itemCount: liveCourses.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 19,
                crossAxisSpacing: 16,
                mainAxisExtent: 150,
              ),
              itemBuilder: (context, index) {
                final course = liveCourses[index];

                return LiveCourseTile(
                  course: course,
                  onPressed: () {},
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            sliver: SliverToBoxAdapter(
              child: LiveChatInstructor(
                onCallPressed: onCallPressed,
                onChatPressed: onChatPressed,
                instructor: instructor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
