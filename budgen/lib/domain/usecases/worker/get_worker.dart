import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/worker.dart';

class GetWorker {
  WorkerRepository _repository = WorkerRepository();

  Future<Worker?> byId(String id) => _repository.getWorkerById(id);
}
