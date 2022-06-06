import 'package:a_todo_app/modals/task_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Yeni Görev Ekle',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 25.0,
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              color: Colors.deepPurple,
              child: const Text(
                'Ekle',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              textColor: Colors.white,
              height: 50.0,
            )
          ],
        ),
      ),
    );
  }
}
