// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStoreBase, Store {
  final _$counterAtom = Atom(name: '_CounterStoreBase.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$_CounterStoreBaseActionController =
      ActionController(name: '_CounterStoreBase');

  @override
  void inc() {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction();
    try {
      return super.inc();
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dec() {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction();
    try {
      return super.dec();
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'counter: ${counter.toString()}';
    return '{$string}';
  }
}
