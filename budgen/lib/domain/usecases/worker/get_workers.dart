import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/worker.dart';

class GetWorkers {
  WorkerRepository _repository = WorkerRepository();

  Future<List<Worker>> all() async => await _repository.getAllWorkers();
}
