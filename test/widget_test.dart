import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/app.dart';
import 'package:flutter_application_1/providers/nav_provider.dart';
import 'package:flutter_application_1/providers/home_provider.dart';
import 'package:flutter_application_1/providers/reports_provider.dart';
import 'package:flutter_application_1/providers/cards_provider.dart';
import 'package:flutter_application_1/providers/profile_provider.dart';

void main() {
  Widget buildApp() {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NavProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => ReportsProvider()),
        ChangeNotifierProvider(create: (_) => CardsProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
      ],
      child: const BankingApp(),
    );
  }

  testWidgets('BankingApp builds and shows the Home page with bottom nav', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(buildApp());
    await tester.pumpAndSettle();

    expect(find.text('Recent Transactions'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Reports'), findsOneWidget);
    expect(find.text('Cards'), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
  });

  testWidgets('Tapping bottom nav switches pages', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(buildApp());
    await tester.pumpAndSettle();

    await tester.tap(find.text('Reports'));
    await tester.pumpAndSettle();
    expect(find.text('Monthly Spending Report'), findsOneWidget);

    await tester.tap(find.text('Cards'));
    await tester.pumpAndSettle();
    expect(find.text('My Cards'), findsOneWidget);

    await tester.tap(find.text('Profile'));
    await tester.pumpAndSettle();
    expect(find.text('User Profile'), findsOneWidget);
  });
}
