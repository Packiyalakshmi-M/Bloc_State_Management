# State Management - Bloc in Flutter

This project demonstrates how to implement state management in Flutter using the BLoC (Business Logic Component) library. The app achieves both increment and decrement counter functionality, showcasing how flutter_bloc efficiently handles state management and reactivity in Flutter applications.

## Table of Contents

- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Author](#author)

## Features

- **Bloc State Management:** Demonstrates state management using the flutter_bloc library, enabling separation of business logic and UI.
- **Increment & Decrement Counter:** mplements a simple counter app with increment and decrement functionalities to highlight state transitions.

## Technologies Used

- **Programming Language:** Dart
- **Framework:** Flutter
- **State Management Library:** flutter_bloc
- **Others:**
  - Flutter SDK
  - Android Studio / Visual Studio Code for development
  - Git for version control

## Installation

Follow these steps to get the project up and running locally:

```bash
# Clone the repository
git clone https://github.com/Packiyalakshmi-M/Bloc_State_Management.git

# Navigate into the project directory
cd increment_counter

# Install dependencies
flutter pub get
```

## Usage

The following snippets demonstrate the core structure and usage of BLoC for state management.

```
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



```

## License

This project is open source and available under the MIT License.

## Author

- Packiyalakshmi Murugan
- [LinkedIn Link](https://www.linkedin.com/in/packiyalakshmi-m-7a9844210/)
- [Github link](https://github.com/Packiyalakshmi-M/)
