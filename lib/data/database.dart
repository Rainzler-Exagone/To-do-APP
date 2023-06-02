import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('mybox');
//run this method if his is the first time ever opening the app
  void createiInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do Exercice", false],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
