import 'package:flutter/material.dart';

import 'certificate_image.dart';
import 'download_button.dart';
import 'share_button.dart';

class CertificateWidget extends StatelessWidget {
  final String certificateImage;

  const CertificateWidget({Key? key, required this.certificateImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            children: [
              CertificateImage(image: certificateImage),
              const SizedBox(width: 20),
              Column(
                children: [
                  DownloadButton(onPressed: () {}),
                  const SizedBox(height: 20),
                  ShareButton(onPressed: () {}),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
