import 'package:flutter/material.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class DailyPlanningScreen extends StatelessWidget {
  const DailyPlanningScreen({Key? key}) : super(key: key);

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
                color: Color(0xFFB0C1FF),
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
            Padding(
              padding: const EdgeInsets.only(top: 50.0, bottom: 12.0),
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
                      child: Table(
                        //defaultColumnWidth: FixedColumnWidth(120.0),
                        border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 2),
                        columnWidths: const {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(1.4),
                          2: FlexColumnWidth(2),
                          3: FlexColumnWidth(1),
                        },
                        children: [
                          TableRow(children: [
                            Column(children: [
                              Text('Sr.No', style: TextStyle(fontSize: 20.0))
                            ]),
                            Column(children: [
                              Text('Class/Subject',
                                  style: TextStyle(fontSize: 20.0))
                            ]),
                            Column(children: [
                              Text('Activity', style: TextStyle(fontSize: 20.0))
                            ]),
                            Column(children: [
                              Text(
                                'Scheduled on',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('1')]),
                            Column(children: [Text('Class 1/English')]),
                            Column(children: [
                              Text(
                                  'Student share orally about events such as festivals celebrated in the neighbourhood bilingually.')
                            ]),
                            Column(children: [Text('25/08/2022')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint')]),
                            Column(children: [Text('MySQL')]),
                            Column(children: [Text('5*')]),
                            Column(children: [Text('5*')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint')]),
                            Column(children: [Text('ReactJS')]),
                            Column(children: [Text('5*')]),
                            Column(children: [Text('5*')]),
                          ]),
                          TableRow(children: [
                            Column(children: [Text('Javatpoint')]),
                            Column(children: [Text('ReactJS')]),
                            Column(children: [Text('5*')]),
                            Column(children: [Text('5*')]),
                          ]),
                        ],
                      ),
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
