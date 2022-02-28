import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';

class RemoveWorker {
  ProjectRepository _repository = ProjectRepository();

  Future<void> call(Project project, Worker worker) async {
    if (project == null || worker == null) return;

    Map<String, dynamic> workers = project.workers!;
    final newPrice = (project.price - worker.price!) < 0.0
        ? 0.0
        : (project.price - worker.price!);
    final double newDiscount =
        newPrice - project.discount <= 0.0 ? 0.0 : project.discount;
    workers.remove(worker.id);

    Project updatedProject = new Project(
      id: project.id,
      name: project.name,
      items: project.items,
      workers: workers,
      email: project.email,
      isFinished: project.isFinished,
      price: newPrice,
      discount: newDiscount,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: project.deletedBy,
    );

    await _repository.updateProject(updatedProject);
  }
}
