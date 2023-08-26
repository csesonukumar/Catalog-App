import 'package:flutter/material.dart';

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
