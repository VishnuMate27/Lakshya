import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterScreen extends StatelessWidget {
  String dropdownValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCEED2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 71),
              child: Row(
                children: [
                  SizedBox(
                    width: 85,
                  ),
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Nunito Sans',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    width: 91,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Color(0xFF99D490),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Nunito Sans',
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'WELCOME TO LAKSHYA',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0xFF4468C3),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              margin: EdgeInsets.only(left: 29, right: 29),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 29, right: 29, top: 56),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 29, right: 29, top: 56),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 29, right: 29, top: 56),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 29, right: 29, top: 56),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    FontAwesomeIcons.arrowDown,
                    color: Color(0xFF000000),
                  ),
                  hintText: 'Role',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 29, right: 29, top: 56),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'State',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 29, right: 29, top: 56),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'District',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
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
