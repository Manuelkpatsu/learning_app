import 'package:equatable/equatable.dart';

enum CategoryType { science, business, skillDevelopment }

class Category extends Equatable {
  final int id;
  final CategoryType type;
  final int totalLikes;
  final double rating;
  final int totalNumberOfStudents;

  const Category({
    required this.id,
    required this.type,
    required this.totalLikes,
    required this.rating,
    required this.totalNumberOfStudents,
  });

  @override
  List<Object?> get props => [id, type, totalLikes, rating, totalNumberOfStudents];
}
