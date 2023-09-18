import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;
  Todo({required this.title, required this.description});
}

List<Todo> _todoList = [
  Todo(title: "Pray and BS", description: "Study Exodus Chapter 6 and 7"),
  Todo(
      title: 'Mastering Flutter and Dart',
      description: 'Try to finish the Navigation module'),
  Todo(title: 'Make Calls', description: 'Try to catch Bereket and Mr.Gizate'),
];

void main() => runApp(MaterialApp(
      title: 'Todo App',
      home: TodoScreen(todos: _todoList),
    ));

class TodoScreen extends StatelessWidget {
  TodoScreen({Key? key, required this.todos}) : super(key: key);

  List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks TODO'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.task),
            title: Text(todos[index].title),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                )),
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key, required this.todo}) : super(key: key);

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}
