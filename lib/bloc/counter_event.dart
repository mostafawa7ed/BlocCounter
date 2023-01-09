part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent {}

@immutable
class CounterIncremaentEvent extends CounterEvent {}

@immutable
class CounterDecrementEvent extends CounterEvent {}

@immutable
class CounterMuilteEvent extends CounterEvent {}
