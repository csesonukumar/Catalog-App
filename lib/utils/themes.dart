import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData LightTheme(BuildContext context) => ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
      );
}

class CustomTextStyle {
  static const TextStyle headerStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.deepPurple,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 16,
    color: Colors.black87,
  );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);

// You can add more styles here
}
