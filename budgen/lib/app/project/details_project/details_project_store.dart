import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/project/copy_project.dart';
import 'package:budgen/domain/usecases/project/delete_project.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/project/get_items_project.dart';
import 'package:budgen/domain/usecases/project/get_workers_project.dart';
import 'package:mobx/mobx.dart';

part 'details_project_store.g.dart';

class DetailsProjectStore = _DetailsProjectStore with _$DetailsProjectStore;

abstract class _DetailsProjectStore with Store {
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  GetItemsProject _getItemsProject = GetItemsProject();
  GetWorkersProject _getWorkersProject = GetWorkersProject();
  CopyProject _copyProject = CopyProject();
  DeleteProject _deleteProject = DeleteProject();

  @observable
  Project? project;

  @observable
  Project? currentProject;

  @observable
  bool showItems = true;

  @observable
  bool isLoading = false;

  @observable
  List<Item>? items;

  @observable
  List<Worker>? workers;

  @action
  Future<void> onInit(Project newProject) async {
    project = newProject;
    await _sync();
  }

  @action
  Future<void> copyProject(Project project) async {
    await _copyProject.call(project);
    await _sync();
  }

  @action
  Future<void> deleteProject() async {
    await _deleteProject.call(project!);
    await _sync();
  }

  @action
  void viewItems(bool showItem) {
    if (showItem)
      showItems = true;
    else
      showItems = false;
  }

  Future<void> _sync() async {
    if (project == null) return;
    isLoading = true;
    items = await _getItemsProject.call(project!);
    workers = await _getWorkersProject.call(project!);
    currentProject = await _getCurrentProject.call();

    isLoading = false;
  }

  bool get existsCurrentProject => currentProject != null;
}
