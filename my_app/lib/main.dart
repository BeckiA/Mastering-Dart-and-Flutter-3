import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  Todo({required this.title, required this.description});
}

List<Todo> _todos = [
  Todo(title: "Pray and BS", description: "Study Exodus Chapter 6 and 7"),
  Todo(
      title: 'Mastering Flutter and Dart',
      description: 'Try to finish the Navigation module'),
  Todo(title: 'Make Calls', description: 'Try to catch Bereket and Mr.Gizate'),
];

void main() => runApp(MaterialApp(
      title: 'The Todo App',
      home: TodoScreen(todos: _todos),
    ));

class TodoScreen extends StatefulWidget {
  const TodoScreen({Key? key, required this.todos}) : super(key: key);
  final List<Todo> todos;

  _TodoScreenState createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My TODOs'),
      ),
      body: ListView.builder(
          itemCount: _todos.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.task),
              title: Text(_todos[index].title),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailScreen(
                            todo: _todos[index],
                          ))),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Todo? newTodo = await showDialog(
            context: context,
            builder: (context) {
              String? title;
              String? description;

              return AlertDialog(
                title: const Text('Add New Task'),
                content: Column(
                  children: [
                    TextField(
                      onChanged: (value) => title = value,
                      decoration: const InputDecoration(hintText: 'Task Title'),
                    ),
                    TextField(
                      onChanged: (value) => description = value,
                      decoration:
                          const InputDecoration(hintText: 'Task Description'),
                    )
                  ],
                ),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cancel')),
                  TextButton(
                      onPressed: () {
                        if (title != null && description != null) {
                          return Navigator.pop(context,
                              Todo(title: title!, description: description!));
                        }
                      },
                      child: const Text('Save'))
                ],
              );
            },
          );

          if (newTodo != null) {
            setState(() {
              _todos.add(newTodo);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Todo todo;
  DetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Center(child: Text(todo.description)),
      ),
    );
  }
}
