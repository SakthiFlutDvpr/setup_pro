import 'package:flutter/material.dart';
import 'package:setup_pro/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Setup Widgets',
      home: Home(),
    );
  }
}
