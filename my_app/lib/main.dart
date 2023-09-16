import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Dialog App', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _textInput = '';
  void _showInputDialog() {
    showDialog(
      context: context,
      builder: (context) {
        TextEditingController controller = TextEditingController();

        return AlertDialog(
          title: const Text('Input Your Text'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(hintText: 'Your Text Goes Here'),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel')),
            TextButton(
                onPressed: () => setState(() {
                      _textInput = controller.text;
                      Navigator.of(context).pop();
                    }),
                child: const Text('Save'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Brand New Application')),
      body: Center(
        child: Text(_textInput.isEmpty ? "Please Input Your Text" : _textInput),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _showInputDialog, child: const Icon(Icons.add)),
    );
  }
}
