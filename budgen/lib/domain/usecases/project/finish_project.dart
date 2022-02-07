import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class FinishProject {
  ProjectRepository _repository = ProjectRepository();

  Future<bool> call(String id) async {
    Project project = await _repository.getProjectById(id);

    if (project != null) {
      Project finishedProject = new Project(
        id: project.id,
        name: project.name,
        email: project.email,
        items: project.items,
        workers: project.workers,
        isFinished: true,
        price: project.price,
        discount: project.discount,
        createdAt: project.createdAt,
        createdBy: project.createdBy,
        deletedBy: null,
      );

      _repository.updateProject(finishedProject);

      return true;
    }

    throw new ArgumentError('o id não corresponde a nenhum projeto.');
  }
}
