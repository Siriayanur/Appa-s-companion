class Reminder {
  final String name;
  bool isDone;
  Reminder({this.name,this.isDone = false});
  void toggleDone(){
    isDone = !isDone;
  }
}