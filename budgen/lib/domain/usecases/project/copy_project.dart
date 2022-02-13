import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:uuid/uuid.dart';

class CopyProject {
  ProjectRepository _repository = ProjectRepository();

  Future<void> call(Project project) async {
    Uuid uuid = Uuid();

    final Project newProject = Project(
      id: uuid.v4(),
      name: "cópia de " + project.name,
      email: project.email,
      price: project.price,
      items: project.items,
      workers: project.workers,
      discount: project.discount,
      isFinished: false,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: null,
    );

    await _repository.insertProject(newProject);
  }
}
