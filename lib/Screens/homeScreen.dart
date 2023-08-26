// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/drawer.dart';
import 'package:flutter_application_1/utils/item_wiget.dart';
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

class CatelogHeader extends StatelessWidget {
  const CatelogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Catalog App",
          style: TextStyle(
            color: Colors.deepPurple,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        Text(
          "Trending Products",
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class catelogList extends StatelessWidget {
  const catelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatelogModel.items.length,
      itemBuilder: (context, index) {
        final catelog = CatelogModel.items[index];
        return CatelogItem(catelog: catelog);
      },
    );
  }
}

class CatelogItem extends StatelessWidget {
  final Item catelog;
  const CatelogItem({
    Key? key,
    required this.catelog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 248, 242, 242),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 150,
        width: 150,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Color.fromRGBO(176, 177, 175, 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.network(catelog.imageurl),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  catelog.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.deepPurple,
                  ),
                ),
                Text(
                  catelog.desc,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  // width: 100,
                  height: 10,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.all(20),
                  children: [
                    Text(
                      "\$${catelog.price}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 15.0),
                        backgroundColor: Colors.deepPurpleAccent,
                        shape: StadiumBorder(),
                      ),
                      onPressed: () {},
                      child: Text("Buy"),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
