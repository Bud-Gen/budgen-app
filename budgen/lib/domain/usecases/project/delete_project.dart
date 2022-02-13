import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class DeleteProject {
  ProjectRepository _repository = ProjectRepository();

  Future<void> call(Project project) async {
    final id = project.id;
    await _repository.deleteProject(id);
  }

  Future<bool> byId(String id) async => await _repository.deleteProject(id);
}
