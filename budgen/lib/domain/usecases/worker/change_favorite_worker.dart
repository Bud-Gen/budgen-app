import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/worker.dart';

class ChangeFavoriteWorker {
  WorkerRepository _repository = WorkerRepository();

  Future<bool> call(Worker worker) => _repository.changeFavoriteWorker(worker);
}
