import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(child: CartList()),
            Divider(),
            cartTotal(),
          ],
        ),
      ),
    );
  }
}

class cartTotal extends StatelessWidget {
  const cartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "\$${_cart.totalPrice}",
            style: TextStyle(fontSize: 30),
          ),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Buy not Supported Yet."),
                ),
              );
            },
            child: Text(
              "Buy",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

class CartList extends StatefulWidget {

  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.remove_circle_outline,
          ),
        ),
        title: Text(_cart.items[index].name),
      ),
    );
  }
}
