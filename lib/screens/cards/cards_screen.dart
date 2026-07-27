import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../providers/cards_provider.dart';
import '../../widgets/common/section_card.dart';
import '../../widgets/cards/bank_card_widget.dart';
import '../../widgets/cards/card_action_button.dart';
import '../../widgets/cards/linked_account_tile.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = context.watch<CardsProvider>();

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Cards',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 20),
          BankCardWidget(card: cards.card),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CardActionButton(
                  icon: Icons.block,
                  label: 'Block',
                  onTap: () => context.read<CardsProvider>().toggleBlocked(),
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: CardActionButton(
                  icon: Icons.credit_card_outlined,
                  label: 'Details',
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: CardActionButton(
                  icon: Icons.info_outline,
                  label: 'Limit',
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text(
            'Linked Accounts',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 12),
          SectionCard(
            child: Column(
              children: [
                for (final account in cards.linkedAccounts)
                  LinkedAccountTile(account: account),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
