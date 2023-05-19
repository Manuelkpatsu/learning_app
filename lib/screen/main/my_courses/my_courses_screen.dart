import 'package:flutter/material.dart';
import 'package:learning_app/models/category.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/models/instructor.dart';
import 'package:learning_app/screen/main/call_screen/call_screen.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'widget/bookmark_widget.dart';
import 'widget/category_filter_button.dart';
import 'widget/courses_widget.dart';
import 'widget/live_sessions_widget.dart';
import 'widget/my_courses_category.dart';

class MyCoursesScreen extends StatefulWidget {
  static const routeName = '/my_courses';

  const MyCoursesScreen({Key? key}) : super(key: key);

  @override
  State<MyCoursesScreen> createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  MyCoursesCategory _selectedCategory = MyCoursesCategory.courses;
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
    const Course(
      id: 5,
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
      id: 6,
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
  ];
  final List<Course> _bookmarks = [
    const Course(
      id: 1,
      category: CategoryType.skillDevelopment,
      name: 'UX/UI Design',
      image: 'assets/images/courses/ui-design.png',
      totalLikes: 365,
      rate: 0.0,
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
      rate: 0.0,
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
      category: CategoryType.business,
      name: 'Economics',
      image: 'assets/images/courses/economics.png',
      totalLikes: 365,
      rate: 0.0,
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
    const Course(
      id: 5,
      category: CategoryType.skillDevelopment,
      name: 'Web Design',
      image: 'assets/images/courses/web-design.png',
      totalLikes: 365,
      rate: 0.0,
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
      id: 6,
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
  ];
  final List<Course> _liveCourses = [
    const Course(
      id: 1,
      category: CategoryType.skillDevelopment,
      name: 'UX/UI Design',
      image: 'assets/images/courses/ui-design.png',
      totalLikes: 365,
      rate: 0.0,
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
      courseVideo: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    ),
    const Course(
      id: 3,
      category: CategoryType.business,
      name: 'Finance & Banking',
      image: 'assets/images/courses/finance.png',
      totalLikes: 365,
      rate: 0.0,
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
      category: CategoryType.business,
      name: 'Economics',
      image: 'assets/images/courses/economics.png',
      totalLikes: 365,
      rate: 0.0,
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
      courseVideo: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
    ),
  ];
  final Instructor _instructor = const Instructor(
    id: 1,
    name: 'David Smith',
    image: 'assets/images/instructor.png',
    description: 'Lecturer in University of Oxford at the Business school',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppBarTitle(title: 'My Courses')),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: CustomColor.containerShadowColor.withOpacity(0.12),
              offset: const Offset(0, 15),
              blurRadius: 60,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 13),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: MyCoursesCategory.values.map((type) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CategoryFilterButton(
                      onPressed: () {
                        setState(() {
                          if (_selectedCategory != type) {
                            _selectedCategory = type;
                          }
                        });
                      },
                      type: type,
                      isSelected: _selectedCategory == type,
                    ),
                  );
                }).toList(),
              ),
            ),
            _selectedCategory == MyCoursesCategory.courses
                ? CoursesWidget(courses: _courses)
                : _selectedCategory == MyCoursesCategory.live
                    ? LiveSessionsWidget(
                        liveCourses: _liveCourses,
                        onChatPressed: () {},
                        onCallPressed: () {
                          Navigator.of(context).pushNamed(
                            CallScreen.routeName,
                            arguments: _instructor,
                          );
                        },
                      )
                    : BookmarkWidget(bookmarks: _bookmarks)
          ],
        ),
      ),
    );
  }
}
