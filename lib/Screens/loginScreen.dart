import 'package:flutter/material.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text(
          "Login Screen",
      style:TextStyle(
        fontSize: 44,
        color: Colors.red,
      ),
      ),
      ),
    );
  }
}
