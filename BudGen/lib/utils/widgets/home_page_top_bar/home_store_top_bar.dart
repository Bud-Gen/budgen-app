import 'package:mobx/mobx.dart';

part 'home_store_top_bar.g.dart';

class HomeStoreTopBar = _HomeStoreTopBar with _$HomeStoreTopBar;

abstract class _HomeStoreTopBar with Store {
  @observable
  String projectName = "";

  @observable
  bool isTyping = false;

  @action
  void setIsTyping() {
    isTyping = !isTyping;
  }

  @action
  void setProjectName(String project) {
    projectName = project;
  }
}
