import 'package:flutter/material.dart';
import 'package:learning_app/models/payment_method.dart';
import 'package:learning_app/theme/custom_color.dart';

import 'payment_method_logo.dart';
import 'payment_method_name_text.dart';

class PaymentMethodTile extends StatelessWidget {
  final Object value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;
  final PaymentMethod paymentMethod;

  const PaymentMethodTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.paymentMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: CustomColor.unselectedRadioButtonColor.withOpacity(0.6),
        ),
        child: RadioListTile(
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          controlAffinity: ListTileControlAffinity.trailing,
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          title: Row(
            children: [
              PaymentMethodLogo(logo: paymentMethod.type.logo),
              const SizedBox(width: 20),
              PaymentTypeNameText(name: paymentMethod.type.id),
            ],
          ),
          activeColor: CustomColor.orangeColor,
          dense: true,
          visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity),
        ),
      ),
    );
  }
}
