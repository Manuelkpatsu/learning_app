import 'package:flutter/material.dart';
import 'package:learning_app/models/payment_method.dart';
import 'package:learning_app/theme/gradient.dart';

import 'account_number_text.dart';
import 'card_info_tile.dart';
import 'chip_image.dart';
import 'payment_type_image.dart';

class PaymentCard extends StatelessWidget {
  final PaymentMethod paymentMethod;

  const PaymentCard({Key? key, required this.paymentMethod}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: CustomGradient.cardGradient,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ChipImage(),
          const SizedBox(height: 20),
          AccountNumberText(accountNumber: paymentMethod.accountNumber),
          const SizedBox(height: 28),
          Row(
            children: [
              Expanded(
                child: CardInfoTile(
                  title: 'Card Holder Name',
                  info: paymentMethod.accountHolderName,
                ),
              ),
              const SizedBox(width: 15),
              CardInfoTile(title: 'Expiry Date', info: paymentMethod.expiryDate),
              const SizedBox(width: 15),
              PaymentTypeImage(image: paymentMethod.type.logo),
            ],
          ),
        ],
      ),
    );
  }
}
