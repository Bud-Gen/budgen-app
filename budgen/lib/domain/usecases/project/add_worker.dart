import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class AddWorker {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> call(String id, String workerId, int qtd) async {
    Project project = await _repository.getProjectById(id);

    if (project != null) {
      Map<String, dynamic> workers = project.workers;

      if (workers == null) {
        workers = new Map<String, dynamic>();
      }

      workers[workerId] = qtd;

      Project updatedProject = new Project(
        id: project.id,
        name: project.name,
        items: project.items,
        workers: workers,
        email: project.email,
        isFinished: project.isFinished,
        price: project.price,
        discount: project.discount,
        createdAt: project.createdAt,
        createdBy: project.createdBy,
        deletedBy: project.deletedBy,
      );

      _repository.updateProject(updatedProject);

      return updatedProject;
    }

    throw new ArgumentError('o id não corresponde a nenhum projeto.');
  }
}
