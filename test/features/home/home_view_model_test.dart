import 'package:flutter_mvvm_boilerplate/features/home/presentation/viewModels/home_view_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  group('HomeViewModel', () {
    test('starts at zero', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      expect(container.read(homeViewModelProvider), 0);
    });

    test('increments the counter', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(homeViewModelProvider.notifier).increment();

      expect(container.read(homeViewModelProvider), 1);
    });

    test('does not decrement below zero', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      container.read(homeViewModelProvider.notifier).decrement();

      expect(container.read(homeViewModelProvider), 0);
    });

    test('resets the counter', () {
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final viewModel = container.read(homeViewModelProvider.notifier);
      viewModel.increment();
      viewModel.increment();
      viewModel.reset();

      expect(container.read(homeViewModelProvider), 0);
    });
  });
}
