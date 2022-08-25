import 'package:flutter/material.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CountingPageScreen extends StatelessWidget {
  const CountingPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFAEEFDC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Image.asset('images/counting.png'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, left: 25),
                  child: const Text(
                    'Maths',
                    style: TextStyle(
                      fontSize: 29,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
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
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Text(
                        'Counting',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 35),
                      child: Text(
                        'Development Goal 3 : (ILM 4.10) Can count forward and backward from a particular number up to 20',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Nunito Sans',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'z');
                      },
                      child: Container(
                        width: 318,
                        height: 74,
                        color: Color(0xFFC4E4F3),
                        child: Center(
                          child: Text(
                            'Watch Video',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF224BDF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'z');
                      },
                      child: Container(
                        width: 318,
                        height: 74,
                        color: Color(0xFFC4E4F3),
                        child: Center(
                          child: Text(
                            'Play Game',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF224BDF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'z');
                      },
                      child: Container(
                        width: 318,
                        height: 74,
                        color: Color(0xFFC4E4F3),
                        child: Center(
                          child: Text(
                            'View Score',
                            style: TextStyle(
                              fontFamily: 'Nunito Sans',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF224BDF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
