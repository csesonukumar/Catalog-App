import 'package:flutter/material.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset(
            "assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Enter Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Enter Password",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Day-4");
                  },
                  style: TextButton.styleFrom(),
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
