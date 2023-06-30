import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';

class GiveAssessmentScreen extends StatefulWidget {
  @override
  State<GiveAssessmentScreen> createState() => _GiveAssessmentScreenState();
}

class _GiveAssessmentScreenState extends State<GiveAssessmentScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 61,
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
                          margin: EdgeInsets.all(8.0),
                          width: 364,
                          height: 168,
                          color: Color(0xFFC4E4F3),
                          child: Container(
                            margin: EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '1. Which number comes before? ___ , 8',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Nunito Sans',
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'a. 3',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 20,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: _incrementCounter,
                                  child: Text(
                                    'b. 7',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  'c. 5',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'd. 9',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          color: Color(0xFFC4E4F3),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '2.  What number comes in between    2 ,___ , 4?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: _incrementCounter,
                                child: Text(
                                  'a. 3',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Text(
                                'b. 10',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'c. 2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'd. 6',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(8),
                          color: Color(0xFFC4E4F3),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '3.  Which among the following numbers less?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: _incrementCounter,
                                child: Text(
                                  'a. 0',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Nunito Sans',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Text(
                                'b. 2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'c. 5',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'd. 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Nunito Sans',
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            const Text(
                              'Your Score:',
                            ),
                            Text(
                              '$_counter',
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ],
                        )
                      ],
                    )),
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
