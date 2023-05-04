import 'package:flutter/material.dart';

import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/otp_verification/otp_verification_screen.dart';
import 'screen/auth/password_changed_success/password_reset_success_screen.dart';
import 'screen/auth/reset_password/reset_password_screen.dart';
import 'screen/auth/sign_in/sign_in_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
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
    case SignInScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SignInScreen());
    case SignUpScreen.routeName:
      return MaterialPageRoute(builder: (_) => const SignUpScreen());
    case ForgotPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ForgotPasswordScreen());
    case OTPVerificationScreen.routeName:
      return MaterialPageRoute(builder: (_) => const OTPVerificationScreen());
    case ResetPasswordScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
    case PasswordResetSuccessScreen.routeName:
      return MaterialPageRoute(builder: (_) => const PasswordResetSuccessScreen());
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
