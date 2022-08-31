import 'package:flutter/material.dart';
import 'package:application_6_navigator/homescreen.dart';
import 'package:application_6_navigator/detailscreen.dart';

void main() {
  runApp(NavApp());
}

class NavApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailScreen(),
      },
    );
  }
}



