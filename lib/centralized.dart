import 'package:flutter/material.dart';

final color1 = Color.fromARGB(255, 221, 239, 151);

customText(txt, size, color) {
  return Text(
        txt,
        style: TextStyle(
          fontSize: size,
          color: color,
        ),
  );
}
