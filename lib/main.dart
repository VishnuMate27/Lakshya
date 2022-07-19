import 'package:flutter/material.dart';
import 'package:lakshya/Mobile Screeen Pages/homeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', initialRoute: 'a', routes: {
      'a': (context) => const HomeScreen(),
      'b': (context) => const HomeScreen(),
      'c': (context) => const HomeScreen(),
      'd': (context) => const HomeScreen(),
    });
  }
}
