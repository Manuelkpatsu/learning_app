import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/models/review.dart';
import 'package:learning_app/models/user.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/screen/widget/instructor_image.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'widget/add_review_widget.dart';
import 'widget/rating_statistics_tile.dart';
import 'widget/rating_text.dart';
import 'widget/review_tile.dart';
import 'widget/reviews_text.dart';
import 'widget/show_photo_checkbox.dart';
import 'widget/total_ratings_text.dart';
import 'widget/with_photo_text.dart';

class RatingReviewScreen extends StatefulWidget {
  static const routeName = '/rating_review';

  const RatingReviewScreen({Key? key}) : super(key: key);

  @override
  State<RatingReviewScreen> createState() => _RatingReviewScreenState();
}

class _RatingReviewScreenState extends State<RatingReviewScreen> {
  bool _showPhoto = false;
  final List<Review> _reviews = [
    Review(
      id: 1,
      message:
          "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
      user: const User(id: 1, name: 'Jerome Bell', photo: 'assets/images/reviewer.png'),
      rate: 4,
      createdAt: DateTime(2023, 3, 20),
    ),
    Review(
      id: 2,
      message:
          "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
      user: const User(id: 1, name: 'Jerome Bell', photo: 'assets/images/reviewer.png'),
      rate: 5,
      createdAt: DateTime(2023, 5, 12),
    ),
    Review(
      id: 3,
      user: const User(id: 1, name: 'Jerome Bell', photo: 'assets/images/reviewer.png'),
      rate: 2,
      createdAt: DateTime(2023, 4, 15),
    ),
    Review(
      id: 4,
      message:
          "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
      user: const User(id: 1, name: 'Jerome Bell', photo: 'assets/images/reviewer.png'),
      rate: 2,
      createdAt: DateTime(2023, 5, 20),
    ),
    Review(
      id: 5,
      user: const User(id: 1, name: 'Jerome Bell', photo: 'assets/images/reviewer.png'),
      rate: 1,
      createdAt: DateTime(2023, 2, 10),
    ),
    Review(
      id: 6,
      message:
          "The dress is great! Very classy and comfortable. It fit perfectly! I'm 5'7 and 130 pounds. I am a 34B chest. This dress would be too long for those who are shorter but could be hemmed. I wouldn't recommend it for those big chested as I am smaller chested and it fit me perfectly. The underarms were not too wide and the dress was made well.",
      user: const User(id: 1, name: 'Jerome Bell', photo: 'assets/images/reviewer.png'),
      rate: 2,
      createdAt: DateTime(2023, 2, 10),
    ),
  ];
  double _count = 0;
  double _sum = 0;

  @override
  void initState() {
    _reviews.forEachIndexed((index, review) {
      _count += review.rate;
      _sum += review.rate * (index + 1);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final filteredReviews = _reviews.where((review) => review.message != null).toList();

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Rating & Reviews'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RatingText(rate: _sum / _count),
                const SizedBox(width: 50),
                Expanded(
                  child: Column(
                    children: [
                      RatingStatisticsTile(
                        numberOfStars: 5,
                        totalOccurrenceOfRating:
                            _reviews.where((review) => review.rate == 5).length,
                        totalNumberOfRatings: _reviews.length,
                      ),
                      RatingStatisticsTile(
                        numberOfStars: 4,
                        totalOccurrenceOfRating:
                            _reviews.where((review) => review.rate == 4).length,
                        totalNumberOfRatings: _reviews.length,
                      ),
                      RatingStatisticsTile(
                        numberOfStars: 3,
                        totalOccurrenceOfRating:
                            _reviews.where((review) => review.rate == 3).length,
                        totalNumberOfRatings: _reviews.length,
                      ),
                      RatingStatisticsTile(
                        numberOfStars: 2,
                        totalOccurrenceOfRating:
                            _reviews.where((review) => review.rate == 2).length,
                        totalNumberOfRatings: _reviews.length,
                      ),
                      RatingStatisticsTile(
                        numberOfStars: 1,
                        totalOccurrenceOfRating:
                            _reviews.where((review) => review.rate == 1).length,
                        totalNumberOfRatings: _reviews.length,
                      ),
                      const SizedBox(height: 5),
                      TotalRatingsText(totalRatings: _reviews.length),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ReviewsText(totalReviews: filteredReviews.length),
                const SizedBox(width: 10),
                Row(
                  children: [
                    ShowPhotoCheckbox(
                      showPhoto: _showPhoto,
                      onChanged: (value) {
                        setState(() => _showPhoto = value!);
                      },
                    ),
                    const SizedBox(width: 5),
                    const WithPhotoText(),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Column(
              children: filteredReviews.map((review) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 30, left: _showPhoto ? 16 : 0),
                  child: _showPhoto
                      ? Stack(
                          clipBehavior: Clip.none,
                          children: [
                            ReviewTile(review: review),
                            Positioned(
                              top: -16,
                              left: -16,
                              child: InstructorImage(image: review.user.photo, size: 16),
                            ),
                          ],
                        )
                      : ReviewTile(review: review),
                );
              }).toList(),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
      bottomSheet: IntrinsicHeight(
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xfff3f6ff),
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(15),
              bottom: Radius.zero,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xffe6ebf3).withOpacity(0.5),
                offset: const Offset(0, 15),
                blurRadius: 60,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 30),
            child: GradientButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (ctx) => const AddReviewWidget(),
                  enableDrag: true,
                  barrierColor: CustomColor.overlayColor.withOpacity(0.22),
                  clipBehavior: Clip.hardEdge,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                      bottom: Radius.zero,
                    ),
                  ),
                );
              },
              widget: const Text('Add Review'),
            ),
          ),
        ),
      ),
    );
  }
}
