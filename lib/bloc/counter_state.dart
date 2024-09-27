part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterChangeState extends CounterState {

 final int counter ;
  CounterChangeState({required this.counter});
  
}