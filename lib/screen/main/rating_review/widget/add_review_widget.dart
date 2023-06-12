import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'opinion_text.dart';
import 'rate_text.dart';

class AddReviewWidget extends StatelessWidget {
  const AddReviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.dialogBackgroundColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 14),
            Container(
              height: 6,
              width: 60,
              decoration: BoxDecoration(
                color: CustomColor.primaryColor,
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            const SizedBox(height: 16),
            const RateText(),
            const SizedBox(height: 10),
            RatingBar(
              direction: Axis.horizontal,
              allowHalfRating: false,
              itemCount: 5,
              itemSize: 30,
              ratingWidget: RatingWidget(
                full: const Icon(Icons.star, color: CustomColor.activeRatingColor),
                half: const Icon(Icons.star_half, color: CustomColor.activeRatingColor),
                empty: const Icon(Icons.star_outline, color: CustomColor.inactiveRatingColor),
              ),
              itemPadding: const EdgeInsets.symmetric(horizontal: 2),
              onRatingUpdate: (rating) {},
            ),
            const SizedBox(height: 20),
            const OpinionText(),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: '',
              keyboardType: TextInputType.multiline,
              minLines: 6,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: CustomColor.textFieldBorderColor, width: 0.5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: CustomColor.textFieldBorderColor, width: 0.5),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: CustomColor.primaryColor, width: 0.5),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: CustomColor.errorColor, width: 0.5),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: CustomColor.errorColor, width: 0.5),
                ),
                fillColor: Colors.white,
                filled: true,
                hintText: 'Your review',
              ),
            ),
            const SizedBox(height: 50),
            GradientButton(onPressed: () {}, widget: const Text('Send Review')),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
