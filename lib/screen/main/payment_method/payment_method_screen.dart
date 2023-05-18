import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:learning_app/models/course.dart';
import 'package:learning_app/models/payment_method.dart';
import 'package:learning_app/models/payment_type.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'widget/payment_card.dart';
import 'widget/payment_method_tile.dart';
import 'widget/summary_widget.dart';

class PaymentMethodScreen extends StatefulWidget {
  static const routeName = '/payment_method';

  final Course course;

  const PaymentMethodScreen({Key? key, required this.course}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final List<PaymentMethod> _paymentMethods = const [
    PaymentMethod(
      id: 1,
      accountNumber: '1234567890453337',
      accountHolderName: 'Manuel Kpatsu',
      cvvCode: '123',
      expiryDate: '05/24',
      type: PaymentType.creditCard,
    ),
    PaymentMethod(
      id: 2,
      accountNumber: '1234567890453337',
      accountHolderName: 'Manuel Kpatsu',
      cvvCode: '123',
      expiryDate: '05/24',
      type: PaymentType.paypal,
    ),
    PaymentMethod(
      id: 3,
      accountNumber: '1234567890453337',
      accountHolderName: 'Manuel Kpatsu',
      cvvCode: '123',
      expiryDate: '05/24',
      type: PaymentType.payoneer,
    ),
    PaymentMethod(
      id: 4,
      accountNumber: '1234567890453337',
      accountHolderName: 'Manuel Kpatsu',
      cvvCode: '123',
      expiryDate: '05/24',
      type: PaymentType.bankTransfer,
    ),
    PaymentMethod(
      id: 5,
      accountNumber: '1234567890453337',
      accountHolderName: 'Manuel Kpatsu',
      cvvCode: '123',
      expiryDate: '05/24',
      type: PaymentType.mobileBanKing,
    ),
  ];
  int? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    final course = widget.course;

    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Payment Method'),
        centerTitle: true,
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(
              Icons.add_circle_outline_rounded,
              color: CustomColor.primaryColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          _selectedPaymentMethod == null
              ? const SizedBox.shrink()
              : PaymentCard(
                  paymentMethod: _paymentMethods
                      .firstWhere((paymentMethod) => _selectedPaymentMethod == paymentMethod.id),
                ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Column(
                    children: _paymentMethods
                        .map((paymentMethod) => PaymentMethodTile(
                              value: paymentMethod.id,
                              groupValue: _selectedPaymentMethod,
                              onChanged: (value) {
                                setState(() {
                                  _selectedPaymentMethod = value as int;
                                });
                              },
                              paymentMethod: paymentMethod,
                            ))
                        .toList(),
                  ),
                  SummaryWidget(course: course.name, amount: course.costOfCourse),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 30),
        child: GradientButton(
          onPressed: _selectedPaymentMethod == null ? null : () {},
          widget: const Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Pay Now'),
                ),
              ),
              Icon(IconlyLight.arrow_right_2),
            ],
          ),
        ),
      ),
    );
  }
}
