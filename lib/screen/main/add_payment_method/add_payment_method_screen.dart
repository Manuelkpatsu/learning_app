import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_app/screen/widget/app_bar_title.dart';
import 'package:learning_app/screen/widget/gradient_button.dart';
import 'package:learning_app/screen/widget/text_input_field.dart';
import 'package:learning_app/utils/card_month_input_formatter.dart';
import 'package:learning_app/utils/card_number_input_formatter.dart';
import 'package:learning_app/utils/validator.dart';

class AddPaymentMethodScreen extends StatefulWidget {
  static const routeName = '/add_payment_method';

  const AddPaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<AddPaymentMethodScreen> createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethodScreen> {
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _cvvCodeController = TextEditingController();
  final TextEditingController _cardHolderNameController = TextEditingController();
  final GlobalKey<FormState> _addPaymentMethodFormKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _cardNumberController.dispose();
    _expiryDateController.dispose();
    _cvvCodeController.dispose();
    _cardHolderNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Add Payment Method'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        physics: const AlwaysScrollableScrollPhysics(),
        child: Form(
          key: _addPaymentMethodFormKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              TextInputField(
                controller: _cardHolderNameController,
                validator: Validator.cardHolderName,
                inputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                autofillHints: const [AutofillHints.creditCardName],
                hintText: 'Card Holder Name',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _cardNumberController,
                validator: Validator.cardNumber,
                inputAction: TextInputAction.next,
                inputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(19),
                  CardNumberInputFormatter(),
                ],
                autofillHints: const [AutofillHints.creditCardNumber],
                hintText: 'Card Number',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _expiryDateController,
                validator: Validator.date,
                inputAction: TextInputAction.next,
                inputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                  CardMonthInputFormatter(),
                ],
                autofillHints: const [AutofillHints.creditCardExpirationDate],
                hintText: 'MM/YY',
              ),
              const SizedBox(height: 16),
              TextInputField(
                controller: _cvvCodeController,
                validator: Validator.cvv,
                inputAction: TextInputAction.done,
                inputType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(4),
                ],
                autofillHints: const [AutofillHints.creditCardSecurityCode],
                hintText: 'CVV',
              ),
              const SizedBox(height: 50),
              GradientButton(
                onPressed: () {
                  if (_addPaymentMethodFormKey.currentState!.validate()) {
                    Navigator.of(context).pop();
                  }
                },
                widget: const Text('Save'),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
