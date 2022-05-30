import 'package:budgen/data/repositories/worker_repository.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:uuid/uuid.dart';

class InsertWorker {
  Uuid _uuid = Uuid();

  WorkerRepository _repository = WorkerRepository();

  Future<bool> call(Worker worker) async =>
      await _repository.insertWorker(worker);

  Future<bool> unique({
    required String name,
    required String code,
    required double price,
    String? description,
    String? url,
    String? type,
  }) {
    final String id = _uuid.v4();

    final Worker worker = new Worker(
      id: id,
      name: name,
      code: code,
      price: price,
      description: description,
      isFavorite: false,
      imageUrl: url,
      type: type,
      createdAt: DateTime.now(),
      createdBy: '',
    );

    return _repository.insertWorker(worker);
  }
}
