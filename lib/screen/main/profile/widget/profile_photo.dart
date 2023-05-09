import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final String photo;

  const ProfilePhoto({Key? key, required this.photo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 43,
      backgroundImage: AssetImage(photo),
    );
  }
}
