import 'package:flutter/material.dart';
import 'package:learning_app/models/onboard_data.dart';
import 'package:learning_app/screen/welcome/welcome_screen.dart';
import 'package:learning_app/theme/custom_color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widget/curvy.dart';
import 'widget/next_button.dart';
import 'widget/onboard_tile.dart';

class OnboardScreen extends StatefulWidget {
  static const routeName = '/onboard';

  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();
  final List<OnboardData> _data = [
    const OnboardData(
      title: 'Learning at Home Anything',
      image: 'assets/images/onboard-1.png',
      description: 'We are Providing the best\nonline courses for you.',
    ),
    const OnboardData(
      title: 'Smart Way & Best Skill Achieve',
      image: 'assets/images/onboard-2.png',
      description:
          'Anywhere, anytime. The time is at your\nThe description so studies whenever\nyou want.',
    ),
    const OnboardData(
      title: 'Connect With Everyone',
      image: 'assets/images/onboard-3.png',
      description: 'Always keep in touch with your tutor\n& friend. Let\'s get connected!',
    ),
  ];
  int currentPage = 0;
  bool get lastPage => currentPage == _data.length - 1;

  void _onPageChanged(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: _onPageChanged,
                children: _data.map((onboardData) => OnboardTile(data: onboardData)).toList(),
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: _data.length,
              effect: const WormEffect(
                spacing: 5,
                dotHeight: 7,
                dotWidth: 15,
                dotColor: CustomColor.primaryColor,
                activeDotColor: CustomColor.orangeColor,
              ),
              onDotClicked: (index) => _controller.animateToPage(
                index,
                duration: const Duration(microseconds: 300),
                curve: Curves.easeIn,
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 92,
              width: 92,
              child: Stack(
                children: [
                  const Curvy(),
                  NextButton(
                    onPressed: lastPage
                        ? () => Navigator.of(context).pushReplacementNamed(WelcomeScreen.routeName)
                        : () => _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn,
                            ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
