import 'package:flutter/material.dart';

class CardInfoTile extends StatelessWidget {
  final String title;
  final String info;

  const CardInfoTile({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          info.toUpperCase(),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w400,
            height: 1.6,
          ),
        ),
      ],
    );
  }
}
