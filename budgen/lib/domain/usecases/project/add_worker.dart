import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';

class AddWorker {
  ProjectRepository _repository = ProjectRepository();

  Future<Project> call({
    required Project project,
    required Worker worker,
    required int qtd,
  }) async {
    Map<String, dynamic> workers = project.workers ?? <String, dynamic>{};
    double newPrice = project.price;

    if (workers.containsKey(worker.id)) {
      int workersQtd = workers[worker.id] as int;
      workersQtd += qtd;
      workers[worker.id!] = workersQtd;
    } else {
      workers[worker.id!] = qtd;
    }
    newPrice += worker.price! * qtd;

    Project updatedProject = new Project(
      id: project.id,
      name: project.name,
      items: project.items,
      workers: workers,
      email: project.email,
      isFinished: project.isFinished,
      price: newPrice,
      discount: project.discount,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: project.deletedBy,
    );

    await _repository.updateProject(updatedProject);

    return updatedProject;
  }
}
