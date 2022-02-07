import 'package:budgen/data/remote/google_auth.dart';
import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:budgen/domain/entities/user.dart';
import 'package:uuid/uuid.dart';

class InsertProject {
  ProjectRepository _repository = ProjectRepository();

  Future<bool> call(Project project) => _repository.insertProject(project);

  Future<bool> newProject() async {
    // GoogleAuth auth = new GoogleAuth();
    // final UserCredentials userGoogle = await auth.getGoogleUser();
    //TODO: adicionar isso aqui depois 

    Uuid _uuid = Uuid();

    Project newProject = Project(
      id: _uuid.v1(),
      name: 'Novo Projeto',
      email: "bia@bia.com",
      isFinished: false,
      price: 0,
      discount: 0,
      createdAt: DateTime.now(),
      createdBy: "bia",
      deletedBy: null,
    );

    return await call(newProject);
  }
}
