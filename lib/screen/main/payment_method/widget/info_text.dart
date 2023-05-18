import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String info;

  const InfoText({Key? key, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      info,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
