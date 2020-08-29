class Task {
  final String name;
  bool isDone;

  //default value of task
  Task({this.name, this.isDone = false});

  //method that toggles the doness
  void toggleDonce() {
    isDone = !isDone;
  }
}
