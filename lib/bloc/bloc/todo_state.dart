
import 'package:blocpattern/bloc/model/todo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class TodoState extends Equatable{}


class Empty extends TodoState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class Loading extends TodoState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class Error extends TodoState {
  final String message;

  Error({
    required this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [this.message];

}
class Loaded extends TodoState{
  final List<Todo> todos;

  Loaded({
    required this.todos,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [this.todos];

}