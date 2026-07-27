import 'package:flutter/material.dart';
import '../../app.dart';
import '../common/section_card.dart';

class BioCard extends StatelessWidget {
  final String bio;

  const BioCard({super.key, required this.bio});

  @override
  Widget build(BuildContext context) {
    return SectionCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bio / Story',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '"$bio"',
            style: const TextStyle(
              fontSize: 13,
              height: 1.5,
              fontStyle: FontStyle.italic,
              color: AppColors.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}
