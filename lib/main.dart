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
    return MaterialApp(title: 'Lakshya', initialRoute: 'j', routes: {
      'a': (context) => LoginPage(),
      'b': (context) => HomeScreen(),
      'c': (context) => TeacherDashboardScreen(),
      'd': (context) => SignUpScreen(),
      'e': (context) => RegisterScreen(),
      'f': (context) => ChooseStateScreen(),
      'g': (context) => SelectSubjectScreen(),
      'h': (context) => PrincipalDashboardScreen(),
      'i': (context) => ParentDashboardScreen(),
      'j': (context) => StudentDashboardScreen(),
    });
  }
}
