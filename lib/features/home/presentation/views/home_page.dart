import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewModels/home_view_model.dart';
import '../widgets/counter_card.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(homeViewModelProvider);
    final viewModel = ref.read(homeViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter MVVM Starter')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: CounterCard(
              count: count,
              onIncrement: viewModel.increment,
              onDecrement: viewModel.decrement,
              onReset: viewModel.reset,
            ),
          ),
        ),
      ),
    );
  }
}
