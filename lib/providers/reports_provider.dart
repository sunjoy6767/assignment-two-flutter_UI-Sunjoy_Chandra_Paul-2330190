import 'package:flutter/material.dart';
import '../models/spending_category_model.dart';

class ReportsProvider extends ChangeNotifier {
  final double totalExpenses = 139700.00;
  final double percentChangeVsLastMonth = 12;

  final List<SpendingCategoryModel> breakdown = const [
    SpendingCategoryModel(
      label: 'Food & Drink',
      amount: 49500.00,
      percent: 0.35,
      color: Color(0xFFEF5350),
    ),
    SpendingCategoryModel(
      label: 'Shopping',
      amount: 35200.00,
      percent: 0.25,
      color: Color(0xFF5C6BC0),
    ),
    SpendingCategoryModel(
      label: 'Housing',
      amount: 30800.00,
      percent: 0.22,
      color: Color(0xFFFFA726),
    ),
    SpendingCategoryModel(
      label: 'Transport',
      amount: 16500.00,
      percent: 0.12,
      color: Color(0xFF66BB6A),
    ),
    SpendingCategoryModel(
      label: 'Other',
      amount: 7700.00,
      percent: 0.06,
      color: Color(0xFFBDBDBD),
    ),
  ];
}
