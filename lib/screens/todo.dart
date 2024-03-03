import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  TextEditingController todoController = TextEditingController();
  List todoList = [];
  bool isAdd = true;
  int selectedIndex = 0;

  addTodo() {
    todoList.add(todoController.text);
    todoController.clear();
    setState(() {});
  }

  editTodoSave() {
    todoList[selectedIndex] = todoController.text;
    todoController.clear();
    isAdd = true;
    setState(() {});
  }

  showValue(index) {
    todoController.text = todoList[index];
    isAdd = false;
    selectedIndex = index;
  }

  deleteTodo(index) {
    todoList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 173, 209, 238),
        title: TextField(
          controller: todoController,
          obscureText: false,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Type todo....',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              isAdd ? addTodo() : editTodoSave();
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.grey,
            title: Text("${todoList[index]}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    showValue(index);
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    deleteTodo(index);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
