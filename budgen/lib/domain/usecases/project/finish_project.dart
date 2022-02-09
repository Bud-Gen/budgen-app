import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class FinishProject {
  ProjectRepository _repository = ProjectRepository();

  Future<void> call(Project project, String email) async {
    if (project == null) return;

    Project finishedProject = new Project(
      id: project.id,
      name: project.name,
      email: email,
      items: project.items,
      workers: project.workers,
      isFinished: true,
      price: project.price,
      discount: project.discount,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: null,
    );

    await _repository.updateProject(finishedProject);
  }
}
