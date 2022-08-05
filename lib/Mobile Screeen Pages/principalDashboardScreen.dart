import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui' as ui;
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class PrincipalDashboardScreen extends StatelessWidget {
  const PrincipalDashboardScreen({Key? key}) : super(key: key);

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
            width: 314,
          )
        ],
      ),
      // drawer: Drawer(
      //   width: 260,
      // ),
      drawer: Drawer(
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
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                        color: Color(0xFFF3F8EC),
                        width: 318,
                        height: 89,
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

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6792009, size.height * 0.04347380);
    path_0.cubicTo(
        size.width * 0.4705047,
        size.height * -0.05217620,
        size.width * 0.1394437,
        size.height * 0.03744929,
        0,
        size.height * 0.09421841);
    path_0.lineTo(0, size.height * 0.9985836);
    path_0.lineTo(size.width, size.height * 0.9985836);
    path_0.lineTo(size.width, size.height * 0.1074258);
    path_0.cubicTo(
        size.width * 0.9984322,
        size.height * 0.07081558,
        size.width * 0.9320794,
        size.height * 0.006770892,
        size.width * 0.6792009,
        size.height * 0.04347380);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;
    paint_0_stroke.color = Color(0xffEDF9FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xffEDF9FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
