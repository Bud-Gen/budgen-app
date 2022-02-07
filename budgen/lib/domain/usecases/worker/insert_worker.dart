import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/worker.dart';

class InsertWorker {
  WorkerRepository _repository = WorkerRepository();

  Future<bool> call(Worker worker) async =>
      await _repository.insertWorker(worker);
}
