import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const ToolkitApp());
}

class ToolkitApp extends StatelessWidget {
  const ToolkitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toolkit Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}