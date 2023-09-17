import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "To-Do List App",
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Initalization of to do lists with mock items
  List<String> _todos = ['Task1', 'Task2', 'Task3'];

  void _todo() {
    showDialog(
      context: context,
      builder: (context) {
        // Variable Initalization for the todo List Item which is going to be added
        String todoItem = '';
        return AlertDialog(
          title: const Text("Add Your TODO's Here"),
          content: TextField(
            decoration: const InputDecoration(hintText: "Input Your Task Here"),
            onChanged: (value) => setState(() {
              todoItem = value;
            }),
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancel')),
            TextButton(
                onPressed: () {
                  setState(() {
                    _todos.add(todoItem);
                  });
                  Navigator.of(context).pop();
                },
                child: const Text('Submit'))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My TODO List")),
      body: ListView.builder(
          itemCount: _todos.length,
          itemBuilder: (context, index) {
            final todo = _todos[index]; // The current to-do item

            return ListTile(
              leading: const Icon(Icons.task),
              title: Text(todo,
                  style: TextStyle(
                      decoration: todo.startsWith('-')
                          ? TextDecoration.lineThrough
                          : TextDecoration.none)),
              onTap: () => setState(() {
                if (todo.startsWith('-')) {
                  _todos[index] = todo.substring(
                      2); // If the item is already checked, uncheck it
                } else {
                  _todos[index] = '- $todo'; // Otherwise, check it
                }
              }),
            );
          }),
      floatingActionButton:
          FloatingActionButton(onPressed: _todo, child: const Icon(Icons.add)),
    );
  }
}
