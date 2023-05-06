import 'package:flutter/material.dart';
import 'package:learning_app/models/friend.dart';

class FriendStatusText extends StatelessWidget {
  final Status status;

  const FriendStatusText({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String statusText() {
      switch (status) {
        case Status.beginner:
          return 'Beginner';
        case Status.intermediate:
          return 'Intermediate';
      }
    }

    return Text(
      'Status: ${statusText()}',
      style: const TextStyle(
        color: Colors.black,
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 1.54,
      ),
    );
  }
}
