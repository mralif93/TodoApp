import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todoapp/models/model.dart';
import 'package:todoapp/controllers/list.dart';

void main() {
  test('Initializes todolist with empty', () {
    // setup
    ToDoListController _toDoListController = ToDoListController();
    // test
    expect(_toDoListController.toDoList.length, 0);
  });

  test('todolist added', () {
    // set
    ToDoListController _toDoListController = ToDoListController();
    // do
    _toDoListController.toDoList.add(ToDoModel(
      id: UniqueKey().toString(),
      title: 'Testing 1',
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      isDone: false,
      timeLeft: DateTime.now(),
    ));
    // test
    expect(_toDoListController.toDoList.length, 1);
  });

  test('todolist completed', () {
    // setup
    ToDoListController _toDoListController = ToDoListController();
    // do
    _toDoListController.toDoList.add(ToDoModel(
      id: UniqueKey().toString(),
      title: 'Testing 2',
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      isDone: false,
      timeLeft: DateTime.now(),
    ));
    _toDoListController.toDoList[0].isDone = true;
    // test
    expect(_toDoListController.toDoList[0].isDone, true);
  });
}
