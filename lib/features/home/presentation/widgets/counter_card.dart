import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
    required this.onReset,
    super.key,
  });

  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onReset;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Your app is ready',
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'This screen demonstrates a View, a ViewModel, and Riverpod state.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 28),
            Text('$count', style: Theme.of(context).textTheme.displayMedium),
            const SizedBox(height: 16),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 12,
              runSpacing: 12,
              children: [
                OutlinedButton.icon(
                  onPressed: onDecrement,
                  icon: const Icon(Icons.remove),
                  label: const Text('Decrease'),
                ),
                FilledButton.icon(
                  onPressed: onIncrement,
                  icon: const Icon(Icons.add),
                  label: const Text('Increase'),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextButton(onPressed: onReset, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
