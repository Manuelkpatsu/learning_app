import 'package:flutter/material.dart';

class UsernameText extends StatelessWidget {
  final String name;

  const UsernameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name.toUpperCase(),
      style: const TextStyle(
        color: Color(0xff181725),
        fontSize: 17,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
