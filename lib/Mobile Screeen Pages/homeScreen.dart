import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lakshya/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({Key? key}) : super(key: key);
  final List<String> items = [
    'English',
    'Hindi',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        // decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("images/background.png"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'LAKSHYA',
                    style: TextStyle(
                      fontFamily: 'Roboto Slab',
                      fontWeight: FontWeight.w600,
                      fontSize: 32.0,
                    ),
                  ),
                  SizedBox(width: 55.0),
                  CircleAvatar(
                    backgroundImage: AssetImage('images/lakshyalogo1.png'),
                    radius: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Center(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Text(
                        'Select language',
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
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  icon: Icon(
                    Icons.arrow_circle_down_rounded,
                    size: 16,
                    color: Colors.black,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.yellow,
                  iconDisabledColor: Colors.grey,
                  buttonHeight: 47,
                  buttonWidth: 190,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.black26,
                    ),
                    color: Color(0xFFFFCBCB),
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: <Widget>[
                  ReusableCard(
                    colour: Color(0xFFeec9f4),
                    onPressed: () {
                      Navigator.pushNamed(context, 'b');
                    },
                    cardChild: Container(
                      height: 211.0,
                      width: 148.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/Student.png'),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: const Text(
                          "Student",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0,
                            fontFamily: 'Rufina',
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  ReusableCard(
                    colour: Color(0xFFeec9f4),
                    onPressed: () {
                      Navigator.pushNamed(context, 'y');
                    },
                    cardChild: Container(
                      height: 211.0,
                      width: 148.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/Teacher.png'),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: const Text(
                          "Teacher",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              fontFamily: 'Rufina'),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  ReusableCard(
                    colour: Color(0xFFeec9f4),
                    onPressed: () {
                      Navigator.pushNamed(context, 'b');
                    },
                    cardChild: Container(
                      height: 211.0,
                      width: 148.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/princple.png'),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: const Text(
                          "Principal",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              fontFamily: 'Rufina'),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                  ReusableCard(
                    colour: Color(0xFFeec9f4),
                    onPressed: () {
                      Text("Pressed");
                    },
                    cardChild: Container(
                      height: 211.0,
                      width: 148.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/moe.png'),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: const Text(
                          "Ministry",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              fontFamily: 'Rufina'),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ReusableCard(
                    colour: Color(0xFFeec9f4),
                    onPressed: () {
                      Navigator.pushNamed(context, 'z');
                    },
                    cardChild: Container(
                      height: 211.0,
                      width: 148.0,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/parents.png'),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 14.0),
                        child: const Text(
                          "Parent",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 20.0,
                              fontFamily: 'Rufina'),
                        ),
                        alignment: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
