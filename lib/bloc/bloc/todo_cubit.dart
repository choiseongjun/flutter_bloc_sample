

import 'package:blocpattern/bloc/bloc/todo_state.dart';
import 'package:blocpattern/bloc/model/todo.dart';
import 'package:blocpattern/bloc/repository/todo_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<TodoState>{
  final TodoRepository repository;

  TodoCubit({required this.repository}) : super(Empty());

  listTodo() async{
    try{
      emit(Loading());

      final resp = await this.repository.listTodo();

      final todos = resp.map<Todo>((e)=>Todo.fromJson(e))
          .toList();

      emit(Loaded(todos: todos));
    }catch(e){
      emit(Error(message:e.toString()));
    }
  }
}