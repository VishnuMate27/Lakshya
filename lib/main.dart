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
import 'package:lakshya/Mobile Screeen Pages/studentDashboardScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lakshya/Mobile Screeen Pages/dailyPlanningScreen.dart';
import 'package:lakshya/Mobile Screeen Pages/dailyPlanning2Screen.dart';
import 'package:lakshya/Mobile Screeen Pages/countingPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);
//
//   if (shouldUseFirestoreEmulator) {
//     FirebaseFirestore.instance.useFirestoreEmulator('localhost', 8080);
//   }
//   runApp(FirestoreExampleApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Lakshya', initialRoute: 'a', routes: {
      'a': (context) => HomeScreen(),
      'b': (context) => LoginPage(),
      'c': (context) => SignUpScreen(),
      'd': (context) => ChooseStateScreen(),
      'e': (context) => SelectSubjectScreen(),
      'f': (context) => StudentDashboardScreen(),
      't': (context) => CountingPageScreen(),
      'u': (context) => DailyPlanningScreen(),
      'v': (context) => DailyPlanning2Screen(),
      'w': (context) => RegisterScreen(),
      'y': (context) => TeacherDashboardScreen(),
      'x': (context) => PrincipalDashboardScreen(),
      'z': (context) => ParentDashboardScreen(),
    });
  }
}
