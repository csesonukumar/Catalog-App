import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/homeScreen.dart';
import 'package:flutter_application_1/Screens/loginScreen.dart';

void main() {
  runApp(sonu());
}

class sonu extends StatelessWidget {
  const sonu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: homescreen(),
      initialRoute: "/login",
      routes: {
        "/":(context) => homescreen(),
        "/login":(context) => loginscreen(),
      },
    );
  }
}
