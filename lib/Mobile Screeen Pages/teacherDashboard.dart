import 'package:flutter/material.dart';

class TeacherDashboardScreen extends StatelessWidget {
  const TeacherDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF58CDAA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF000000)),
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            'icons/Threelines.png',
            height: 32,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Text("Notification");
            },
            child: Image.asset(
              'icons/Notification.png',
              height: 32,
            ),
          ),
          GestureDetector(
            onTap: () {
              Text("Search");
            },
            child: Image.asset(
              'icons/Search.png',
              height: 32,
            ),
          ),
          SizedBox(
            width: 150,
          ),
          Container(
            width: 76,
            height: 73,
            child: CircleAvatar(
              backgroundColor: Color(0xFF58CDAA),
              backgroundImage: AssetImage('icons/Teacher-img.png'),
              radius: 38.0,
            ),
          ),
        ],
      ),
      //     leading: ElevatedButton.icon(
      //          onPressed: () {
      // Text("Pressed");
      // },, icon: , label: Text('Message'),),),
      drawer: Drawer(
        backgroundColor: Colors.redAccent,
      ),
      // bottomNavigationBar: GradientBottomNavigationBar(
      //   backgroundColorStart: Colors.red,
      //   backgroundColorEnd: Colors.purple,
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.mail_outline),
      //     ),
      //   ],
      //   onTap: (index) {
      //     //Handle button tap
      //   },
      // ),
    );
  }
}
