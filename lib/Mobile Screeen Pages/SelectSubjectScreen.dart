import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lakshya/components/reusable_card.dart';
import 'package:lakshya/Mobile Screeen Pages/chooseStateScreen.dart';

class SelectSubjectScreen extends StatelessWidget {
  const SelectSubjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCF1FD), //
      appBar: AppBar(
        backgroundColor: Color(0xFF58CDAA),
        elevation: 0,
        title: Stack(
          children: <Widget>[
            Container(
              width: 51,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFFE9FFFE),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                width: 20,
                height: 20,
                child: Icon(
                  FontAwesomeIcons.arrowLeft,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 202, //226
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SUBJECTS',
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Nunito Sans',
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 106,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFCF4F4),
                      border: Border.all(color: Color(0xFF000000)),
                    ),
                    child: Center(
                      child: Text(
                        'Maths',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Nunito Sans',
                          color: Color(0xFF080FC2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Color(0xFF58CDAA),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(35),
                  bottomLeft: Radius.circular(35),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                // ReusableCard(
                //   colour: Color(0xFFeec9f4),
                //   onPressed: () {
                //     Text("Pressed");
                //   },
                //   cardChild: Container(
                //     height: 211.0,
                //     width: 148.0,
                //     decoration: const BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('images/student.png'),
                //       ),
                //     ),
                //     child: Container(
                //       padding: const EdgeInsets.only(bottom: 14.0),
                //       child: const Text(
                //         "Student",
                //         style: TextStyle(
                //           color: Colors.black,
                //           fontWeight: FontWeight.w400,
                //           fontSize: 20.0,
                //           fontFamily: 'Rufina',
                //         ),
                //       ),
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                // ReusableCard(
                //   colour: Color(0xFFeec9f4),
                //   onPressed: () {
                //     Text("Pressed");
                //   },
                //   cardChild: Container(
                //     height: 211.0,
                //     width: 148.0,
                //     decoration: const BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('images/student.png'),
                //       ),
                //     ),
                //     child: Container(
                //       padding: const EdgeInsets.only(bottom: 14.0),
                //       child: const Text(
                //         "Student",
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontWeight: FontWeight.w400,
                //             fontSize: 20.0,
                //             fontFamily: 'Rufina'),
                //       ),
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                GestureDetector(
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 42, top: 41), //left should be 52
                    width: 141,
                    height: 154,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF3F8EC),
                      image: DecorationImage(
                        // alignment: Alignment.topCenter,
                        image: new AssetImage("icons/english.png"),
                      ),
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'English',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 't');
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 42, top: 41), //left should be 52
                    width: 141,
                    height: 154,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF3F8EC),
                      image: DecorationImage(
                        // alignment: Alignment.topCenter,
                        image: new AssetImage("images/maths1.png"),
                      ),
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'Maths',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                // ReusableCard(
                //   colour: Color(0xFFeec9f4),
                //   onPressed: () {
                //     Text("Pressed");
                //   },
                //   cardChild: Container(
                //     height: 211.0,
                //     width: 148.0,
                //     decoration: const BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('images/student.png'),
                //       ),
                //     ),
                //     child: Container(
                //       padding: const EdgeInsets.only(bottom: 14.0),
                //       child: const Text(
                //         "Student",
                //         style: TextStyle(
                //           color: Colors.black,
                //           fontWeight: FontWeight.w400,
                //           fontSize: 20.0,
                //           fontFamily: 'Rufina',
                //         ),
                //       ),
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                // ReusableCard(
                //   colour: Color(0xFFeec9f4),
                //   onPressed: () {
                //     Text("Pressed");
                //   },
                //   cardChild: Container(
                //     height: 211.0,
                //     width: 148.0,
                //     decoration: const BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('images/student.png'),
                //       ),
                //     ),
                //     child: Container(
                //       padding: const EdgeInsets.only(bottom: 14.0),
                //       child: const Text(
                //         "Student",
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontWeight: FontWeight.w400,
                //             fontSize: 20.0,
                //             fontFamily: 'Rufina'),
                //       ),
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                Container(
                  margin:
                      EdgeInsets.only(left: 42, top: 41), //left should be 52
                  width: 141,
                  height: 154,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFF3F8EC),
                    image: DecorationImage(
                      // alignment: Alignment.topCenter,
                      image: new AssetImage("images/Hindi.png"),
                    ),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Hindi',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'f');
                  },
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 42, top: 41), //left should be 52
                    width: 141,
                    height: 154,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFF3F8EC),
                      image: DecorationImage(
                        // alignment: Alignment.topCenter,
                        image: new AssetImage("images/Evs.png"),
                      ),
                    ),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Text(
                              'EVS',
                              style: TextStyle(
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                // ReusableCard(
                //   colour: Color(0xFFeec9f4),
                //   onPressed: () {
                //     Text("Pressed");
                //   },
                //   cardChild: Container(
                //     height: 211.0,
                //     width: 148.0,
                //     decoration: const BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('images/student.png'),
                //       ),
                //     ),
                //     child: Container(
                //       padding: const EdgeInsets.only(bottom: 14.0),
                //       child: const Text(
                //         "Student",
                //         style: TextStyle(
                //           color: Colors.black,
                //           fontWeight: FontWeight.w400,
                //           fontSize: 20.0,
                //           fontFamily: 'Rufina',
                //         ),
                //       ),
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                // ReusableCard(
                //   colour: Color(0xFFeec9f4),
                //   onPressed: () {
                //     Text("Pressed");
                //   },
                //   cardChild: Container(
                //     height: 211.0,
                //     width: 148.0,
                //     decoration: const BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage('images/student.png'),
                //       ),
                //     ),
                //     child: Container(
                //       padding: const EdgeInsets.only(bottom: 14.0),
                //       child: const Text(
                //         "Student",
                //         style: TextStyle(
                //             color: Colors.black,
                //             fontWeight: FontWeight.w400,
                //             fontSize: 20.0,
                //             fontFamily: 'Rufina'),
                //       ),
                //       alignment: Alignment.bottomCenter,
                //     ),
                //   ),
                // ),
                Container(
                  margin:
                      EdgeInsets.only(left: 42, top: 41), //left should be 52
                  width: 141,
                  height: 154,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFF3F8EC),
                    image: DecorationImage(
                      // alignment: Alignment.topCenter,
                      image: new AssetImage("images/Gk.png"),
                    ),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'GK',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 42, top: 41), //left should be 52
                  width: 141,
                  height: 154,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFF3F8EC),
                    image: DecorationImage(
                      // alignment: Alignment.topCenter,
                      image: new AssetImage("images/Drawing.png"),
                    ),
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            'Drawing',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
