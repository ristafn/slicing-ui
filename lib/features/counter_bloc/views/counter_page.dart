import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_application_1/features/counter_bloc/views/counter_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: const CounterView(),
    );
  }
}
