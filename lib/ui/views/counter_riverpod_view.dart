import 'package:bases_flutter_web/providers/counter_provider.dart';
import 'package:bases_flutter_web/ui/shared/custom_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterRiverpodView extends ConsumerWidget {
  const CounterRiverpodView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Contador Riverpod", style: TextStyle(fontSize: 20)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Contador: $counter",
              style: const TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: "Incrementar",
              onPressed: () => ref.read(counterProvider.notifier).increment(),
            ),
            CustomFlatButton(
              text: "Decrementar",
              onPressed: () => ref.read(counterProvider.notifier).decrement(),
            ),
          ],
        ),
      ],
    );
  }
}
