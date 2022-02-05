import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/project.dart';

class RemoveItem {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> call(String id, String itemId) async {
    Project project = await _repository.getProjectById(id);

    if (project != null) {
      Map<String, dynamic> items = project.items;

      items.remove(itemId);

      Project updatedProject = new Project(
        id: project.id,
        name: project.name,
        items: items,
        workers: project.workers,
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
