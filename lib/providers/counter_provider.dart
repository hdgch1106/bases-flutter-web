import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

@Riverpod(keepAlive: true)
class Counter extends _$Counter {
  @override
  int build() {
    return 15;
  }

  void setState(int newState) {
    state = newState;
  }

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}
