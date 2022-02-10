import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';

class AddDiscount {
  ProjectRepository _repository = ProjectRepository();

  Future<void> call(Project project, double discount) async {
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

    await _repository.updateProject(discountedProject);
  }
}
