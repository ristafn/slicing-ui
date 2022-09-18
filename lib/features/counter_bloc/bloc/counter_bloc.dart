import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  static const int _counter = 0;

  CounterBloc() : super(const CounterInitial(_counter)) {
    on<CounterIncrementEvent>(_onIncrement);
    on<CounterDecrementEvent>(_onDecrement);
    on<CounterResetEvent>(_onReset);
  }

  void _onIncrement(CounterIncrementEvent event, Emitter<CounterState> emit) {
    emit(CounterIncrement(state.counter + 1));
  }

  void _onDecrement(CounterDecrementEvent event, Emitter<CounterState> emit) {
    if (state.counter > 0) {
      emit(CounterDecrement(state.counter - 1));
    }
  }

  void _onReset(CounterResetEvent event, Emitter<CounterState> emit) {
    emit(const CounterInitial(0));
  }
}
