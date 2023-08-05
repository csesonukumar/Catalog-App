import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    String day = "Good Day";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: SafeArea(child: Text("1st Option")),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Today is $day", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
