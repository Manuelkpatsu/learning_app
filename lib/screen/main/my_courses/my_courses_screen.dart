import 'package:flutter/material.dart';

class MyCoursesScreen extends StatelessWidget {
  static const routeName = '/my_courses';

  const MyCoursesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('My Courses Screen'),
      ),
    );
  }
}
