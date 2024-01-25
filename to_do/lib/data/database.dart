import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  // run this method if thi is the first time ever openning the app

  void createInitialData() {
    toDoList = [
      ["Listen to Tutorial", false],
      ["Make an app", true],
    ];
  }

  // load the data from database

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
