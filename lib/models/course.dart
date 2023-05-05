import 'package:equatable/equatable.dart';

import 'category.dart';
import 'instructor.dart';

class Course extends Equatable {
  final int id;
  final CategoryType category;
  final String name;
  final String image;
  final int totalLikes;
  final double rate;
  final int totalNumberOfStudents;
  final double costOfCourse;
  final bool isTopSelling;
  final Duration courseDuration;
  final String description;
  final Instructor instructor;
  final String certificate;
  final String courseVideo;

  const Course({
    required this.id,
    required this.category,
    required this.name,
    required this.image,
    required this.totalLikes,
    required this.rate,
    required this.totalNumberOfStudents,
    required this.costOfCourse,
    this.isTopSelling = false,
    required this.courseDuration,
    required this.description,
    required this.instructor,
    required this.certificate,
    required this.courseVideo,
  });

  @override
  List<Object?> get props => [];
}
