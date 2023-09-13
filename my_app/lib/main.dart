// Starting my app from scratch
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Center(
    child: Text(
      "Hello this is my first app",
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.orange, fontSize: 50),
    ),
  ));
}
