import 'package:flutter/material.dart';
import '../../app.dart';

class ProfileAvatar extends StatelessWidget {
  final String initials;
  final double radius;

  const ProfileAvatar({super.key, required this.initials, this.radius = 40});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: AppColors.primary,
      child: Text(
        initials,
        style: TextStyle(
          color: Colors.white,
          fontSize: radius * 0.7,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
