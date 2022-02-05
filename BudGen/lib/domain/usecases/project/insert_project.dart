import 'package:BudGen/data/remote/google_auth.dart';
import 'package:BudGen/data/repositories/project_repository.dart';
import 'package:BudGen/domain/entities/project.dart';
import 'package:BudGen/domain/entities/user.dart';
import 'package:uuid/uuid.dart';

class InsertProject {
  ProjectRepository _repository = ProjectRepository();

  Future<bool> call(Project project) => _repository.insertProject(project);

  Future<bool> newProject() async {
    GoogleAuth auth = new GoogleAuth();
    final UserCredentials userGoogle = await auth.getGoogleUser();

    Uuid _uuid = Uuid();

    Project newProject = Project(
      id: _uuid.v1(),
      name: 'Novo Projeto',
      email: userGoogle.email,
      isFinished: false,
      price: 0,
      discount: 0,
      createdAt: DateTime.now(),
      createdBy: userGoogle.name,
      deletedBy: null,
    );

    return await call(newProject);
  }
}
