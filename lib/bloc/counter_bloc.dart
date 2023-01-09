import './import_bloc.dart';
import 'package:meta/meta.dart';
part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState()) {
    on<CounterIncremaentEvent>((event, emit) {
      int newvalue = state.counterValue + 1;
      emit(IncreamentState(newvalue));
    });

    on<CounterDecrementEvent>((event, emit) {
      int newvalue = state.counterValue - 1;
      emit(DecreamentState(newvalue));
    });

    on<CounterMuilteEvent>((event, emit) {
      int newvalue = state.counterValue * 2;
      emit(CounterMuilteState(newvalue));
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    return state.toMap();
  }
}
