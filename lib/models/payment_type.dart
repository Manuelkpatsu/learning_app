enum PaymentType {
  creditCard('Credit Card', 'assets/images/payment_methods/mastercard.png'),
  paypal('Paypal', 'assets/images/payment_methods/paypal.png'),
  payoneer('Payoneer', 'assets/images/payment_methods/payoneer.png'),
  bankTransfer('Bank Transfer', 'assets/images/payment_methods/bank-transfer.png'),
  mobileBanKing('Mobile Banking', 'assets/images/payment_methods/mobile-banking.png');

  const PaymentType(this.id, this.logo);

  final String id;
  final String logo;
}
