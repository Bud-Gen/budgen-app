import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/usecases/mock_data.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  GetCurrentProject _getCurrentProject = GetCurrentProject();

  @observable
  Project currentProject;

  @observable
  bool isLoading = false;

  @action
  Future<void> addMock() async {
    MockData mockData = MockData();
    isLoading = true;
    await mockData.call();

    isLoading = false;
  }

  @action
  Future<void> onInit() async {
    isLoading = true;
    await _sync();
    isLoading = false;
  }

  Future<void> _sync() async {
    currentProject = await _getCurrentProject.call();
  }
}
