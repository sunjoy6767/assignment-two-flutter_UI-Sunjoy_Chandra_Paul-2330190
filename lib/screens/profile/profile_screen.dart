import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app.dart';
import '../../providers/profile_provider.dart';
import '../../widgets/profile/profile_avatar.dart';
import '../../widgets/profile/profile_info_tile.dart';
import '../../widgets/profile/bio_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final profile = context.watch<ProfileProvider>().profile;

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'User Profile',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(child: ProfileAvatar(initials: profile.initials)),
          const SizedBox(height: 24),
          ProfileInfoTile(label: 'Name', value: profile.name),
          const SizedBox(height: 12),
          ProfileInfoTile(label: 'Student ID', value: profile.studentId),
          const SizedBox(height: 12),
          ProfileInfoTile(label: 'Email', value: profile.email),
          const SizedBox(height: 12),
          BioCard(bio: profile.bio),
        ],
      ),
    );
  }
}
