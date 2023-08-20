import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/themes.dart';

class ItemWiget extends StatelessWidget {
  //const ItemWiget({super.key});
  final Item item;

  const ItemWiget({super.key, required this.item});
  // : assert(item != null);
  //super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 236, 232, 232),
      shadowColor: Colors.black,
      child: ListTile(
        leading: Image.network(item.imageurl),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        style: CustomTextStyle.headerStyle,),
      ),
    );
  }
}
