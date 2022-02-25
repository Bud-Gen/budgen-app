import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';

class AlterQuantity {
  ProjectRepository _repository = ProjectRepository();

  Future<void> item(Item item, Project project, int value) async {
    if (item == null || project == null) return;

    final int oldQtd = project.items![item.id] as int;
    final newQtd = oldQtd + value;
    final newPrice =
        (project.price - (item.price! * oldQtd)) + (newQtd * item.price!);
    final items = project.items;
    items![item.id!] = newQtd;

    final updateProject = Project(
      id: project.id,
      name: project.name,
      email: project.email,
      isFinished: project.isFinished,
      price: newPrice,
      items: items,
      workers: project.workers,
      discount: project.discount,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: project.deletedBy,
    );

    await _repository.updateProject(updateProject);
  }

  Future<void> worker(Worker worker, Project project, int value) async {
    if (worker == null || project == null) return;

    final int oldQtd = project.workers![worker.id] as int;
    final newQtd = oldQtd + value;
    final newPrice =
        (project.price - (worker.price! * oldQtd)) + (newQtd * worker.price!);
    final workers = project.workers;
    workers![worker.id!] = newQtd;

    final updateProject = Project(
      id: project.id,
      name: project.name,
      email: project.email,
      isFinished: project.isFinished,
      price: newPrice,
      items: project.items,
      workers: workers,
      discount: project.discount,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: project.deletedBy,
    );

    await _repository.updateProject(updateProject);
  }
}
