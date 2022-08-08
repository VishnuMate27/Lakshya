import 'package:flutter/material.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as ui;
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ParentDashboardScreen extends StatelessWidget {
  const ParentDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAEEFDC),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color(0xFF000000)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Text("Notification");
            },
            child: Icon(
              FontAwesomeIcons.bell,
              color: Color(0xff000000),
            ),
          ),
          SizedBox(
            width: 30,
          ),
          GestureDetector(
            onTap: () {
              Text("Search");
            },
            child: Icon(
              FontAwesomeIcons.search,
              color: Color(0xff000000),
            ),
          ),
        ],
      ),
      // drawer: Drawer(
      //   width: 260,
      // ),
      drawer: Drawer(
        backgroundColor: Color(0xFFEDF9FF),
        width: 259,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            SizedBox(
              height: 138,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: Color(0xFF58CDAA),
                ),
                child: Center(
                  child: Text(
                    'LAKSHYA',
                    style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.dark_mode_rounded,
                color: Color(0xFF000000),
              ),
              title: Text(
                'Switch to dark mode',
                style: TextStyle(
                  color: Color(0xFF224BDF),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: 'Nunito Sans',
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                FeatherIcons.settings,
                color: Color(0xFF000000),
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: Color(0xFF224BDF),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: 'Nunito Sans',
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                FeatherIcons.helpCircle,
                color: Color(0xFF000000),
              ),
              title: Text(
                'Language',
                style: TextStyle(
                  color: Color(0xFF224BDF),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: 'Nunito Sans',
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xFF000000),
              ),
              title: Text(
                'Help',
                style: TextStyle(
                  color: Color(0xFF224BDF),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: 'Nunito Sans',
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Color(0xFF000000),
              ),
              title: Text(
                'Log out',
                style: TextStyle(
                  color: Color(0xFF224BDF),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  fontFamily: 'Nunito Sans',
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     SizedBox(
            //       width: 61,
            //     ),
            //     Column(
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.only(
            //             left: 220,
            //             right: 25,
            //           ), //left 326
            //           child: CircleAvatar(
            //             radius: 40,
            //             backgroundColor: Colors.black,
            //             child: CircleAvatar(
            //               radius: 38,
            //               backgroundColor: Color(0xFF58CDAA),
            //               child: Container(
            //                 width: 47 * 2,
            //                 height: 45 * 2,
            //                 decoration: BoxDecoration(
            //                   image: DecorationImage(
            //                     image: AssetImage('icons/image3.png'),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding:
            //               const EdgeInsets.only(left: 200), //left should be 318
            //           child: Text(
            //             'Riya Thakur',
            //             style: TextStyle(
            //               fontFamily: 'Nunito Sans',
            //               fontSize: 20,
            //               fontWeight: FontWeight.w400,
            //             ),
            //           ),
            //         )
            //       ],
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50.0,
                        top: 31,
                      ),
                      child: Text(
                        'Hello !!!',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Microsoft Sans Serif',
                          color: Color(0xFF080FC2),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 90.0,
                      ),
                      child: Text(
                        'Sachin Kale',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Microsoft Sans Serif',
                          color: Color(0xFF000000),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 61,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 50.0, left: 15, right: 25),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.black,
                    child: CircleAvatar(
                      radius: 38,
                      backgroundColor: Color(0xFF58CDAA),
                      child: Container(
                        width: 47 * 2,
                        height: 45 * 2,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('icons/Student-img.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                CustomPaint(
                  size: Size(
                      428,
                      (428 * 1.6495327102803738)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 68, left: 55, right: 55),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE9EEFC),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset:
                                  Offset(5, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        width: 318,
                        height: 89,
                        child: Center(
                          child: Text(
                            'Score Sheet',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1F65A5),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFFF3F8EC),
                        width: 318,
                        height: 89,
                        margin: EdgeInsets.only(top: 25), //should be 35
                        child: Center(
                          child: Text(
                            'Student Progress',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1F65A5),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFFF3F8EC),
                        width: 318,
                        height: 89,
                        margin: EdgeInsets.only(top: 25), //should be 35
                        child: Center(
                          child: Text(
                            'Student Progress',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1F65A5),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFFF3F8EC),
                        width: 318,
                        height: 89,
                        margin: EdgeInsets.only(top: 25), //should be 35
                        child: Center(
                          child: Text(
                            'Student Progress',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1F65A5),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFFF3F8EC),
                        width: 318,
                        height: 89,
                        margin: EdgeInsets.only(top: 25), //should be 35
                        child: Center(
                          child: Text(
                            'Student Progress',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF1F65A5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Container(
                          width: 100, //126
                          height: 10, //35
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              'Back',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                fontFamily: 'Nunito Sans',
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF58CDAA),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.download),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: '',
          ),
        ],
      ),
    );
  }
}
