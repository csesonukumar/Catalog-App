import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

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
          title: Text("Today is $day"),
        ),
      ),
    );
  }
}
