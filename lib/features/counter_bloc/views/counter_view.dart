import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  final TextStyle _textStyle =
      const TextStyle(fontSize: 50, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    var bloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Bloc App'),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                '${state.counter}',
                style: _textStyle,
              );
            }
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () => context.read<CounterBloc>().add(CounterIncrementEvent()),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () => bloc.add(CounterDecrementEvent()),
            child: const Icon(Icons.horizontal_rule_outlined),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () => bloc.add(CounterResetEvent()),
            child: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
