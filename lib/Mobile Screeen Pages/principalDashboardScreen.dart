import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PrincipalDashboardScreen extends StatelessWidget {
  const PrincipalDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF58CDAA),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 10,
                ), //left: 29.0,top should be 71
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 10), //should be 71
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
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8.0,
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
                              left: 8.0,
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
                        padding: const EdgeInsets.only(top: 8.0),
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
                  )
                ],
              )
            ],
          ),

          // Container(
          //   margin: EdgeInsets.only(top: 215),
          //   color: Color(0xFFEDF9FF),
          // ),
        ],
      ),
    );
  }
}
