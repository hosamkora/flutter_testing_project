import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:meta/meta.dart';
part 'counter_store.g.dart';

@singleton
class CounterStore = _CounterStoreBase with _$CounterStore;

abstract class _CounterStoreBase with Store, Reactions {
  @observable
  int counter = 0;

  @action
  void inc() {
    counter++;
  }

  @action
  void dec() {
    counter--;
  }

  @override
  void dispose() {
    super.dispose();
  }
}

mixin Reactions on Store {
  final _reactionDisposers = <ReactionDisposer>[];

  void addReaction(ReactionDisposer reaction) =>
      _reactionDisposers.add(reaction);

  void removeReaction(ReactionDisposer reaction) {
    if (_reactionDisposers.remove(reaction)) {
      reaction.call();
    }
  }

  @mustCallSuper
  void dispose() {
    _reactionDisposers.forEach((dispose) => dispose());
  }
}
