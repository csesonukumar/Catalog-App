import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  String name = "";
  bool change = false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      //Navigator.pushNamed(context, Myroutes.homeroute);
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, Myroutes.homeroute);
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Dream App", style: TextStyle(color: Colors.white))),
      // color: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/login.png",
                fit: BoxFit.cover, height: 300),
            SizedBox(height: 15),
            Text("Welcome $name", style: TextStyle(fontSize: 40)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Username", labelText: "Enter Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please Enter Password";
                          }
                          else if(value.length<6){
                            return "Password is can not less Then 6 Character";
                          }
                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Password", labelText: "Enter Password")),
                    SizedBox(height: 20),

                    // ElevatedButton(
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, Myroutes.homeroute);
                    //   },
                    //   style: ButtonStyle(
                    //     minimumSize: MaterialStateProperty.all(Size(150.0, 60.0)),
                    //   ),
                    //   child: Text(
                    //     "Login",
                    //     style: TextStyle(
                    //       fontSize: 27.5,
                    //     ),
                    //   ),
                    // ),

                    Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        //splashColor: Colors.green,
                        onTap: () => movetohome(context),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          child: Container(
                            height: 50,
                            width: change ? 50 : 100,
                            alignment: Alignment.center,

                            // decoration: BoxDecoration(
                            //   color: Colors.deepPurple,
                            //   borderRadius: BorderRadius.circular(8),
                            // ),

                            child: change
                                ? Icon(Icons.done, color: Colors.deepOrange)
                                : Text("Login",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
