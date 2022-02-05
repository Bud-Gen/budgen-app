import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/data/repositories/worker_repository.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/domain/entities/worker.dart';

class GetWorkersProject {
  WorkerRepository _workerRepository = WorkerRepository();
  ProjectRepository _projectRepository = ProjectRepository();

  Future<List<Worker>> call(String id) async {
    Project project = await _projectRepository.getProjectById(id);
    List<Worker> workers = [];

    if (project != null) {
      List<String> workersKey = project.workers.keys.toList();
      Worker worker;

      for (String id in workersKey) {
        worker = await _workerRepository.getWorkerById(id);
        if (worker != null) workers.add(worker);
      }

      return workers;
    }

    throw new ArgumentError('o id não corresponde a nenhum projeto.');
  }
}
