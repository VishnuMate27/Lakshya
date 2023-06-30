import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class ChooseStateScreen extends StatefulWidget {
  const ChooseStateScreen({Key? key}) : super(key: key);

  @override
  State<ChooseStateScreen> createState() => _ChooseStateScreenState();
}

class _ChooseStateScreenState extends State<ChooseStateScreen> {
  final List<String> items_board = [
    'CENTRAL BOARD OF SECONDARY EDUCATION, NEW DELHI',
    'NATIONAL INSTITUTE OF OPEN SCHOOLING, NEW DELHI',
    'MAHARASHTRA STATE BOARD OF SECONDARY AND HIGHER SECONDARY EDUCATION, MAHARASHTRA',
    'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH',
    'BOARD OF SECONDARY EDUCATION, MANIPUR',
    'PUNJAB SCHOOL EDUCATION BOARD, PUNJAB',
    'BOARD OF SECONDARY EDUCATION, TELANGANA STATE',
    'BOARD OF SCHOOL EDUCATION, UTTARAKHAND',
  ];
  final List<String> items_medium = [
    'English',
    'Hindi',
    'Marathi',
  ];
  final List<String> items_class = [
    'Nursery',
    'Preschool 1',
    'Preschool 2',
    'Class 1',
    'Class 2',
    'Class 3',
  ];

  String? selectedValue_board;
  String? selectedValue_medium;
  String? selectedValue_class;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F7FA),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Select',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF58CDAA),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  icon: Icon(Icons.keyboard_arrow_down),
                  buttonPadding: EdgeInsets.only(left: 34, right: 23),
                  isExpanded: true,
                  hint: Text(
                    'BOARD',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Nunito Sans',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  items: items_board
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue_board,
                  onChanged: (value) {
                    setState(() {
                      selectedValue_board = value as String;
                    });
                  },
                  buttonHeight: 60,
                  buttonWidth: 354,
                  itemHeight: 40,
                  dropdownMaxHeight: 200,
                  searchController: textEditingController,
                  searchInnerWidget: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 4,
                      right: 8,
                      left: 8,
                    ),
                    child: TextFormField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        hintText: 'Search for an item...',
                        hintStyle: const TextStyle(fontSize: 25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return (item.value.toString().contains(searchValue));
                  },
                  //This to clear the search value when you close the menu
                  onMenuStateChange: (isOpen) {
                    if (!isOpen) {
                      textEditingController.clear();
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF58CDAA),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  icon: Icon(Icons.keyboard_arrow_down),
                  buttonPadding: EdgeInsets.only(left: 34, right: 23),
                  isExpanded: true,
                  hint: Text(
                    'MEDIUM',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Nunito Sans',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  items: items_medium
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue_medium,
                  onChanged: (value) {
                    setState(() {
                      selectedValue_medium = value as String;
                    });
                  },
                  buttonHeight: 60,
                  buttonWidth: 354,
                  itemHeight: 40,
                  dropdownMaxHeight: 200,
                  searchController: textEditingController,
                  searchInnerWidget: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 4,
                      right: 8,
                      left: 8,
                    ),
                    child: TextFormField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        hintText: 'Search for an item...',
                        hintStyle: const TextStyle(fontSize: 25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return (item.value.toString().contains(searchValue));
                  },
                  //This to clear the search value when you close the menu
                  onMenuStateChange: (isOpen) {
                    if (!isOpen) {
                      textEditingController.clear();
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF58CDAA),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton2(
                  icon: Icon(Icons.keyboard_arrow_down),
                  buttonPadding: EdgeInsets.only(left: 34, right: 23),
                  isExpanded: true,
                  hint: Text(
                    'CLASS',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Nunito Sans',
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                  items: items_class
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ))
                      .toList(),
                  value: selectedValue_class,
                  onChanged: (value) {
                    setState(() {
                      selectedValue_class = value as String;
                    });
                  },
                  buttonHeight: 60,
                  buttonWidth: 354,
                  itemHeight: 40,
                  dropdownMaxHeight: 200,
                  searchController: textEditingController,
                  searchInnerWidget: Padding(
                    padding: const EdgeInsets.only(
                      top: 8,
                      bottom: 4,
                      right: 8,
                      left: 8,
                    ),
                    child: TextFormField(
                      controller: textEditingController,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        hintText: 'Search for an item...',
                        hintStyle: const TextStyle(fontSize: 25),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  searchMatchFn: (item, searchValue) {
                    return (item.value.toString().contains(searchValue));
                  },
                  //This to clear the search value when you close the menu
                  onMenuStateChange: (isOpen) {
                    if (!isOpen) {
                      textEditingController.clear();
                    }
                  },
                ),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'e');
              },
              child: Container(
                margin: EdgeInsets.only(top: 46, bottom: 34),
                width: 368,
                height: 63,
                decoration: BoxDecoration(
                  color: Color(0xFF99D490),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontFamily: 'Nunito Sans',
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF494444),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// final List<String> genderItems = [
//   'Male',
//   'Female',
// ];
//
// String? selectedValue;
//
//
// final TextEditingController textEditingController = TextEditingController();
//
// @override
// void dispose() {
//   textEditingController.dispose();
//   super.dispose();
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton2(
//           isExpanded: true,
//           hint: Text(
//             'Select Item',
//             style: TextStyle(
//               fontSize: 14,
//               color: Theme.of(context).hintColor,
//             ),
//           ),
//           items: items
//               .map((item) => DropdownMenuItem<String>(
//             value: item,
//             child: Text(
//               item,
//               style: const TextStyle(
//                 fontSize: 14,
//               ),
//             ),
//           ))
//               .toList(),
//           value: selectedValue,
//           onChanged: (value) {
//             setState(() {
//               selectedValue = value as String;
//             });
//           },
//           buttonHeight: 40,
//           buttonWidth: 200,
//           itemHeight: 40,
//           dropdownMaxHeight: 200,
//           searchController: textEditingController,
//           searchInnerWidget: Padding(
//             padding: const EdgeInsets.only(
//               top: 8,
//               bottom: 4,
//               right: 8,
//               left: 8,
//             ),
//             child: TextFormField(
//               controller: textEditingController,
//               decoration: InputDecoration(
//                 isDense: true,
//                 contentPadding: const EdgeInsets.symmetric(
//                   horizontal: 10,
//                   vertical: 8,
//                 ),
//                 hintText: 'Search for an item...',
//                 hintStyle: const TextStyle(fontSize: 12),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//             ),
//           ),
//           searchMatchFn: (item, searchValue) {
//             return (item.value.toString().contains(searchValue));
//           },
//           //This to clear the search value when you close the menu
//           onMenuStateChange: (isOpen) {
//             if (!isOpen) {
//               textEditingController.clear();
//             }
//           },
//         ),
//       ),
//     ),
//   );
// }
