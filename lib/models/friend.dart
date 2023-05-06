import 'package:equatable/equatable.dart';

enum Status { beginner, intermediate }

class Friend extends Equatable {
  final int id;
  final String name;
  final String image;
  final String address;
  final Status status;

  const Friend({
    required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.status,
  });

  @override
  List<Object?> get props => [id, name, image, address, status];
}
