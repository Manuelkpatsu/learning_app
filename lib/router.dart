import 'package:flutter/material.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/models/instructor.dart';

import 'screen/auth/forgot_password/forgot_password_screen.dart';
import 'screen/auth/otp_verification/otp_verification_screen.dart';
import 'screen/auth/password_changed_success/password_reset_success_screen.dart';
import 'screen/auth/reset_password/reset_password_screen.dart';
import 'screen/auth/sign_in/sign_in_screen.dart';
import 'screen/auth/sign_up/sign_up_screen.dart';
import 'screen/main/add_payment_method/add_payment_method_screen.dart';
import 'screen/main/app.dart';
import 'screen/main/call_screen/call_screen.dart';
import 'screen/main/categories/categories_screen.dart';
import 'screen/main/course_detail/course_detail_screen.dart';
import 'screen/main/explore/explore_screen.dart';
import 'screen/main/home/home_screen.dart';
import 'screen/main/invite_friends/invite_friends_screen.dart';
import 'screen/main/message_chat/message_chat_screen.dart';
import 'screen/main/my_courses/my_courses_screen.dart';
import 'screen/main/payment_method/payment_method_screen.dart';
import 'screen/main/payment_success/payment_success_screen.dart';
import 'screen/main/profile/profile_screen.dart';
import 'screen/main/progress/progress_screen.dart';
import 'screen/main/rating_review/rating_review_screen.dart';
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
    case MainApp.routeName:
      return MaterialPageRoute(builder: (_) => const MainApp());
    case HomeScreen.routeName:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    case ExploreScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ExploreScreen());
    case ProgressScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ProgressScreen());
    case MyCoursesScreen.routeName:
      return MaterialPageRoute(builder: (_) => const MyCoursesScreen());
    case ProfileScreen.routeName:
      return MaterialPageRoute(builder: (_) => const ProfileScreen());
    case InviteFriendsScreen.routeName:
      return MaterialPageRoute(builder: (_) => const InviteFriendsScreen());
    case CourseDetailScreen.routeName:
      Course argument = settings.arguments as Course;
      return MaterialPageRoute(builder: (_) => CourseDetailScreen(course: argument));
    case PaymentMethodScreen.routeName:
      Course argument = settings.arguments as Course;
      return MaterialPageRoute(builder: (_) => PaymentMethodScreen(course: argument));
    case AddPaymentMethodScreen.routeName:
      return MaterialPageRoute(builder: (_) => const AddPaymentMethodScreen());
    case PaymentSuccessScreen.routeName:
      return MaterialPageRoute(builder: (_) => const PaymentSuccessScreen());
    case CallScreen.routeName:
      Instructor argument = settings.arguments as Instructor;
      return MaterialPageRoute(builder: (_) => CallScreen(instructor: argument));
    case MessageChatScreen.routeName:
      Instructor argument = settings.arguments as Instructor;
      return MaterialPageRoute(builder: (_) => MessageChatScreen(instructor: argument));
    case RatingReviewScreen.routeName:
      return MaterialPageRoute(builder: (_) => const RatingReviewScreen());
    case CategoriesScreen.routeName:
      return MaterialPageRoute(builder: (_) => const CategoriesScreen());
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
