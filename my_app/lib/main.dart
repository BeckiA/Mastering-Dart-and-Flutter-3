import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'List View App',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Application'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person One'),
            subtitle: const Text('email@john.com'),
            trailing: const Icon(Icons.arrow_forward),
            // ignore: avoid_print
            onTap: () => print("List is pressed"),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person One'),
            subtitle: const Text('email@john.com'),
            trailing: const Icon(Icons.arrow_forward),
            // ignore: avoid_print
            onTap: () => print("List is pressed"),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person One'),
            subtitle: const Text('email@john.com'),
            trailing: const Icon(Icons.arrow_forward),
            // ignore: avoid_print
            onTap: () => print("List is pressed"),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person One'),
            subtitle: const Text('email@john.com'),
            trailing: const Icon(Icons.arrow_forward),
            // ignore: avoid_print
            onTap: () => print("List is pressed"),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Person One'),
            subtitle: const Text('email@john.com'),
            trailing: const Icon(Icons.arrow_forward),
            // ignore: avoid_print
            onTap: () => print("List is pressed"),
          )
        ],
      ),
    );
  }
}
