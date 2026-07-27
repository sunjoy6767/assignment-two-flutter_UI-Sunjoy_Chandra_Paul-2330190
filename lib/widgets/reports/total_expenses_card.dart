import 'package:flutter/material.dart';
import '../../app.dart';
import '../../utils/currency_formatter.dart';
import '../common/section_card.dart';

class TotalExpensesCard extends StatelessWidget {
  final double totalExpenses;
  final double percentChangeVsLastMonth;

  const TotalExpensesCard({
    super.key,
    required this.totalExpenses,
    required this.percentChangeVsLastMonth,
  });

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Total Expenses (Last 30 days)',
            style: TextStyle(fontSize: 12, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 8),
          Text(
            '-${formatBdt(totalExpenses)}',
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: AppColors.danger,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(
                Icons.arrow_upward,
                color: AppColors.danger,
                size: 14,
              ),
              const SizedBox(width: 4),
              Text(
                'Up ${percentChangeVsLastMonth.toStringAsFixed(0)}% from last month',
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.danger,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
