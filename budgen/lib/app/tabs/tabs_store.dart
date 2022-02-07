import 'package:mobx/mobx.dart';
part 'tabs_store.g.dart';

class TabsStore = _TabsStore with _$TabsStore;

abstract class _TabsStore with Store {
  @observable
  int index = 0;

  @action
  void nextPage() {
    index += 1;
  }

  @action
  void previousPage() {
    if (index > 0) index -= 1;
  }

  @action
  void setIndex(int value) {
    index = value;
  }
}
