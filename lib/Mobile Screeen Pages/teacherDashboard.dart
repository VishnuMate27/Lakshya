import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:lakshya/components/circular_card.dart';

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
        // leading: IconButton(
        //   icon: Image.asset(
        //     'icons/Threelines.png',
        //     height: 32,
        //   ),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
        actions: <Widget>[
          SizedBox(
            width: 46.12,
          ),
          GestureDetector(
            onTap: () {
              Text("Notification");
            },
            child: Image.asset(
              'icons/Notification.png',
              height: 32,
            ),
          ),
          SizedBox(
            width: 13.0,
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
            width: 89.9607,
          ),
          // Row(
          //   children: [
          //     Text(
          //       'Aarohi Deshmukh',
          //       style: TextStyle(
          //         fontSize: 17,
          //         fontWeight: FontWeight.w700,
          //         fontFamily: 'Nunito Sans',
          //       ),
          //     ),
          //   ],
          // ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      //     leading: ElevatedButton.icon(
      //          onPressed: () {
      // Text("Pressed");
      // }, icon: , label: Text('Message'),),),
      body: Container(
        margin: EdgeInsets.only(top: 63),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 250.0,
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 40.0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFF58CDAA),
                        foregroundImage: AssetImage('icons/Teacher-img.png'),
                        radius: 38.0,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'Aarohi Deshmukh',
                      style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 9.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFC9D3F8),
                    Color(0xFFD9E0F5),
                    Color(0xFFD2DCFF),
                    Color(0xFFDAE1F8),
                    Color(0xFFB8C7F8),
                    Color(0xFFDFE5F9),
                  ],
                  stops: [
                    1.0,
                    1.0,
                    1.0,
                    1.0,
                    1.0,
                    1.0,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 97.0,
                        ),
                        Image(
                          width: 41.0,
                          height: 36.0,
                          image: AssetImage('icons/Student-img.png'),
                        ),
                        SizedBox(
                          width: 1.0,
                        ),
                        Text(
                          'Total Students: 69',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Nunito Sans',
                          ),
                        ),
                        SizedBox(
                          width: 19.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            Text("Search");
                          },
                          child: Image(
                            width: 20.0,
                            height: 20.0,
                            image: AssetImage('icons/Search.png'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE9EEFC),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x5E000000),
                            blurRadius: 4.0,
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      width: 369,
                      height: 90,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 34.0,
                          ),
                          Text(
                            '1.',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 29.0,
                          ),
                          Text(
                            'Riya Thakur',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 48.0,
                          ),
                          Text(
                            '95%',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 26.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE9EEFC),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x5E000000),
                            blurRadius: 4.0,
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      width: 369,
                      height: 90,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 34.0,
                          ),
                          Text(
                            '1.',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 29.0,
                          ),
                          Text(
                            'Riya Thakur',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 48.0,
                          ),
                          Text(
                            '95%',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 26.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE9EEFC),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x5E000000),
                            blurRadius: 4.0,
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      width: 369,
                      height: 90,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 34.0,
                          ),
                          Text(
                            '1.',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 29.0,
                          ),
                          Text(
                            'Riya Thakur',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 48.0,
                          ),
                          Text(
                            '95%',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 26.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE9EEFC),
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x5E000000),
                            blurRadius: 4.0,
                            offset: Offset(
                              15.0, // Move to right 10  horizontally
                              15.0, // Move to bottom 10 Vertically
                            ),
                          ),
                        ],
                      ),
                      width: 369,
                      height: 90,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 34.0,
                          ),
                          Text(
                            '1.',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 29.0,
                          ),
                          Text(
                            'Riya Thakur',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 48.0,
                          ),
                          Text(
                            '95%',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 26.0,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 28.0,
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFFE9EEFC),
                    //     borderRadius: BorderRadius.circular(20.0),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Color(0x5E000000),
                    //         blurRadius: 4.0,
                    //         offset: Offset(
                    //           15.0, // Move to right 10  horizontally
                    //           15.0, // Move to bottom 10 Vertically
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   width: 369,
                    //   height: 90,
                    //   child: Row(
                    //     children: [
                    //       SizedBox(
                    //         width: 34.0,
                    //       ),
                    //       Text(
                    //         '1.',
                    //         style: TextStyle(
                    //           fontFamily: 'Nunito Sans',
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 29.0,
                    //       ),
                    //       Text(
                    //         'Riya Thakur',
                    //         style: TextStyle(
                    //           fontFamily: 'Nunito Sans',
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 48.0,
                    //       ),
                    //       Text(
                    //         '95%',
                    //         style: TextStyle(
                    //           fontFamily: 'Nunito Sans',
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 26.0,
                    //       ),
                    //       TextButton(
                    //         onPressed: () {},
                    //         child: Text(
                    //           'View',
                    //           style: TextStyle(
                    //             fontFamily: 'Nunito Sans',
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 28.0,
                    // ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //     color: Color(0xFFE9EEFC),
                    //     borderRadius: BorderRadius.circular(20.0),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Color(0x5E000000),
                    //         blurRadius: 4.0,
                    //         offset: Offset(
                    //           15.0, // Move to right 10  horizontally
                    //           15.0, // Move to bottom 10 Vertically
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   width: 369,
                    //   height: 90,
                    //   child: Row(
                    //     children: [
                    //       SizedBox(
                    //         width: 34.0,
                    //       ),
                    //       Text(
                    //         '1.',
                    //         style: TextStyle(
                    //           fontFamily: 'Nunito Sans',
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 29.0,
                    //       ),
                    //       Text(
                    //         'Riya Thakur',
                    //         style: TextStyle(
                    //           fontFamily: 'Nunito Sans',
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 48.0,
                    //       ),
                    //       Text(
                    //         '95%',
                    //         style: TextStyle(
                    //           fontFamily: 'Nunito Sans',
                    //           fontSize: 20,
                    //           fontWeight: FontWeight.w600,
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: 26.0,
                    //       ),
                    //       TextButton(
                    //         onPressed: () {},
                    //         child: Text(
                    //           'View',
                    //           style: TextStyle(
                    //             fontFamily: 'Nunito Sans',
                    //             fontSize: 16,
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 28.0,
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
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

