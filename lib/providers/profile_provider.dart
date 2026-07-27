import 'package:flutter/material.dart';
import '../models/profile_model.dart';

class ProfileProvider extends ChangeNotifier {
  final ProfileModel profile = const ProfileModel(
    name: 'Sunjoy Chandra Paul',
    studentId: '2330190',
    email: '2330190@iub.edu.bd',
    bio:
        'I am an undergraduate Computer Science and Engineering student at '
        'Independent University, Bangladesh.',
  );
}
