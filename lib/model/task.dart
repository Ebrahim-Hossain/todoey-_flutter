
class Task {

  final String name;
  bool isDone;
  void changeState () {
    isDone = !isDone;
  }

 Task({required this.name,this.isDone = false});
}