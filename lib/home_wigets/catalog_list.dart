import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home_detail_page.dart';
import 'package:flutter_application_1/home_wigets/catalog_item.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:get/get.dart';

class catelogList extends StatelessWidget {
  const catelogList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: CatelogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatelogModel.items[index];
          return InkWell(
            child: CatelogItem(catelog: catalog),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomeDetailsPage(catalog: catalog),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
