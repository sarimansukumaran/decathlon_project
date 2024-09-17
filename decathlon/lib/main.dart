import 'package:decathlon/view/categories/categories.dart';
import 'package:decathlon/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Categories(),
    );
  }
}
