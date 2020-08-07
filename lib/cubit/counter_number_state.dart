part of 'counter_number_cubit.dart';

@immutable
abstract class CounterNumberState {}

class CounterNumberInitial extends CounterNumberState {}

class CounterNumberStateFilled extends CounterNumberState{
  final int value;

  CounterNumberStateFilled(this.value);
}
