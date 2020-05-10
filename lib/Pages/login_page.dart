import 'package:flutter/material.dart';
import '../Utility/reusable_ui.dart';
import '../Color/color.dart';

class LoginPage extends StatelessWidget {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0XFF73AEF5),
                  Color(0XFF61A4F1),
                  Color(0XFF478DE0),
                  Color(0XFF398AE5),
                ],

                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  kReusableInputTextField(
                    columnHeader: 'Email',
                    hintText: 'Enter your email',
                    textFieldIcon: Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                    onChangeCallback: (value) {
                      email = value;
                      print(email);
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  kReusablePasswordField(
                    columnHeader: 'Password',
                    hintText: 'Enter your password',
                    textFieldIcon: Icon(
                      Icons.vpn_key,
                      color: Colors.white,
                    ),
                    onChangeCallback: (value) {
                      password = value;
                      print(password);
                    },
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        print('Forgot Password');
                      },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 25.0),
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        print('Login Pressed');
                      },
                      color: Colors.white,
                      padding: EdgeInsets.all(15.0),
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Color(0xFF527DAA),
                          letterSpacing: 1.5,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'OpenSans',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Dont have an Account?',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print('Go to signup page');
                          Navigator.pushNamed(context, '/SignupPage');
                        },
                        child: Text(
                          ' Sign up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
