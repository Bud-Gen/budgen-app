import 'package:flutter/material.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  int countItemsList = 0;

  @action
  Future<void> onInit() async {}

  @action
  Future<void> newProject() async {}
}
