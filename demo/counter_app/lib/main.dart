import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

void main() => runApp(MaterialApp(
      title: 'Counter Demo',
      // home: FlutterDemo(storage: counter),
    ));

class CounterStorage {
  // GET THE DOCUMENT DIRECTORY AppData
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  // TXT FILE INSIDE of DOC DIR
  Future<File> get _localFile async {
    final path = await _localPath;

    return File('$path/counter.txt');
  }

  // READ WHAT'S INSIDE counter.txt
  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      final content = await file.readAsString();
      return int.parse(content);
    } catch (error) {
      return 0; //First time the app is opened
    }
  }
}

class FlutterDemo extends StatefulWidget {
  const FlutterDemo({super.key, required this.storage});

  final CounterStorage storage;

  @override
  _FlutterDemoState createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  @override
  Widget build(BuildContext context) {
    return Center(child: const Text('CENTER'));
  }
}
