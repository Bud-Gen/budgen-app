import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/item.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/domain/entities/worker.dart';
import 'package:BudGen/domain/usecases/project/calculate_discount.dart';
import 'package:BudGen/domain/usecases/project/get_items_project.dart';
import 'package:BudGen/domain/usecases/project/get_workers_project.dart';

class CalculateTotalPrice {
  ProjectRepository _projectRepository = ProjectRepository();
  GetItemsProject _getItemsProject = GetItemsProject();
  GetWorkersProject _getWorkersProject = GetWorkersProject();

  CalculateDiscount _calculateDiscount = CalculateDiscount();

  Future<double> projectWithoutDiscount(String id) async =>
      await _calculate(id);

  Future<double> projectWithDiscount(
      String id, double discount, bool isPercent) async {
    double totalValue = await _calculate(id);

    return _calculateDiscount.call(totalValue, discount, isPercent);
  }

  Future<double> _calculate(String id) async {
    double itemsValue = await forItems(id);
    double workersValue = await forWorkers(id);

    return (itemsValue + workersValue);
  }

  Future<double> forItems(String id) async {
    Project _project = await _projectRepository.getProjectById(id);
    List<Item> items = await _getItemsProject.call(id);

    if (items != null) {
      double value = 0;
      int quantity = 0;
      for (Item item in items) {
        quantity = _project.items[item.id];
        if (item != null) value += (item.price * quantity);
      }
      return value;
    }

    throw new ArgumentError('o id não corresponde a nenhum projeto.');
  }

  Future<double> forWorkers(String id) async {
    Project project = await _projectRepository.getProjectById(id);
    List<Worker> workers = await _getWorkersProject.call(id);
    double value = 0;
    int quantity = 0;

    if (project != null) {
      if (workers != null) {
        for (Worker worker in workers) {
          quantity = project.workers[worker.id];
          if (worker != null) value += (worker.price * quantity);
        }
        return value;
      }
      return 0;
    }
    throw new ArgumentError('o id não corresponde a nenhum projeto.');
  }
}
