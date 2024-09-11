// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sample_api/home.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleDarkMode() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor:isDarkMode ? Colors.black : Colors.white,
      ),
      home: ScreenHome(isDarkMode: isDarkMode, onToggleDarkMode: toggleDarkMode,)
    );
  }
}
