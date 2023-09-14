import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Counter(),
    ));

class Counter extends StatefulWidget {
  @override
  State<Counter> createState() => _Counter();
}

class _Counter extends State<Counter> {
  int _number = 0;
  void _increment() {
    setState(() {
      _number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: _increment, child: const Text("Push Me")),
            const SizedBox(
              width: 5,
            ),
            Text("You have pressed the button  $_number times")
          ],
        ),
      ),
    );
  }
}
