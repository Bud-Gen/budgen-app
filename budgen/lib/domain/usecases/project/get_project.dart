import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class GetProject {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> byId(String id) async => await _repository.getProjectById(id);
}
