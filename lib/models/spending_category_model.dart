import 'package:flutter/material.dart';

class SpendingCategoryModel {
  final String label;
  final double amount;
  final double percent;
  final Color color;

  const SpendingCategoryModel({
    required this.label,
    required this.amount,
    required this.percent,
    required this.color,
  });
}
