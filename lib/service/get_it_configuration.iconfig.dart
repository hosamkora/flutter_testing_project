// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_test_ci_cd/view_model/counter_store.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  //Eager singletons must be registered in the right order
  g.registerSingleton<CounterStore>(CounterStore());
}
