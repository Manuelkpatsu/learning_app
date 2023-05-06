import 'package:flutter/material.dart';
import 'package:learning_app/models/category.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/models/instructor.dart';
import 'package:learning_app/screen/main/invite_friends/invite_friends_screen.dart';
import 'package:learning_app/screen/widget/category_tile/category_tile.dart';
import 'package:learning_app/screen/widget/course_tile/course_tile.dart';
import 'package:learning_app/screen/widget/see_more_button.dart';
import 'package:collection/collection.dart';

import 'widget/categories_text.dart';
import 'widget/app_user_name_text.dart';
import 'widget/app_user_profile_photo.dart';
import 'widget/home_welcome_text.dart';
import 'widget/invite_button.dart';
import 'widget/popular_courses_text.dart';
import 'widget/top_courses_text.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      const Category(
        id: 1,
        type: CategoryType.science,
        totalLikes: 9600,
        rating: 4.7,
        totalNumberOfStudents: 4600,
      ),
      const Category(
        id: 2,
        type: CategoryType.business,
        totalLikes: 9600,
        rating: 4.7,
        totalNumberOfStudents: 4600,
      ),
    ];
    final List<Course> popularCourses = [
      const Course(
        id: 1,
        category: CategoryType.skillDevelopment,
        name: 'UX/UI Design',
        image: 'assets/images/courses/ui-design.png',
        totalLikes: 365,
        rate: 4.5,
        totalNumberOfStudents: 1205,
        costOfCourse: 30.0,
        courseDuration: Duration(days: 0, hours: 3, minutes: 45),
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
        courseDuration: Duration(days: 0, hours: 3, minutes: 45),
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
        courseDuration: Duration(days: 0, hours: 3, minutes: 45),
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
    ];
    final List<Course> topCourses = [
      const Course(
        id: 1,
        category: CategoryType.skillDevelopment,
        name: 'Web Design',
        image: 'assets/images/courses/web-design.png',
        totalLikes: 365,
        rate: 4.5,
        totalNumberOfStudents: 1205,
        costOfCourse: 30.0,
        courseDuration: Duration(days: 0, hours: 3, minutes: 45),
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
        id: 2,
        category: CategoryType.science,
        name: 'Biology',
        image: 'assets/images/courses/biology.png',
        totalLikes: 365,
        rate: 0.0,
        totalNumberOfStudents: 1205,
        costOfCourse: 30.0,
        courseDuration: Duration(days: 0, hours: 3, minutes: 45),
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
        id: 3,
        category: CategoryType.business,
        name: 'Economics',
        image: 'assets/images/courses/economics.png',
        totalLikes: 365,
        rate: 3.5,
        totalNumberOfStudents: 605,
        costOfCourse: 30.0,
        courseDuration: Duration(days: 0, hours: 3, minutes: 45),
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

    return Scaffold(
      appBar: AppBar(
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HomeWelcomeText(),
                  AppUserNameText(name: 'Manuel Nartey'),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InviteButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(InviteFriendsScreen.routeName);
                  },
                ),
                const SizedBox(width: 5),
                const AppUserProfilePhoto(photo: 'assets/images/border-profile.png'),
              ],
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CategoriesText(),
                  SeeMoreButton(onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: categories.length,
                itemBuilder: (ctx, index) {
                  final category = categories[index];

                  return Padding(
                    padding: EdgeInsets.only(right: index == categories.length - 1 ? 0 : 19),
                    child: CategoryTile(
                      category: category,
                      onPressed: () {},
                      bookmarkPressed: () {},
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PopularCoursesText(),
                  SeeMoreButton(onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: popularCourses.mapIndexed((index, course) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: index == popularCourses.length - 1 ? 0 : 12,
                  ),
                  child: CourseTile(
                    course: course,
                    onPressed: () {},
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TopCoursesText(),
                  SeeMoreButton(onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Column(
              children: topCourses.mapIndexed((index, course) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    bottom: index == topCourses.length - 1 ? 0 : 12,
                  ),
                  child: CourseTile(
                    course: course,
                    onPressed: () {},
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
