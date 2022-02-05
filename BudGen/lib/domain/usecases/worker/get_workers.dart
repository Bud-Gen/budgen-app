import 'package:BudGen/data/repositories/worker_repository.dart';
import 'package:BudGen/domain/entities/worker.dart';

class GetWorkers {
  WorkerRepository _repository = WorkerRepository();

  Future<List<Worker>> all() async => await _repository.getAllWorkers();
}
