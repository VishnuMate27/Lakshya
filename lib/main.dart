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
import 'package:lakshya/Mobile Screeen Pages/giveAssessmentScreen.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:lakshya/Mobile%20Screeen%20Pages/studentProgressScreen.dart';

import 'dart:async';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return MaterialApp(title: 'Lakshya', initialRoute: 'r', routes: {
      'a': (context) => HomeScreen(),
      'b': (context) => LoginPage(),
      'c': (context) => SignUpScreen(),
      'd': (context) => ChooseStateScreen(),
      'e': (context) => SelectSubjectScreen(),
      'f': (context) => StudentDashboardScreen(),
      'r': (context) => StudentProgressScreen(),
      's': (context) => GiveAssessmentScreen(),
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

// Widget _handleWindowDisplay() {
//   return StreamBuilder(
//     stream: FirebaseAuth.instance.onAuthStateChanged,
//     builder: (BuildContext context, snapshot) {
//       if (snapshot.connectionState == ConnectionState.waiting) {
//         return Center(
//           child: Text('Loading'),
//         );
//       }
//     },
//   );
// }
