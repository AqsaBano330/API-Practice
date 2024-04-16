import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedapipractice/app/app.locator.dart';
import 'package:stackedapipractice/app/app.router.dart';

void main() async {
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,    );
  }
}

