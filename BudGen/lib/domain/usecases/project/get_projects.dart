
import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/project.dart';

class GetProjects {
  ProjectRepository _repository = ProjectRepository();

  Future<List<Project>> call() async => await _repository.getAllProjects();

  Future<List<Project>> finalized() async => await _repository.getFinishedProjects();
}
