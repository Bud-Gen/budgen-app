import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/usecases/mock_data.dart';
import 'package:budgen/domain/usecases/project/add_discount.dart';
import 'package:budgen/domain/usecases/project/finish_project.dart';
import 'package:budgen/domain/usecases/project/get_current_project.dart';
import 'package:budgen/domain/usecases/project/insert_project.dart';
import 'package:budgen/domain/usecases/project/rename_project.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  GetCurrentProject _getCurrentProject = GetCurrentProject();
  RenameProject _renameProject = RenameProject();
  FinishProject _finishProject = FinishProject();
  InsertProject _insertProject = InsertProject();
  AddDiscount _addDiscount = AddDiscount();

  @observable
  Project currentProject;

  @observable
  bool existsProject = false;

  @observable
  String projectName;

  @observable
  String projectEmail = "";

  @observable
  bool isLoading = false;

  @observable
  double discount = 0;

  @observable
  String errorMessage;

  @action
  Future<void> addMock() async {
    MockData mockData = MockData();
    isLoading = true;
    await mockData.call();

    isLoading = false;
  }

  @action
  Future<void> onInit() async {
    await _sync();
  }

  @action
  Future<void> renameProject() async {
    if (projectName.isEmpty) return;
    await _renameProject.call(currentProject, projectName);
    await _sync();
  }

  @action
  Future<void> addNewProject() async {
    await _insertProject.withName(projectName);
    await _sync();
  }

  @action
  Future<void> finishProject() async {
    await _finishProject.call(currentProject, projectEmail);
    currentProject = null;
    existsProject = false;
  }

  Future<void> _sync() async {
    currentProject = null;
    isLoading = true;
    currentProject = await _getCurrentProject.call();
    if (currentProject != null) existsProject = true;
    isLoading = false;
  }

  @action
  Future<void> addDiscount() async {
    if (discount > currentProject.price) {
      errorMessage =
          "Não é possível adicionar um desconto maior que o valor do projeto";
      return;
    }
    if (discount == 0 || currentProject == null) return;
    isLoading = true;
    await _addDiscount.call(currentProject, discount);
    await _sync();
    isLoading = false;
  }

  @action
  removeError() {
    errorMessage = null;
  }

  @action
  void editDiscount(String newDiscount) =>
      discount = double.tryParse(newDiscount);

  @action
  void editProjectName(String newName) => projectName = newName;

  @action
  void editEmailProject(String email) => projectEmail = email;
}
