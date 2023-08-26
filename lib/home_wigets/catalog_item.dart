import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';

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
                  child: Hero(
                      tag: Key(catelog.id.toString()),
                      child: Image.network(catelog.imageurl)),
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
