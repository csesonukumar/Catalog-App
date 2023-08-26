// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/home_wigets/catalog_header.dart';
import 'package:flutter_application_1/home_wigets/catalog_list.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/utils/themes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loaddata();
  }

  loaddata() async {
    await Future.delayed(Duration(seconds: 3));
    var catelogjson = await rootBundle.loadString("assets/files/Catalog.json");
    // print(catelogjson);
    var DecodedData = jsonDecode(catelogjson);
    //print(DecodedData);
    var productsdata = DecodedData["Items"];
    // print(productsdata);

    // List<Item> list = List.from(productsdata)
    //     .map<Item>((item) => Item.fromMap(item))
    //     .toList();

    CatelogModel.items = List.from(productsdata)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate(15, (index) => CatelogModel.items[0]);
    String day = "Good Day";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.LightTheme(context),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, Myroutes.CartPage);
          },
          child: Icon(CupertinoIcons.cart),
        ),
        backgroundColor: Color.fromARGB(255, 237, 231, 231),
        body: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CatelogHeader(),
                  (CatelogModel.items != null && CatelogModel.items.isNotEmpty)
                      ? Expanded(child: catelogList())
                      : Center(
                          child: CircularProgressIndicator(),
                        )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
