import 'package:flutter/material.dart';
import 'Pages/login_page.dart';
import 'Pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/LoginPage',
      routes: {
        '/LoginPage': (context) => LoginPage(),
        '/SignupPage': (context) => SignupPage(),
      },
    );
  }
}
