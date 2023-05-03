import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_app/screen/onboard/onboard_screen.dart';

import 'widget/shape_one.dart';
import 'widget/shape_three.dart';
import 'widget/shape_two.dart';
import 'widget/welcome_text.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _getTimer();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
  }

  _getTimer() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        OnboardScreen.routeName,
        (route) => false,
      );
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
      body: Stack(
        children: [
          Center(
            child: ScaleTransition(
              scale: _animation,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 231),
                  SvgPicture.asset(
                    'assets/images/splash-1.svg',
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 30),
                  const WelcomeText(),
                ],
              ),
            ),
          ),
          const ShapeOne(),
          const ShapeTwo(),
          const ShapeThree(),
        ],
      ),
    );
  }
}
