import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable Initalization goes here
  String _myText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Home Page"),
      ),
      body: Center(
        child: TextField(
          decoration: const InputDecoration(hintText: "Your Input Goes Here"),
          onChanged: (value) => setState(() {
            _myText = value;
          }),
        ),
      ),
      bottomSheet: Container(
          alignment: Alignment.bottomCenter,
          height: 50,
          child: Text('You have typed: $_myText')),
    );
  }
}
