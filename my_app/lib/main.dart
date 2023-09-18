import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'My Flutter', home: FirstScreen()));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen One"),
        ),
        //Center Widget with Elevated Button On It To Navigate to the Second Screen
        body: Center(
            child: ElevatedButton(
          onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(),
              )),
          child: const Text('GO TO THE SECOND SCREEN'),
        )));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen Two"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('GO TO THE FIRST SCREEN')),
      ),
    );
  }
}
