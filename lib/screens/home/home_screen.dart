import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../providers/home_provider.dart';
import '../../widgets/common/app_header.dart';
import '../../widgets/common/section_card.dart';
import '../../widgets/home/balance_card.dart';
import '../../widgets/home/quick_actions_row.dart';
import '../../widgets/home/transaction_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final home = context.watch<HomeProvider>();

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppHeader(userName: home.userName),
          const SizedBox(height: 20),
          BalanceCard(
            totalBalance: home.totalBalance,
            savings: home.savings,
            last30DaysDelta: home.last30DaysDelta,
          ),
          const SizedBox(height: 20),
          const QuickActionsRow(),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Recent Transactions',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('View All'),
              ),
            ],
          ),
          SectionCard(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Column(
              children: [
                for (int i = 0; i < home.transactions.length; i++) ...[
                  TransactionTile(transaction: home.transactions[i]),
                  if (i != home.transactions.length - 1)
                    const Divider(height: 1),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
