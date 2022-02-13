import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/usecases/project/copy_project.dart';
import 'package:budgen/domain/usecases/project/delete_project.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/project/get_projects.dart';
import 'package:mobx/mobx.dart';

part 'finished_projects_store.g.dart';

class FinishedProjectsStore = _FinishedProjectsStore
    with _$FinishedProjectsStore;

abstract class _FinishedProjectsStore with Store {
  GetProjects _getProjects = GetProjects();
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  DeleteProject _deleteProject = DeleteProject();
  CopyProject _copyProject = CopyProject();

  @observable
  List<Project> projects;

  @observable
  Project currentProject;

  @observable
  bool isLoading;

  ///functions
  @action
  Future<void> onInit() async {
    await _sync();
  }

  @action
  Future<void> copyProject(Project project) async {
    await _copyProject.call(project);
    await _sync();
  }

  @action
  Future<void> deleteProject(Project project) async {
    await _deleteProject.call(project);
    await _sync();
  }

  @action
  Future<void> _sync() async {
    projects = null;

    isLoading = true;
    projects = await _getProjects.finished();
    currentProject = await _getCurrentProject.call();
    isLoading = false;
  }

  bool get existsCurrentProject => currentProject != null;
}
