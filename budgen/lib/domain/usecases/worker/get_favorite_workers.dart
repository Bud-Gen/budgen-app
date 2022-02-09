import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/worker.dart';

class GetFavoriteWorkers {
  WorkerRepository _repository = WorkerRepository();

  Future<List<Worker>> call() async => await _repository.getFavoriteWorkers();
}
