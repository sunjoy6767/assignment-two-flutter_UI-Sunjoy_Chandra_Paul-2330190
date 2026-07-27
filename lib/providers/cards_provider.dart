import 'package:flutter/material.dart';
import '../models/bank_card_model.dart';

class CardsProvider extends ChangeNotifier {
  final BankCardModel card = const BankCardModel(
    bankName: 'BANK',
    maskedNumber: '4567  ****  ****  1234',
    cardHolder: 'Sunjoy Chandra Paul',
    expiry: '12/28',
  );

  final List<LinkedAccountModel> linkedAccounts = const [
    LinkedAccountModel(name: 'Shared Savings', balance: 605000.00),
  ];

  bool _isBlocked = false;
  bool get isBlocked => _isBlocked;

  void toggleBlocked() {
    _isBlocked = !_isBlocked;
    notifyListeners();
  }
}
