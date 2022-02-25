import 'package:budgen/data/repositories/project_repository.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:uuid/uuid.dart';

class InsertProject {
  ProjectRepository _repository = ProjectRepository();

  Future<bool> call(Project project) => _repository.insertProject(project);

  Future<void> withName(String? projectName) async {
    // GoogleAuth auth = new GoogleAuth();
    // final UserCredentials userGoogle = await auth.getGoogleUser();
    //TODO: adicionar isso aqui depois

    Uuid _uuid = Uuid();

    Project newProject = Project(
      id: _uuid.v1(),
      name: projectName ?? "Novo Projeto",
      email: "",
      isFinished: false,
      price: 0,
      discount: 0,
      createdAt: DateTime.now(),
      createdBy: "", //TODO inserir isso com o google auth
      deletedBy: null,
    );

    await _repository.insertProject(newProject);
  }
}
