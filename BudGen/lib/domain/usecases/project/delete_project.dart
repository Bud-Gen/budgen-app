import 'package:BudGen/data/repositories/project_repository.dart';

class DeleteProject {
  ProjectRepository _repository = ProjectRepository();
  Future<bool> byId(String id) async => await _repository.deleteProject(id);
}
