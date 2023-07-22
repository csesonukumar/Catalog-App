import 'package:flutter/material.dart';

void main() {
  runApp(sonu());
}

class sonu extends StatelessWidget {
  const sonu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
      ),
    );
  }
}
