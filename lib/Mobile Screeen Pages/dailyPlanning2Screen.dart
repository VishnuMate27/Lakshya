import 'package:flutter/material.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DailyPlanning2Screen extends StatelessWidget {
  const DailyPlanning2Screen({Key? key}) : super(key: key);

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
            Container(
              margin: EdgeInsets.only(top: 25),
              child: const Text(
                'Daily Planning',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: const Text(
                'Activity: Student share orally about events such as festivals celebrated in the neighbourhood bilingually.',
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 12.0),
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
                Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 80),
                    ),
                  ),
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
