import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/cart_page.dart';
import 'package:flutter_application_1/Screens/homeScreen.dart';
import 'package:flutter_application_1/Screens/loginScreen.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/utils/themes.dart';

void main() {
  runApp(const Sonu());
}

class Sonu extends StatelessWidget {
  const Sonu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.LightTheme(context),
      //home: homescreen(),
      initialRoute: "login",
      routes: {
        Myroutes.homeroute: (context) => const HomeScreen(),
        Myroutes.loginroute: (context) => const LoginScreen(),
        Myroutes.CartPage:(context) => const CartPage(),
      },
    );
  }
}
