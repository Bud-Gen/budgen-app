import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/project.dart';

class GetUnfinishedProject {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> call() async => await _repository.getUnfinishedProject();
}
