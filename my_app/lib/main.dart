import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  // Variable Initalization
  bool _isButoonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
          onTap: () => setState(() {
                _isButoonPressed = !_isButoonPressed;
                print("It get turned");
              }),
          child: Container(color: _isButoonPressed ? Colors.blue : Colors.red)),
    );
  }
}
