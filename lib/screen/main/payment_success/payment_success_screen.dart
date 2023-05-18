import 'package:flutter/material.dart';
import 'package:learning_app/screen/main/app.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';

import 'widget/payment_accepted_text.dart';
import 'widget/payment_confirmation_message_text.dart';

class PaymentSuccessScreen extends StatefulWidget {
  static const routeName = '/payment_success';

  const PaymentSuccessScreen({Key? key}) : super(key: key);

  @override
  State<PaymentSuccessScreen> createState() => _PaymentSuccessScreenState();
}

class _PaymentSuccessScreenState extends State<PaymentSuccessScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Payment Confirmation'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ScaleTransition(
          scale: _animation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/payment-success.png',
                width: 270,
                height: 240,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              const PaymentAcceptedText(),
              const SizedBox(height: 10),
              const PaymentConfirmationMessageText(),
              const SizedBox(height: 50),
              GradientButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    MainApp.routeName,
                    (route) => false,
                  );
                },
                widget: const Text('Back to Home'),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
