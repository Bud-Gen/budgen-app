import 'package:BudGen/data/repositories/worker_repository.dart';
import 'package:BudGen/domain/entities/worker.dart';

class ChangeFavoriteWorker {
  WorkerRepository _repository = WorkerRepository();

  Future<bool> call(Worker worker) => _repository.changeFavoriteWorker(worker);
}
