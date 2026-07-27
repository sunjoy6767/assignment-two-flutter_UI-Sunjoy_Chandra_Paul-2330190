import 'package:flutter/material.dart';
import '../models/transaction_model.dart';

class HomeProvider extends ChangeNotifier {
  final String userName = 'Sunjoy Chandra Paul';
  final double totalBalance = 984945.00;
  final double savings = 605000;
  final double last30DaysDelta = 33000;

  final List<TransactionModel> transactions = const [
    TransactionModel(
      title: 'Netflix Subscription',
      category: 'Entertainment',
      date: 'Today',
      amount: -2200.00,
      icon: Icons.movie_outlined,
    ),
    TransactionModel(
      title: 'Coffee Shop',
      category: 'Food & Drink',
      date: 'Today',
      amount: -500.00,
      icon: Icons.coffee_outlined,
    ),
    TransactionModel(
      title: 'Salary Deposit',
      category: 'Income',
      date: 'Yesterday',
      amount: 385000.00,
      icon: Icons.account_balance_wallet_outlined,
    ),
    TransactionModel(
      title: 'Grocery Store',
      category: 'Shopping',
      date: 'Yesterday',
      amount: -6200.00,
      icon: Icons.shopping_cart_outlined,
    ),
    TransactionModel(
      title: 'Daraz Purchase',
      category: 'Shopping',
      date: '2 days ago',
      amount: -13200.00,
      icon: Icons.local_shipping_outlined,
    ),
  ];
}
