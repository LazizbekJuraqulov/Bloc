part of 'new_bloc.dart';

@immutable
abstract class NewState {}

class NewInitial extends NewState {}

class Counter extends NewState {
  int couter = 0;
  Counter(this.couter);
}
