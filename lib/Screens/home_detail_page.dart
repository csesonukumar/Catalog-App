// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailsPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 221, 239, 151),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.all(20),
          children: [
            Text(
              "\$${catalog.price}",
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
      ),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.imageurl)),
              ),
            ),
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
             // width: context.screenWidth,
                    width: MediaQuery.of(context).size.width,
              color: Color.fromARGB(255, 221, 239, 151),
              child: Column(
                children: [
                  Text(
                    catalog.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Text(
                    catalog.desc,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$${catalog.price}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
