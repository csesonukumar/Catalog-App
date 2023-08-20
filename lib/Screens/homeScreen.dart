import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/drawer.dart';
import 'package:flutter_application_1/utils/item_wiget.dart';
import 'package:flutter_application_1/utils/themes.dart';
import 'dart:convert';

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
          drawer: MyDrawer(),
          appBar: AppBar(
            title: Text(
              "Today is $day",
            ),
          ),
          body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  final Item = CatelogModel.items[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    clipBehavior: Clip.antiAlias,
                    child: GridTile(
                      child: Image.network(Item.imageurl),
                      header: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple,
                          ),
                          child: Text(
                            Item.name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                      footer: Text(Item.price.toString()),
                    ),
                  );
                },
                itemCount: CatelogModel.items.length,
              )
              // (CatelogModel.items != null && CatelogModel.items.isNotEmpty)?ListView.builder(
              //   itemCount: CatelogModel.items.length,
              //   itemBuilder: (context, index) {
              //     return ItemWiget(
              //       item: CatelogModel.items[index],
              //     );
              //   },
              // ):Center(child: CircularProgressIndicator(),),
              )
          //SingleChildScrollView(
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       // SizedBox(
          //       //   height: 300,
          //       // ),
          //       // Row(
          //       //   mainAxisAlignment: MainAxisAlignment.center,
          //       //   children: [
          //       //     Column(
          //       //       mainAxisAlignment: MainAxisAlignment.center,
          //       //       crossAxisAlignment: CrossAxisAlignment.center,
          //       //       children: [
          //       //         Container(
          //       //             height: 100,
          //       //             width: 100,
          //       //             decoration: const BoxDecoration(
          //       //               borderRadius:
          //       //                   BorderRadius.only(topLeft: Radius.circular(10)),
          //       //               color: Color.fromARGB(255, 13, 194, 235),
          //       //             )),
          //       //         const SizedBox(
          //       //           height: 5,
          //       //         ),
          //       //         Container(
          //       //           height: 100,
          //       //           width: 100,
          //       //           decoration: const BoxDecoration(
          //       //             borderRadius: BorderRadius.only(
          //       //                 bottomLeft: Radius.circular(10)),
          //       //             color: Color.fromARGB(255, 13, 194, 235),
          //       //           ),
          //       //         ),
          //       //       ],
          //       //     ),
          //       //     const SizedBox(
          //       //       width: 5,
          //       //     ),
          //       //     Column(
          //       //       mainAxisAlignment: MainAxisAlignment.center,
          //       //       crossAxisAlignment: CrossAxisAlignment.center,
          //       //       children: [
          //       //         Container(
          //       //           height: 100,
          //       //           width: 100,
          //       //           decoration: const BoxDecoration(
          //       //             borderRadius:
          //       //                 BorderRadius.only(topRight: Radius.circular(10)),
          //       //             color: Color.fromARGB(255, 13, 194, 235),
          //       //           ),
          //       //         ),
          //       //         const SizedBox(
          //       //           height: 5,
          //       //         ),
          //       //         Container(
          //       //           height: 100,
          //       //           width: 100,
          //       //           decoration: const BoxDecoration(
          //       //             borderRadius: BorderRadius.only(
          //       //                 bottomRight: Radius.circular(10)),
          //       //             color: Color.fromARGB(255, 13, 194, 235),
          //       //           ),
          //       //         ),
          //       //       ],
          //       //     )
          //       //   ],
          //       // ),
          //       Text("data"),
          //       ListView.builder(
          //         itemCount: CatelogModel.items.length,
          //         itemBuilder: (context, index) {
          //           return ItemWiget(
          //             item: CatelogModel.items[index],
          //           );
          //         },
          //       )
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
