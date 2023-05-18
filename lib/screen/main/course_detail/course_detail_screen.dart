import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/screen/main/payment_method/payment_method_screen.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'widget/certificate_widget.dart';
import 'widget/course_detail.dart';
import 'widget/course_detail_filter_button.dart';
import 'widget/course_details.dart';
import 'widget/course_info.dart';
import 'widget/information_widget.dart';
import 'widget/introduction_video_button.dart';
import 'widget/introduction_video_widget.dart';
import 'widget/overview_widget.dart';
import 'widget/preview_course_text.dart';

class CourseDetailScreen extends StatefulWidget {
  static const routeName = '/course_detail';

  final Course course;

  const CourseDetailScreen({Key? key, required this.course}) : super(key: key);

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  CourseDetail _selectedCourseDetail = CourseDetail.overview;

  @override
  Widget build(BuildContext context) {
    final course = widget.course;
    String appBarTitleText() {
      switch (_selectedCourseDetail) {
        case CourseDetail.overview:
          return "Details";
        case CourseDetail.information:
          return "Information";
        case CourseDetail.certificate:
          return "Certificate";
        case CourseDetail.gra:
          return "Gra";
      }
    }

    String previewText() {
      switch (_selectedCourseDetail) {
        case CourseDetail.overview:
          return "Overview";
        case CourseDetail.information:
          return "Information";
        case CourseDetail.certificate:
          return "Certificate";
        case CourseDetail.gra:
          return "Gra";
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: appBarTitleText()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            CourseInfo(
              name: course.name,
              image: course.image,
              isTopSelling: course.isTopSelling,
              courseProgress: 0.5,
              price: course.costOfCourse,
              totalLikes: course.totalLikes,
              rating: course.rate,
              totalNumberOfStudents: course.totalNumberOfStudents,
            ),
            const SizedBox(height: 16),
            PreviewCourseText(title: previewText()),
            const SizedBox(height: 16),
            IntroductionVideoButton(
              onTap: () {
                showCupertinoModalBottomSheet(
                  context: context,
                  builder: (ctx) => IntroductionVideoWidget(course: course),
                  expand: true,
                  enableDrag: false,
                  barrierColor: CustomColor.overlayColor.withOpacity(0.22),
                );
              },
            ),
            const SizedBox(height: 16),
            CourseDetails(
              filterButtons: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: CourseDetail.values.length,
                itemBuilder: (ctx, index) {
                  final type = CourseDetail.values[index];

                  return Padding(
                    padding: EdgeInsets.only(
                      right: index == CourseDetail.values.length - 1 ? 0 : 16,
                    ),
                    child: CourseDetailFilterButton(
                      onPressed: () {
                        setState(() {
                          if (_selectedCourseDetail != type) {
                            _selectedCourseDetail = type;
                          }
                        });
                      },
                      type: type,
                      isSelected: _selectedCourseDetail == type,
                    ),
                  );
                },
              ),
              courseDetailSection: _selectedCourseDetail == CourseDetail.overview
                  ? const OverviewWidget()
                  : _selectedCourseDetail == CourseDetail.information
                      ? InformationWidget(
                          instructorName: course.instructor.name,
                          instructorImage: course.instructor.image,
                          instructorDescription: course.instructor.description,
                          description: course.description,
                        )
                      : _selectedCourseDetail == CourseDetail.certificate
                          ? CertificateWidget(certificateImage: course.certificate)
                          : Container(),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
        child: GradientButton(
          onPressed: () {
            Navigator.of(context).pushNamed(PaymentMethodScreen.routeName, arguments: course);
          },
          widget: const Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Checkout'),
                ),
              ),
              Icon(IconlyLight.arrow_right_2),
            ],
          ),
        ),
      ),
    );
  }
}
