import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';

class RemoveItem {
  ProjectRepository _repository = ProjectRepository();

  Future<void> call(Project project, Item item) async {
    if (project == null || item == null) return;

    Map<String, dynamic> items = project.items;

    final double newPrice =
        (project.price - item.price) < 0.0 ? 0.0 : (project.price - item.price);
    final double newDiscount =
        newPrice - project.discount <= 0.0 ? 0.0 : project.discount;
    items.remove(item.id);

    Project updatedProject = new Project(
      id: project.id,
      name: project.name,
      items: items,
      workers: project.workers,
      email: project.email,
      isFinished: project.isFinished,
      price: newPrice,
      discount: newDiscount,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: project.deletedBy,
    );

    _repository.updateProject(updatedProject);

    return updatedProject;
  }
}
