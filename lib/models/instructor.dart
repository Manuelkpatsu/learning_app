import 'package:equatable/equatable.dart';

class Instructor extends Equatable {
  final int id;
  final String name;
  final String image;
  final String description;

  const Instructor({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  @override
  List<Object?> get props => [id, name, image, description];
}
