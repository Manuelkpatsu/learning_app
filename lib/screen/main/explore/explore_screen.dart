import 'package:flutter/material.dart';
import 'package:learning_app/models/category.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/models/instructor.dart';
import 'package:learning_app/screen/main/course_detail/course_detail_screen.dart';
import 'package:learning_app/screen/widget/search_text_field.dart';

import 'widget/search_course_tile.dart';

class ExploreScreen extends StatefulWidget {
  static const routeName = '/explore';

  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<Course> _courses = [
    const Course(
      id: 1,
      category: CategoryType.skillDevelopment,
      name: 'UX/UI Design',
      image: 'assets/images/courses/ui-design.png',
      totalLikes: 365,
      rate: 4.5,
      totalNumberOfStudents: 1205,
      costOfCourse: 30.0,
      courseDuration: Duration(hours: 3, minutes: 45),
      description:
          'UX/UI Design is the best demandable course in the present world. It\'s making focus point how to use easier way, like production Apps.',
      instructor: Instructor(
        id: 1,
        name: 'David Smith',
        image: 'assets/images/instructor.png',
        description: 'Lecturer in University of Oxford at UX Designer',
      ),
      certificate: 'assets/images/certificate.png',
      courseVideo: 'https://www.youtube.com/watch?v=CUsjKv_s9Cg',
    ),
    const Course(
      id: 2,
      category: CategoryType.science,
      name: 'Chemistry',
      image: 'assets/images/courses/chemistry.png',
      totalLikes: 365,
      rate: 0.0,
      totalNumberOfStudents: 1205,
      costOfCourse: 30.0,
      courseDuration: Duration(hours: 3, minutes: 45),
      description:
          'Chemistry is the best demandable course in the present world. It\'s making focus point how to use easier way, like production Apps.',
      instructor: Instructor(
        id: 1,
        name: 'David Smith',
        image: 'assets/images/instructor.png',
        description: 'Lecturer in University of Oxford at the Science department',
      ),
      certificate: 'assets/images/certificate.png',
      courseVideo: 'https://www.youtube.com/watch?v=CUsjKv_s9Cg',
    ),
    const Course(
      id: 3,
      category: CategoryType.business,
      name: 'Finance & Banking',
      image: 'assets/images/courses/finance.png',
      totalLikes: 365,
      rate: 3.5,
      totalNumberOfStudents: 605,
      costOfCourse: 30.0,
      courseDuration: Duration(hours: 3, minutes: 45),
      description:
          'Finance & Banking is the best demandable course in the present world. It\'s making focus point how to use easier way, like production Apps.',
      instructor: Instructor(
        id: 1,
        name: 'David Smith',
        image: 'assets/images/instructor.png',
        description: 'Lecturer in University of Oxford at the Business school',
      ),
      certificate: 'assets/images/certificate.png',
      courseVideo: 'https://www.youtube.com/watch?v=CUsjKv_s9Cg',
    ),
    const Course(
      id: 4,
      category: CategoryType.skillDevelopment,
      name: 'Web Design',
      image: 'assets/images/courses/web-design.png',
      totalLikes: 365,
      rate: 4.5,
      totalNumberOfStudents: 1205,
      costOfCourse: 30.0,
      courseDuration: Duration(hours: 3, minutes: 45),
      description:
          'Web Design is the best demandable course in the present world. It\'s making focus point how to use easier way, like production Apps.',
      instructor: Instructor(
        id: 1,
        name: 'David Smith',
        image: 'assets/images/instructor.png',
        description: 'Lecturer in University of Oxford at the School of Technology',
      ),
      certificate: 'assets/images/certificate.png',
      courseVideo: 'https://www.youtube.com/watch?v=CUsjKv_s9Cg',
    ),
    const Course(
      id: 5,
      category: CategoryType.science,
      name: 'Biology',
      image: 'assets/images/courses/biology.png',
      totalLikes: 365,
      rate: 0.0,
      totalNumberOfStudents: 1205,
      costOfCourse: 30.0,
      courseDuration: Duration(hours: 3, minutes: 45),
      description:
          'Biology is the best demandable course in the present world. It\'s making focus point how to use easier way, like production Apps.',
      instructor: Instructor(
        id: 1,
        name: 'David Smith',
        image: 'assets/images/instructor.png',
        description: 'Lecturer in University of Oxford at the Science department',
      ),
      certificate: 'assets/images/certificate.png',
      courseVideo: 'https://www.youtube.com/watch?v=CUsjKv_s9Cg',
    ),
    const Course(
      id: 6,
      category: CategoryType.business,
      name: 'Economics',
      image: 'assets/images/courses/economics.png',
      totalLikes: 365,
      rate: 3.5,
      totalNumberOfStudents: 605,
      costOfCourse: 30.0,
      courseDuration: Duration(hours: 3, minutes: 45),
      description:
          'Economics is the best demandable course in the present world. It\'s making focus point how to use easier way, like production Apps.',
      instructor: Instructor(
        id: 1,
        name: 'David Smith',
        image: 'assets/images/instructor.png',
        description: 'Lecturer in University of Oxford at the Business school',
      ),
      certificate: 'assets/images/certificate.png',
      courseVideo: 'https://www.youtube.com/watch?v=CUsjKv_s9Cg',
    ),
  ];

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchTextField(
          controller: _controller,
          hintText: 'Search your perfect course',
          onChanged: (value) {
            setState(() {});
          },
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        itemCount: _courses.length,
        itemBuilder: (context, int index) {
          Course course = _courses[index];

          return SearchCourseTile(
            course: course,
            onPressed: () {
              Navigator.of(context).pushNamed(
                CourseDetailScreen.routeName,
                arguments: course,
              );
            },
            bookmarkPressed: () {},
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 16,
          mainAxisExtent: 170,
        ),
      ),
    );
  }
}
