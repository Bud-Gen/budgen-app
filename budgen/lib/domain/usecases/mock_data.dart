import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/worker.dart';
import 'package:budgen/domain/usecases/MOCK.dart';
import 'package:budgen/domain/usecases/item/insert_item.dart';
import 'package:budgen/domain/usecases/product/insert_products.dart';
import 'package:budgen/domain/usecases/project/insert_project.dart';
import 'package:budgen/domain/usecases/worker/insert_worker.dart';

class MockData {
  InsertProducts insertProducts = InsertProducts();
  InsertProject insertProject = InsertProject();
  InsertWorker insertWorker = InsertWorker();
  InsertItem insertItem = InsertItem();

  Worker worker = Worker(
    id: 'dhsjhsjhe33jshjs',
    name: 'Beatriz',
    code: '24772hjh937',
    description: 'programa aplicativos',
    imageUrl: 'biabiabia.jpg',
    price: 3848.58,
    phone: '4002-8922',
    type: 'programadora',
    address: 'Rua dos bobos, numero 0',
    path: 'aqui',
    isFavorite: true,
    createdAt: DateTime.now(),
    createdBy: 'bia',
    deletedBy: null,
  );

  Worker worker2 = Worker(
    id: 'dhsjesj33hjshdsssjs',
    name: 'Bia',
    code: '24772hjh937',
    description: 'programa aplicativos',
    imageUrl: 'biabiabia.jpg',
    price: 3848.58,
    phone: '4002-8922',
    type: 'programadora',
    address: 'Rua dos bobos, numero 0',
    path: 'aqui',
    isFavorite: true,
    createdAt: DateTime.now(),
    createdBy: 'bia',
    deletedBy: null,
  );

  Item item = Item(
    id: "123e33456",
    name: "Pneus",
    code: "1287872",
    description: "roda e roda",
    imageUrl: "pneu.jpg",
    price: 122.00,
    path: "pneu",
    isFavorite: true,
    createdAt: DateTime.now(),
    createdBy: "bia",
    deletedBy: null,
  );

  Item item2 = Item(
    id: "12343356eeabc",
    name: "Dentadura",
    code: "1287872222",
    description: "serve pra morder",
    imageUrl: "dentadura.jpg",
    price: 1222.00,
    path: "pneu",
    isFavorite: true,
    createdAt: DateTime.now(),
    createdBy: "bia",
    deletedBy: null,
  );

  Project project = Project(
    id: '123456',
    items: <String, int>{},
    workers: <String, int>{},
    name: 'Projeto',
    email: 'bia@bia.com',
    isFinished: false,
    price: 0,
    discount: 0,
    createdAt: DateTime.now(),
    createdBy: 'bia',
    deletedBy: null,
  );

  Future call() async {
    // await insertWorker.call(worker);
    // await insertWorker.call(worker2);
    // await insertItem.call(item);
    // await insertItem.call(item2);

    // await insertProject.call(project);
    await insertProducts.fromJson(MOCK_JSON);
  }
}
