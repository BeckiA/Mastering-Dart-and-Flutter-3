import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:async';
import 'dart:io';

// MAIN
void main() {
  runApp(MaterialApp(
    title: 'User Registration Demo',
    home: UserRegistration(storage: UserStorage()),
  ));
}

class UserStorage {
  // PATH
  Future<String> get _localpath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  //File
  Future<File> get _localFile async {
    final file = await _localpath;
    return File('$file/userInput.txt');
  }

  // READ INSIDE THE FILE

  Future<String> readUserInput() async {
    try {
      final file = await _localFile;
      final content = await file.readAsString();
      return content;
    } catch (e) {
      return '';
    }
  }

  // WRITING INTO THE FILE
  Future<File> writeUserInput(String userInput) async {
    final file = await _localFile;
    return file.writeAsString('$userInput');
  }
}

// StateFull Widget
class UserRegistration extends StatefulWidget {
  const UserRegistration({Key? key, required this.storage}) : super(key: key);

  final UserStorage storage;
  _UserRegistrationState createState() => _UserRegistrationState();
}

class _UserRegistrationState extends State<UserRegistration> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    widget.storage.readUserInput().then((value) {
      setState(() {
        userNameController.text = value;
      });
    });
  }

  // SAVE USERINPUT'S
  Future<File> _saveUserInput() {
    return widget.storage.writeUserInput(userNameController.text);
  }

  // SCAFFOLD
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(userNameController.text.isEmpty
            ? 'Saving User Datas'
            : userNameController.text),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              TextFormField(
                controller: userNameController,
                decoration: const InputDecoration(hintText: 'Username'),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _saveUserInput;
          });
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
