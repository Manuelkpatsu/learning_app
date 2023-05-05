import 'package:flutter/material.dart';

class AppUserProfilePhoto extends StatelessWidget {
  final String photo;

  const AppUserProfilePhoto({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        photo,
        height: 32,
        width: 32,
        fit: BoxFit.contain,
      ),
    );
  }
}
