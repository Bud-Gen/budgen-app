import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class RenameProject {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> call(String id, String newName) async {
    Project project = await _repository.getProjectById(id);

    if (project != null) {
      Project renamedProject = Project(
        id: project.id,
        name: newName,
        email: project.email,
        isFinished: project.isFinished,
        price: project.price,
        discount: project.discount,
        createdAt: project.createdAt,
        createdBy: project.createdBy,
        deletedBy: project.deletedBy,
      );

      _repository.updateProject(renamedProject);
      return renamedProject;
    }

    throw new ArgumentError('o id não corresponde a nenhum projeto.');
  }
}
