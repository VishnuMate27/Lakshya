import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:lakshya/components/rpsCustomPainter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:pie_chart/pie_chart.dart';

class StudentProgressScreen extends StatefulWidget {
  const StudentProgressScreen({Key? key}) : super(key: key);

  @override
  State<StudentProgressScreen> createState() => _StudentProgressScreenState();
}

class _StudentProgressScreenState extends State<StudentProgressScreen> {
  Map<String, double> dataMap = {
    "DG 1": 100,
    "DG 2": 85,
    "DG 3": 91,
  };
  final colorList = <Color>[
    const Color(0xfffdcb6e),
    const Color(0xff0984e3),
    const Color(0xfffd79a8),
    const Color(0xffe17055),
    const Color(0xff6c5ce7),
  ];
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
                  margin: EdgeInsets.only(top: 50),
                  child: PieChart(
                    dataMap: dataMap,
                    animationDuration: Duration(milliseconds: 800),
                    chartLegendSpacing: 32,
                    chartRadius: MediaQuery.of(context).size.width / 3.2,
                    colorList: colorList,
                    initialAngleInDegree: 0,
                    chartType: ChartType.ring,
                    ringStrokeWidth: 32,
                    centerText: "Development Goals",
                    legendOptions: LegendOptions(
                      showLegendsInRow: false,
                      legendPosition: LegendPosition.right,
                      showLegends: true,
                      legendShape: BoxShape.circle,
                      legendTextStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    chartValuesOptions: ChartValuesOptions(
                      showChartValueBackground: true,
                      showChartValues: true,
                      showChartValuesInPercentage: false,
                      showChartValuesOutside: false,
                      decimalPlaces: 1,
                    ),
                    // gradientList: ---To add gradient colors---
                    // emptyColorGradient: ---Empty Color gradient---
                  ),
                )
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
