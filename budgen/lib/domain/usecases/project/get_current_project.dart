import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class GetCurrentProject {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> call() async => await _repository.getCurrentProject();
}
