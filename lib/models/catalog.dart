class CatelogModel {
  static final items = [
    Item(
        id: 1,
        name: "IPhone 12",
        desc: "Iphone 12 5th gen",
        price: 12500,
        color: "#33505a",
        imageurl:
  "https://rukminim2.flixcart.com/image/850/1000/kg8avm80/mobile/g/z/c/apple-iphone-12-pro-max-dummyapplefsn-original-imafwgcymhgjaghf.jpeg?q=90")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageurl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageurl});
}
