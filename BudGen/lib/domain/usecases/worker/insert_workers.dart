import 'package:BudGen/data/repositories/worker_repository.dart';
import 'package:BudGen/domain/entities/worker.dart';
import 'package:uuid/uuid.dart';

class InsertWorkers {
  WorkerRepository _workerRepository = WorkerRepository();

  Future<bool> call(List<Map<String, dynamic>> workersJson) async {
    bool result = true;
    Uuid _uuid = Uuid();

    if (workersJson != null) {
      for (Map<String, dynamic> json in workersJson) {
        String uuid = _uuid.v1();

        if (json != null) {
          Worker worker = new Worker(
            id: uuid,
            name: json['name'],
            code: json['code'],
            description: json['description'],
            imageUrl: json['imageUrl'],
            price: (json['price'] is String)
                ? double.parse(json['price'])
                : json['price'],
            path: json['path'],
            isFavorite: false,
            createdAt: DateTime.now(),
            createdBy: '0000000',
            deletedBy: null,
          );

          bool resultWorker = await _workerRepository.insertWorker(worker);
          result = result && resultWorker;
        }
      }

      return result;
    }

    throw new ArgumentError('Objeto inserido null ou vazio');
  }
}
