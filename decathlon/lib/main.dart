import 'package:decathlon/view/account_screen/account_screen.dart';
import 'package:decathlon/view/bottom_navbar_section/bottom_navbar_section.dart';
import 'package:decathlon/view/categories/categories.dart';
import 'package:decathlon/view/notification_screen/notificationScreen.dart';

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
      home: SplashScreen(),
    );
  }
}
