import 'package:flutter/material.dart';
import 'package:lakshya/Mobile Screeen Pages/homeScreen.dart';
import 'package:lakshya/Mobile Screeen Pages/loginScreen.dart';
import 'package:lakshya/Mobile Screeen Pages/teacherDashboard.dart';
import 'package:lakshya/Mobile Screeen Pages/signUpScreen.dart';
import 'package:lakshya/Mobile%20Screeen%20Pages/SelectSubjectScreen.dart';
import 'package:lakshya/Mobile%20Screeen%20Pages/principalDashboardScreen.dart';
import 'package:lakshya/Mobile%20Screeen%20Pages/registerScreen.dart';
import 'package:lakshya/Mobile Screeen Pages/chooseStateScreen.dart';
import 'package:lakshya/Mobile Screeen Pages/parentDashboardScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Lakshya', initialRoute: 'c', routes: {
      'a': (context) => LoginPage(),
      'b': (context) => HomeScreen(),
      'c': (context) => TeacherDashboardScreen(),
      'd': (context) => SignUpScreen(),
      'e': (context) => RegisterScreen(),
      'f': (context) => ChooseStateScreen(),
      'g': (context) => SelectSubjectScreen(),
      'h': (context) => PrincipalDashboardScreen(),
      'i': (context) => ParentDashboardScreen(),
    });
  }
}
