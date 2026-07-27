import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF6C5DD3);
  static const Color primaryDark = Color(0xFF4B3FBF);
  static const Color background = Color(0xFFF5F6FA);
  static const Color cardBackground = Colors.white;
  static const Color textPrimary = Color(0xFF1D1E2C);
  static const Color textSecondary = Color(0xFF8B8D97);
  static const Color income = Color(0xFF2ECC71);
  static const Color expense = Color(0xFF1D1E2C);
  static const Color danger = Color(0xFFE74C3C);

  static const List<Color> balanceGradient = [
    Color(0xFF7B6EF6),
    Color(0xFF4B3FBF),
  ];
}

class BankingApp extends StatelessWidget {
  const BankingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
        ),
        fontFamily: 'Roboto',
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          surfaceTintColor: Colors.transparent,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: AppColors.textPrimary),
        ).apply(
          bodyColor: AppColors.textPrimary,
          displayColor: AppColors.textPrimary,
        ),
      ),
      home: const MainScreen(),
    );
  }
}
