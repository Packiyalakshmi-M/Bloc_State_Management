import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:increment_counter/Screens/CounterScreen/CounterBloc.dart';

class CounterScreen extends StatelessWidget {
  final CounterBloc _bloc = CounterBloc();

  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter with BLoC')),
      body: BlocBuilder<CounterBloc, CounterState>(
        bloc: _bloc,
        builder: (context, state) {
          int counter = 0;
          if (state is CounterUpdated) {
            counter = state.counter;
          }
          return Center(
            child: Text(
              'Counter Value: $counter',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => _bloc.add(Increment()),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => _bloc.add(Decrement()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
