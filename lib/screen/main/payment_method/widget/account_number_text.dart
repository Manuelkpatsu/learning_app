import 'package:flutter/material.dart';
import 'package:learning_app/utils/string_formatter.dart';

class AccountNumberText extends StatelessWidget {
  final String accountNumber;

  const AccountNumberText({Key? key, required this.accountNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      StringFormatter.formatString(
        accountNumber.replaceRange(0, accountNumber.length - 4, '*' * (accountNumber.length - 4)),
      ),
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.25,
      ),
    );
  }
}
