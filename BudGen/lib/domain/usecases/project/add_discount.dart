import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/project.dart';

class AddDiscount {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> call(String id, double discount) async {
    Project project = await _repository.getProjectById(id);

    if (project != null) {
      Project discountedProject = new Project(
        id: project.id,
        name: project.name,
        email: project.email,
        items: project.items,
        workers: project.workers,
        isFinished: project.isFinished,
        price: project.price,
        discount: discount,
        createdAt: project.createdAt,
        createdBy: project.createdBy,
        deletedBy: project.deletedBy,
      );

      _repository.updateProject(project);

      return discountedProject;
    }
  }
}
