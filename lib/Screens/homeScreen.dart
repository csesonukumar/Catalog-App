import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/drawer.dart';
import 'package:flutter_application_1/utils/item_wiget.dart';
import 'package:flutter_application_1/utils/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dummylist = List.generate(15, (index) => CatelogModel.items[0]);
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
          child: ListView.builder(
            itemCount: dummylist.length,
            itemBuilder: (context, index) {
              return ItemWiget(
                item: dummylist[index],
              );
            },
          ),
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
