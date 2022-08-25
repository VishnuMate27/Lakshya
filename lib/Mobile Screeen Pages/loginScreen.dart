import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lakshya/Mobile%20Screeen%20Pages/homeScreen.dart';
import 'package:lakshya/components/circular_card.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 132.0,
              ),
              Center(
                child: Text(
                  'Login To LAKSHYA',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 29.0,
              ),
              Center(
                child: Text(
                  '• Login to access all the features',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                ),
              ),
              SizedBox(
                height: 19.0,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('images/lakshyalogo1.png'),
                radius: 100,
              ),
              SizedBox(
                height: 43.0,
              ),
              // ReusableCard(colour: colour, cardChild: cardChild, onPressed: onPressed
              //   margin: ,
              //   color: Color(0xFF99D490),
              //   child: Text('Login with LAKSHYA'),
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'c');
                },
                child: Container(
                  width: 315,
                  height: 63,
                  decoration: BoxDecoration(
                    color: Color(0xFF99D490),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Login with LAKSHYA',
                      style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Don’t have an account? Register here',
                  style: TextStyle(
                    fontFamily: 'Nunito Sans',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Button Pressed');
                },
                child: Container(
                  width: 315,
                  height: 63,
                  decoration: BoxDecoration(
                    color: Color(0xFF99D490),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Text(
                      'Login as Ministry of Education',
                      style: TextStyle(
                        fontFamily: 'Nunito Sans',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              GestureDetector(
                onTap: () {
                  print('Button Pressed');
                },
                child: Container(
                  width: 315,
                  height: 63,
                  decoration: BoxDecoration(
                    color: Color(0xFF99D490),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.card_giftcard,
                        ),
                        Text(
                          'Sign in with Google',
                          style: TextStyle(
                            fontFamily: 'Nunito Sans',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
