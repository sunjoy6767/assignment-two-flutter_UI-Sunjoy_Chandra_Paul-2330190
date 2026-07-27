import 'package:flutter/material.dart';
import '../../app.dart';

class _QuickAction {
  final IconData icon;
  final String label;

  const _QuickAction(this.icon, this.label);
}

class QuickActionsRow extends StatelessWidget {
  const QuickActionsRow({super.key});

  static const _actions = [
    _QuickAction(Icons.sync_alt, 'Transfer'),
    _QuickAction(Icons.receipt_long_outlined, 'Pay Bills'),
    _QuickAction(Icons.trending_up, 'Invest'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _actions
          .map(
            (action) => Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: _ActionButton(icon: action.icon, label: action.label),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const _ActionButton({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {},
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(icon, color: AppColors.primary),
            ),
            const SizedBox(height: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: AppColors.textPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
