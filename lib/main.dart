import 'package:flutter/material.dart';
import 'package:madrastak/pages/splash.dart';
import 'package:madrastak/utils/color_utility.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Madrastak',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtility.scaffoldBackground,
        colorScheme: ColorScheme.fromSeed(seedColor: ColorUtility.primary),
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
