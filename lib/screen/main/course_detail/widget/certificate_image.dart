import 'package:flutter/material.dart';

class CertificateImage extends StatelessWidget {
  final String image;

  const CertificateImage({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        image,
        width: double.infinity,
        height: 170,
        fit: BoxFit.fill,
      ),
    );
  }
}
