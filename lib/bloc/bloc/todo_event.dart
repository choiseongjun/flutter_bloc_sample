
import 'package:blocpattern/bloc/model/todo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class TodoEvent extends Equatable{}

class ListTodosEvent extends TodoEvent{

  @override
  List<Object> get props => [];

}

class CreateTodoEvent extends TodoEvent{
  final String title;

  CreateTodoEvent({
    required this.title
  });

  @override
  // TODO: implement props
  List<Object?> get props => [this.title];
}
class DeleteTodoEvent extends TodoEvent{
  final Todo todo;

  DeleteTodoEvent({
    required this.todo
  });
  @override
  // TODO: implement props
  List<Object?> get props => [this.todo];

}