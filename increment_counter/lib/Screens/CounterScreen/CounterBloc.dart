import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

// States
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterUpdated extends CounterState {
  final int counter;
  CounterUpdated(this.counter);
}


// Bloc
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int _counter = 0;

  CounterBloc() : super(CounterInitial()) {
    on<Increment>((event, emit) {
      _counter++;
      emit(CounterUpdated(_counter));
    });

    on<Decrement>((event, emit) {
      _counter--;
      emit(CounterUpdated(_counter));
    });
  }
}
