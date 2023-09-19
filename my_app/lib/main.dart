import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String appTItle = 'Form Styling Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTItle,
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTItle),
          ),
          body: HomeScreen(),
        ));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16,
            ),
            const TextField(
              decoration: InputDecoration(
                  hintText: 'TEXT FIELD',
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'TEXT FORM FIELD',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.all(8)),
              child: const Text('ELEVATED BUTTON'),
            )
          ],
        ),
      ),
    );
  }
}
