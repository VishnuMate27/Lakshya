import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class StudentDashboardScreen extends StatelessWidget {
  final List<String> items = [
    'English',
    'Hindi',
  ];
  String? selectedValue;
  // const StudentDashboardScreen({Key? key}) : super(key: key);

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
          SizedBox(
            width: 140,
          ),
          CircleAvatar(
            radius: 62,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF58CDAA),
              child: Container(
                width: 47,
                height: 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('icons/image3.png'),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: 275,
          // ),
        ],
      ),
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
            Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 12.0),
              child: SizedBox(
                height: 57,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 125,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F8EC),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width:
                                  1, //                   <--- border width here
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Nursery',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 125,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F8EC),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width:
                                  1, //                   <--- border width here
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Nursery',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 125,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F8EC),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width:
                                  1, //                   <--- border width here
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Nursery',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 125,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F8EC),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width:
                                  1, //                   <--- border width here
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Nursery',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 125,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F8EC),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width:
                                  1, //                   <--- border width here
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Nursery',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          width: 125,
                          height: 57,
                          decoration: BoxDecoration(
                            color: Color(0xFFF3F8EC),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                              width:
                                  1, //                   <--- border width here
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Nursery',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                      DropdownButton2(
                        isExpanded: false,
                        hint: Row(
                          children: const [
                            Text(
                              'Subject',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {},
                        icon: Icon(
                          FeatherIcons.arrowDown,
                          size: 16,
                          color: Colors.black,
                        ),
                        iconSize: 14,
                        iconEnabledColor: Colors.yellow,
                        iconDisabledColor: Colors.grey,
                        buttonHeight: 36,
                        buttonWidth: 106,
                        buttonPadding:
                            const EdgeInsets.only(left: 14, right: 14),
                        buttonDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black26,
                          ),
                          color: Color(0xFFFCF4F4),
                        ),
                      ),
                      SizedBox(
                        height: 41,
                      ),
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
                        child: Row(
                          children: [
                            Container(
                              width: 125,
                              height: 65,
                              decoration: BoxDecoration(
                                  // image: DecorationImage(
                                  //   image: AssetImage('images/'),
                                  //   fit: BoxFit.fill,
                                  // ),
                                  ),
                            ),
                            SizedBox(
                              width: 23,
                            ),
                            Text(
                              'Score Sheet',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF1F65A5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      // ElevatedButton(
                      //   onPressed: () {},
                      //   child: Container(
                      //     width: 100, //126
                      //     height: 10, //35
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(50),
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         'Back',
                      //         style: TextStyle(
                      //           fontWeight: FontWeight.w600,
                      //           fontSize: 15,
                      //           fontFamily: 'Nunito Sans',
                      //           color: Color(0xFF000000),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
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
            icon: Icon(
              FeatherIcons.bookmark,
              color: Color(0xFF000000),
            ),
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
