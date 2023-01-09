part of 'counter_bloc.dart';

@immutable
class CounterState {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];

  Map<String, dynamic> toMap() {
    return {'countervalue': counterValue};
  }

  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(counterValue: map['countervalue'] ?? 0);
  }
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(counterValue: 0);
}

class IncreamentState extends CounterState {
  IncreamentState(int incremanetvalue) : super(counterValue: incremanetvalue);
}

class DecreamentState extends CounterState {
  DecreamentState(int decremaentvalue) : super(counterValue: decremaentvalue);
}

class CounterMuilteState extends CounterState {
  CounterMuilteState(int decremaentvalue)
      : super(counterValue: decremaentvalue);
}
