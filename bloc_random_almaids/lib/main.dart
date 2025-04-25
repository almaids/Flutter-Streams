import 'package:flutter/material.dart';
import 'random_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BLoC - Almaids',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const RandomScreen(),
    );
  }
}
