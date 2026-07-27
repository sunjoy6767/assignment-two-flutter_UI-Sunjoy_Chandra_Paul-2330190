import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/bank_card_model.dart';
import '../../utils/currency_formatter.dart';

class LinkedAccountTile extends StatelessWidget {
  final LinkedAccountModel account;

  const LinkedAccountTile({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: AppColors.primary.withValues(alpha: 0.1),
          child: const Text(
            'S',
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                account.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              Text(
                formatBdt(account.balance),
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
        ),
        const Icon(
          Icons.chevron_right,
          color: AppColors.textSecondary,
        ),
      ],
    );
  }
}
