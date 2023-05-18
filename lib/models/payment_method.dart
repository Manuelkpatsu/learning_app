import 'package:equatable/equatable.dart';

import 'payment_type.dart';

class PaymentMethod extends Equatable {
  final int id;
  final String accountNumber;
  final String accountHolderName;
  final String cvvCode;
  final String expiryDate;
  final PaymentType type;

  const PaymentMethod({
    required this.id,
    required this.accountNumber,
    required this.accountHolderName,
    required this.cvvCode,
    required this.expiryDate,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        accountNumber,
        accountHolderName,
        cvvCode,
        expiryDate,
        type,
      ];
}
