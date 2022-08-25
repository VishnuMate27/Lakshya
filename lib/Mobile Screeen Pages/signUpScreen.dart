import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDCEED2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Stack(
          children: <Widget>[
            Container(
              width: 51,
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xFF99D490),
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
            Center(
              child: const Text(
                'LAKSHYA',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF4468C3)),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(29, 90, 29, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Email Address or Username',
                  hintStyle: TextStyle(
                    backgroundColor: Colors.transparent,
                    fontFamily: 'Nunito Sans',
                    color: Color(0xFF767171),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(29, 40, 29, 30), //top should be 90
              child: TextFormField(
                obscureText: true,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Forget your login details?',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Get help logging in.'),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'd');
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
            Text(
              'OR',
              style: TextStyle(
                fontFamily: 'Nunito Sans',
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0xFF494444),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 30),
                width: 368,
                height: 63,
                decoration: BoxDecoration(
                  color: Color(0xFF99D490),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 60.0,
                      ),
                      Image(
                        image: AssetImage('icons/google.png'),
                      ),
                      Text(
                        ' Sign in with Google',
                        style: TextStyle(
                          fontFamily: 'Nunito Sans',
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF494444),
                        ),
                      ),
                    ],
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
