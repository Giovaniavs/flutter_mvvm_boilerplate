import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeViewModelProvider = NotifierProvider<HomeViewModel, int>(
  HomeViewModel.new,
);

/// Owns the presentation state and actions for the home screen.
///
/// This example uses an integer state to demonstrate Riverpod's Notifier API.
/// Replace it with an immutable state class when the screen needs multiple
/// related values, loading states, or error states.
class HomeViewModel extends Notifier<int> {
  @override
  int build() => 0;

  void increment() {
    state++;
  }

  void decrement() {
    if (state > 0) {
      state--;
    }
  }

  void reset() {
    state = 0;
  }
}
