import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../providers/reports_provider.dart';
import '../../widgets/common/section_card.dart';
import '../../widgets/reports/total_expenses_card.dart';
import '../../widgets/reports/spending_category_bar.dart';

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final reports = context.watch<ReportsProvider>();

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Monthly Spending Report',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 20),
          TotalExpensesCard(
            totalExpenses: reports.totalExpenses,
            percentChangeVsLastMonth: reports.percentChangeVsLastMonth,
          ),
          const SizedBox(height: 20),
          SectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Spending Breakdown',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                for (final category in reports.breakdown)
                  SpendingCategoryBar(category: category),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
