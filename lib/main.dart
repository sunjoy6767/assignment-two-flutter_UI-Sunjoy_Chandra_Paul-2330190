import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'providers/nav_provider.dart';
import 'providers/home_provider.dart';
import 'providers/reports_provider.dart';
import 'providers/cards_provider.dart';
import 'providers/profile_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => ReportsProvider()),
        ChangeNotifierProvider(create: (_) => CardsProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: const BankingApp(),
    ),
  );
}
