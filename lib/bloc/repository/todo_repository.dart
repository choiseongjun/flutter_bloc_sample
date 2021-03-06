
import 'package:blocpattern/bloc/model/todo.dart';

///GET - ListTodo
///POST - CreateTodo
///Delete - DeleteTodo
class TodoRepository{
  Future<List<Map<String,dynamic>>> listTodo() async{
    await Future.delayed(Duration(seconds: 1));

    return [
      {
        'id':1,
        'title':'Flutter 배우기',
        'createdAt':DateTime.now().toString()
      },
      {
        'id':2,
        'title':'Dart 배우기',
        'createdAt':DateTime.now().toString()
      },
    ];
  }
  Future<Map<String,dynamic>> createTodo(Todo todo) async{
    await Future.delayed(Duration(seconds: 1));

    return todo.toJson();
  }
  Future<Map<String,dynamic>> deleteTodo(Todo todo) async{
    await Future.delayed(Duration(seconds: 1));

    return todo.toJson();
  }

}