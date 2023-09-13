// Starting my app from scratch
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme:
        ThemeData(primaryColor: Colors.blueGrey, brightness: Brightness.dark),
    home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Title'),
        ),
        body: const Center(child: Text("Hello World"))),
  ));
}
