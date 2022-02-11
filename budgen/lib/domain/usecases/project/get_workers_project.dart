import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';

class GetWorkersProject {
  WorkerRepository _workerRepository = WorkerRepository();

  Future<List<Worker>> call(Project project) async {
    if (project == null) return null;

    List<String> workersId = project.workers?.keys?.toList() ?? [];
    List<Worker> allWorkers = await _workerRepository.getAllWorkers();

    return allWorkers
        .where((element) => workersId.contains(element.id))
        .toList();
  }
}
