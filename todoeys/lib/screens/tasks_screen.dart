import 'package:flutter/material.dart';
import 'package:todoeys/models/task.dart';
import 'package:todoeys/screens/add_task_screen.dart';
import 'package:todoeys/widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    /*
    Task(name: 'Fiesta remota en casa de Mili'),
    Task(name: 'Terminar el curso de Flutter'),
    Task(name: 'Leer The Lean Startuo'),*/
  ];

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            //Setting the isScrolledControlled property to true you can make the modal take up the full screen:
            isScrollControlled: true,
            //To have the AddTaskScreen sit just above the keyboard, you can wrap it inside a SingleChildScrollView
            // which determines the padding at the bottom using a MediaQuery.
            builder: (context) => SingleChildScrollView(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen((newTaskTitle) {
                  setState(() {
                    tasks.add(Task(name: newTaskTitle));
                  });
                  Navigator.pop(context);
                })),
          );
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    size: 38.0,
                    color: Colors.deepPurpleAccent,
                  ),
                  backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 18.0,
                ),
                Text(
                  'Por hacer...',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 42.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${tasks.length} tareas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              //there can no be color and decoration at the same time color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0),
                ),
              ),
              child: TasksList(tasks),
            ),
          ),
        ],
      ),
    );
  }
}
