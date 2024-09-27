part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class Incrmeant extends CounterEvent {}

class Resat extends CounterEvent {}

class Decrmant extends CounterEvent {}