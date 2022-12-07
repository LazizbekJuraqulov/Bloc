part of 'new_bloc.dart';

@immutable
abstract class NewEvent {}

class IncrementEvent extends NewEvent {}

class DecrementEvent extends NewEvent {}

class IndexEvent extends NewEvent {
  int currentindex;
  IndexEvent(this.currentindex);
}
