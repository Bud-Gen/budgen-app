import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/worker.dart';

class UpdateWorkers {
  WorkerRepository _workerRepository = WorkerRepository();

  Future<bool> call(List<Map<String, dynamic>> workersJson) async {
    bool result = true;

    if (workersJson != null) {
      for (Map<String, dynamic> json in workersJson) {
        if (json != null) {
          Worker worker = new Worker(
            id: json['id'],
            name: json['name'],
            code: json['code'],
            description: json['description'],
            imageUrl: json['imageUrl'],
            price: json['price'],
            path: json['path'],
            isFavorite: json['isFavorite'],
            createdAt: json['createdAt'],
            createdBy: json['createdBy'],
            deletedBy: json['deletedBy'],
          );

          bool resultWorker = await _workerRepository.update(worker);
          result = result && resultWorker;
        }
      }

      return result;
    }

    throw new ArgumentError('Nenhum objeto a ser atualizado');
  }
}
