import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Sending in Flutter',
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatefulWidget {
  @override
  _MyHomeScreen createState() => _MyHomeScreen();
}

class _MyHomeScreen extends State<MyHomeScreen> {
  String _value = '';

  // Method that recieves the selected text back to the Home Screen
  _selectedText() async {
    var result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SelectedScreen(),
        ));

    setState(() {
      _value = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('Selected Text: $_value'),
          ),
          Center(
            child: ElevatedButton(
                onPressed: _selectedText,
                child: const Text('GO TO SELECTION SCREEN')),
          ),
        ],
      ),
    );
  }
}

class SelectedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick an Option'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pop(context, "Option 1"),
                child: const Text('Option 1')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => Navigator.pop(context, "Option 2"),
                child: const Text('Option 2')),
          ],
        ),
      ),
    );
  }
}
