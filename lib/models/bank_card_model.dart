class BankCardModel {
  final String bankName;
  final String maskedNumber;
  final String cardHolder;
  final String expiry;

  const BankCardModel({
    required this.bankName,
    required this.maskedNumber,
    required this.cardHolder,
    required this.expiry,
  });
}

class LinkedAccountModel {
  final String name;
  final double balance;

  const LinkedAccountModel({required this.name, required this.balance});
}
