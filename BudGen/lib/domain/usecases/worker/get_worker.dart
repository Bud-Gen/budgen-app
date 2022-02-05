import 'package:BudGen/data/repositories/worker_repository.dart';
import 'package:BudGen/domain/entities/worker.dart';

class GetWorker {
  WorkerRepository _repository = WorkerRepository();

  Future<Worker> byId(String id) => _repository.getWorkerById(id);
}
