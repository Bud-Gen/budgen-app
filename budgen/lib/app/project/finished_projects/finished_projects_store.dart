import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/usecases/project/get_projects.dart';
import 'package:mobx/mobx.dart';

part 'finished_projects_store.g.dart';

class FinishedProjectsStore = _FinishedProjectsStore
    with _$FinishedProjectsStore;

abstract class _FinishedProjectsStore with Store {
  GetProjects _getProjects = GetProjects();

  @observable
  List<Project> projects;

  @observable
  bool isLoading;

  ///functions

  @action
  Future<void> _sync() async {
    isLoading = true;
    projects = await _getProjects.finished();
    isLoading = false;
  }
}
