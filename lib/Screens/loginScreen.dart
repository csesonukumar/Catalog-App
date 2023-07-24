import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class loginscreen extends StatelessWidget {
  const loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
              height: 300,
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
                      Navigator.pushNamed(context, Myroutes.homeroute);
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(150.0, 60.0)),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 27.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
