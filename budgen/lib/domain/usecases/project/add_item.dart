import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/item.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:flutter/material.dart';

class AddItem {
  ProjectRepository _repository = ProjectRepository();

  Future<void> call({
    @required Project project,
    @required Item item,
    @required int qtd,
  }) async {
    Map<String, dynamic> items = project?.items ?? <String, dynamic>{};

    if (items.containsKey(item.id)) {
      int itemQtd = items[item.id] as int;
      itemQtd += qtd;
      items[item.id] = itemQtd;
    } else {
      items[item.id] = qtd;
    }

    Project updatedProject = new Project(
      id: project.id,
      name: project.name,
      items: items,
      workers: project.workers,
      email: project.email,
      isFinished: project.isFinished,
      price: project.price,
      discount: project.discount,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: project.deletedBy,
    );

    await _repository.updateProject(updatedProject);

    return updatedProject;
  }
}
