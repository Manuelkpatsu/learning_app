import 'package:equatable/equatable.dart';

import 'user.dart';

class Review extends Equatable {
  final int id;
  final String? message;
  final User user;
  final int rate;
  final DateTime createdAt;

  const Review({
    required this.id,
    this.message,
    required this.user,
    required this.rate,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [id, message, user, rate, createdAt];
}
