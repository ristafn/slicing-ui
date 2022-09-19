part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState(
    this.counter,
  );

  final int counter;

  @override
  List<Object> get props => [counter];
}

class CounterInitial extends CounterState {
  const CounterInitial(super.counter);

  @override
  String toString() => 'Counter initial {counter: $counter}';
}

class CounterIncrement extends CounterState {
  const CounterIncrement(super.counter);

  @override
  String toString() => 'Counter increment {counter: $counter}';
}

class CounterDecrement extends CounterState {
  const CounterDecrement(super.counter);

  @override
  String toString() => 'Counter decrement {counter: $counter}';
}
