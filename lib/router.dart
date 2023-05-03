import 'package:flutter/material.dart';

import 'screen/onboard/onboard_screen.dart';
import 'screen/splash/splash_screen.dart';
import 'screen/welcome/welcome_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
    case OnboardScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OnboardScreen());
    case WelcomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const WelcomeScreen());
    default:
      return MaterialPageRoute(
        builder: (_) => Scaffold(
          body: Center(
            child: Text(
              'No route defined for ${settings.name}',
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
        ),
      );
  }
}
