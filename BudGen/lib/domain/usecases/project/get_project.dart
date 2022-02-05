import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/project.dart';

class GetProject {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> byId(String id) async => await _repository.getProjectById(id);
}
