import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_ci_cd/service/get_it_configuration.dart';
import 'package:flutter_test_ci_cd/view_model/counter_store.dart';

void main() {
  // prepare all deps
  configure();
  CounterStore counterStore;

  setUp(() {
    counterStore = getIt.get<CounterStore>();
  });

  test('test counter model inc', () {
    counterStore.inc();
    expect(counterStore.counter, 1);
  });

  test('test counter model dec', () {
    counterStore.dec();
    expect(counterStore.counter, -1);
  });

  tearDown(() {
    counterStore.dispose();
    getIt.reset();
    configure();
  });
}
