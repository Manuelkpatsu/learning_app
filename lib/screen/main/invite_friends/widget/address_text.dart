import 'package:flutter/material.dart';

class AddressText extends StatelessWidget {
  final String address;

  const AddressText({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      address,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.black.withOpacity(0.7),
        fontSize: 11,
        fontWeight: FontWeight.w400,
        height: 1.54,
      ),
    );
  }
}
