import 'package:flutter_application_1/models/catalog.dart';

class CartModel{
  // catalog field
  late CatelogModel _catalog;

  // collection of IDs - store IDs of each item
  final List<int> _itemIDs = [];
  CatelogModel get catelog => _catalog;

  set catalog(CatelogModel newCatalog){
    // assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // Get Items in the Cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getById(id)).toList();

  // Get total Price
  num get totalPrice => items.fold(0 ,(total,current) => total + current.price);

  // Add items
  void add(Item item){
    _itemIDs.add(item.id);
  }

  // remove Items
  void remove (Item item){
    _itemIDs.remove(item.id);
  }
}