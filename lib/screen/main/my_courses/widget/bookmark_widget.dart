import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/screen/widget/course_tile/course_tile.dart';

class BookmarkWidget extends StatelessWidget {
  final List<Course> bookmarks;

  const BookmarkWidget({Key? key, required this.bookmarks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: bookmarks.length,
        itemBuilder: (ctx, index) {
          final course = bookmarks[index];

          return Padding(
            padding: EdgeInsets.only(bottom: index == bookmarks.length - 1 ? 0 : 16),
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
