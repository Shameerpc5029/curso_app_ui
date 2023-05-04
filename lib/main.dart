import 'package:flutter/material.dart';
import 'package:ui_task/screens/explore/explore_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const ExploreScreen(),
    );
  }
}
