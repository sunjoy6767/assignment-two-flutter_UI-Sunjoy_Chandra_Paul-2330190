import 'package:flutter/material.dart';

class TransactionModel {
  final String title;
  final String category;
  final String date;
  final double amount;
  final IconData icon;

  const TransactionModel({
    required this.title,
    required this.category,
    required this.date,
    required this.amount,
    required this.icon,
  });

  bool get isIncome => amount > 0;
}