// Container(
// margin: EdgeInsets.only(top: 177.0),
// alignment: Alignment.bottomCenter,
// decoration: BoxDecoration(
// gradient: LinearGradient(
// colors: [
// Color(0xFFC9D3F8),
// Color(0xFFD9E0F5),
// Color(0xFFD2DCFF),
// Color(0xFFDAE1F8),
// Color(0xFFB8C7F8),
// Color(0xFFDFE5F9),
// ],
// stops: [
// 1.0,
// 1.0,
// 1.0,
// 1.0,
// 1.0,
// 1.0,
// ],
// begin: Alignment.topCenter,
// end: Alignment.bottomCenter,
// ),
// borderRadius: BorderRadius.only(
// topLeft: Radius.circular(60),
// topRight: Radius.circular(60),
// ),
// ),
// child: SingleChildScrollView(
// child: Column(
// children: [
// SizedBox(
// height: 16,
// ),
// Row(
// children: [
// SizedBox(
// width: 97.0,
// ),
// Image(
// width: 41.0,
// height: 36.0,
// image: AssetImage('icons/Student-img.png'),
// ),
// SizedBox(
// width: 1.0,
// ),
// Text(
// 'Total Students: 69',
// style: TextStyle(
// fontSize: 18,
// fontWeight: FontWeight.w600,
// fontFamily: 'Nunito Sans',
// ),
// ),
// SizedBox(
// width: 19.0,
// ),
// GestureDetector(
// onTap: () {
// Text("Search");
// },
// child: Image(
// width: 20.0,
// height: 20.0,
// image: AssetImage('icons/Search.png'),
// ),
// ),
// ],
// ),
// SizedBox(
// height: 26.0,
// ),
// Container(
// decoration: BoxDecoration(
// color: Color(0xFFE9EEFC),
// borderRadius: BorderRadius.circular(20.0),
// boxShadow: [
// BoxShadow(
// color: Color(0x5E000000),
// blurRadius: 4.0,
// offset: Offset(
// 15.0, // Move to right 10  horizontally
// 15.0, // Move to bottom 10 Vertically
// ),
// ),
// ],
// ),
// width: 369,
// height: 90,
// child: Row(
// children: [
// SizedBox(
// width: 34.0,
// ),
// Text(
// '1.',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 29.0,
// ),
// Text(
// 'Riya Thakur',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 48.0,
// ),
// Text(
// '95%',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 26.0,
// ),
// TextButton(
// onPressed: () {},
// child: Text(
// 'View',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 16,
// fontWeight: FontWeight.w600,
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 28.0,
// ),
// Container(
// decoration: BoxDecoration(
// color: Color(0xFFE9EEFC),
// borderRadius: BorderRadius.circular(20.0),
// boxShadow: [
// BoxShadow(
// color: Color(0x5E000000),
// blurRadius: 4.0,
// offset: Offset(
// 15.0, // Move to right 10  horizontally
// 15.0, // Move to bottom 10 Vertically
// ),
// ),
// ],
// ),
// width: 369,
// height: 90,
// child: Row(
// children: [
// SizedBox(
// width: 34.0,
// ),
// Text(
// '1.',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 29.0,
// ),
// Text(
// 'Riya Thakur',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 48.0,
// ),
// Text(
// '95%',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 26.0,
// ),
// TextButton(
// onPressed: () {},
// child: Text(
// 'View',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 16,
// fontWeight: FontWeight.w600,
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 28.0,
// ),
// Container(
// decoration: BoxDecoration(
// color: Color(0xFFE9EEFC),
// borderRadius: BorderRadius.circular(20.0),
// boxShadow: [
// BoxShadow(
// color: Color(0x5E000000),
// blurRadius: 4.0,
// offset: Offset(
// 15.0, // Move to right 10  horizontally
// 15.0, // Move to bottom 10 Vertically
// ),
// ),
// ],
// ),
// width: 369,
// height: 90,
// child: Row(
// children: [
// SizedBox(
// width: 34.0,
// ),
// Text(
// '1.',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 29.0,
// ),
// Text(
// 'Riya Thakur',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 48.0,
// ),
// Text(
// '95%',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 26.0,
// ),
// TextButton(
// onPressed: () {},
// child: Text(
// 'View',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 16,
// fontWeight: FontWeight.w600,
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 28.0,
// ),
// Container(
// decoration: BoxDecoration(
// color: Color(0xFFE9EEFC),
// borderRadius: BorderRadius.circular(20.0),
// boxShadow: [
// BoxShadow(
// color: Color(0x5E000000),
// blurRadius: 4.0,
// offset: Offset(
// 15.0, // Move to right 10  horizontally
// 15.0, // Move to bottom 10 Vertically
// ),
// ),
// ],
// ),
// width: 369,
// height: 90,
// child: Row(
// children: [
// SizedBox(
// width: 34.0,
// ),
// Text(
// '1.',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 29.0,
// ),
// Text(
// 'Riya Thakur',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 48.0,
// ),
// Text(
// '95%',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 26.0,
// ),
// TextButton(
// onPressed: () {},
// child: Text(
// 'View',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 16,
// fontWeight: FontWeight.w600,
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 28.0,
// ),
// Container(
// decoration: BoxDecoration(
// color: Color(0xFFE9EEFC),
// borderRadius: BorderRadius.circular(20.0),
// boxShadow: [
// BoxShadow(
// color: Color(0x5E000000),
// blurRadius: 4.0,
// offset: Offset(
// 15.0, // Move to right 10  horizontally
// 15.0, // Move to bottom 10 Vertically
// ),
// ),
// ],
// ),
// width: 369,
// height: 90,
// child: Row(
// children: [
// SizedBox(
// width: 34.0,
// ),
// Text(
// '1.',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 29.0,
// ),
// Text(
// 'Riya Thakur',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 48.0,
// ),
// Text(
// '95%',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 26.0,
// ),
// TextButton(
// onPressed: () {},
// child: Text(
// 'View',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 16,
// fontWeight: FontWeight.w600,
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 28.0,
// ),
// Container(
// decoration: BoxDecoration(
// color: Color(0xFFE9EEFC),
// borderRadius: BorderRadius.circular(20.0),
// boxShadow: [
// BoxShadow(
// color: Color(0x5E000000),
// blurRadius: 4.0,
// offset: Offset(
// 15.0, // Move to right 10  horizontally
// 15.0, // Move to bottom 10 Vertically
// ),
// ),
// ],
// ),
// width: 369,
// height: 90,
// child: Row(
// children: [
// SizedBox(
// width: 34.0,
// ),
// Text(
// '1.',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 29.0,
// ),
// Text(
// 'Riya Thakur',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 48.0,
// ),
// Text(
// '95%',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 20,
// fontWeight: FontWeight.w600,
// ),
// ),
// SizedBox(
// width: 26.0,
// ),
// TextButton(
// onPressed: () {},
// child: Text(
// 'View',
// style: TextStyle(
// fontFamily: 'Nunito Sans',
// fontSize: 16,
// fontWeight: FontWeight.w600,
// ),
// ),
// ),
// ],
// ),
// ),
// SizedBox(
// height: 28.0,
// ),
// ],
// ),
// ),
// ),
