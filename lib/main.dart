import 'package:flutter/material.dart';
import 'package:lakshya/Mobile Screeen Pages/homeScreen.dart';
import 'package:lakshya/Mobile Screeen Pages/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', initialRoute: 'a', routes: {
      'a': (context) => LoginPage(),
      'b': (context) => HomeScreen(),
      'c': (context) => HomeScreen(),
      'd': (context) => HomeScreen(),
    });
  }
}
