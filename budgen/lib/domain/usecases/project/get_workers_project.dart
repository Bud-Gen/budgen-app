import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';

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
