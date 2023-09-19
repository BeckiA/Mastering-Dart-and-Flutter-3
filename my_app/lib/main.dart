import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Styling Demo',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const CustomForm(),
    );
  }
}

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    userNameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grabbing Values from Text Fields'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: userNameController,
            decoration: const InputDecoration(hintText: 'Username'),
          ),
          TextField(
            controller: passwordController,
            decoration: const InputDecoration(hintText: 'Email'),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Displaying the Values'),
                content: Column(
                  children: [
                    Text("Username: ${userNameController.text}"),
                    Text("Password: ${passwordController.text}"),
                  ],
                ),
              );
            },
          );
        },
        tooltip: "Get Your Inputs",
        child: const Icon(Icons.text_fields),
      ),
    );
  }
}
