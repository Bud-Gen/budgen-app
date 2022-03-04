import 'package:budgen/data/local_data/local_database.dart';
import 'package:budgen/domain/core/database_constants.dart';
import 'package:budgen/domain/core/queries/project_queries.dart';
import 'package:budgen/domain/entities/project.dart';
import 'package:sqflite/sqflite.dart';

class ProjectRepository {
  Future<bool> insertProject(Project project) async {
    Database? _database = await LocalDatabase.instance.database;

    try {
      await _database!.insert(PROJECT, project.toMap());
      return true;
    } catch (error) {
      return false;
    }
  }

  Future<bool> deleteProject(String id) async {
    Database? _database = await LocalDatabase.instance.database;
    try {
      _database!.delete(PROJECT, where: 'id = ?', whereArgs: [id]);
      return true;
    } catch (error) {
      return false;
    }
  }

  Future<bool> updateProject(Project project) async {
    bool result = false;

    Database? _database = await LocalDatabase.instance.database;
    await _database!.update(PROJECT, project.toMap(),
        where: 'id = ?',
        whereArgs: [project.id]).whenComplete(() => result = true);

    return result;
  }

  Future<List<Project>> getAllProjects() async {
    List<Project> projects = [];
    Database? _database = await LocalDatabase.instance.database;
    final projectsData = await _database!.rawQuery(GET_ALL_PROJECTS);

    projectsData.forEach((project) {
      projects.add(Project.fromMap(project));
    });

    return projects;
  }

  Future<List<Project>> getFinishedProjects() async {
    List<Project> projects = [];
    Database? _database = await LocalDatabase.instance.database;
    final projectsData = await _database!.rawQuery(GET_FINISHED_PROJECTS);

    projectsData.forEach((project) {
      projects.add(Project.fromMap(project));
    });

    return projects;
  }

  Future<Project> getProjectById(String id) async {
    Database? _database = await LocalDatabase.instance.database;
    final projectData = await _database?.query(PROJECT,
        where: 'id = ?', whereArgs: [id], limit: 1);

    return Project.fromMap(projectData!.first);
  }

  Future<Project> getLatestProjectOpen() async {
    Database? _database = await LocalDatabase.instance.database;
    final projectData =
        await _database?.query(PROJECT, limit: 1, orderBy: "createdAt DESC");

    if (projectData!.isEmpty) {
      Project project = new Project(
        id: "1",
        name: "Novo Projeto",
        email: "",
        isFinished: false,
        price: 0,
        discount: 0,
        createdAt: DateTime.now(),
        createdBy: "",
        deletedBy: "",
      );
      await insertProject(project);
      return project;
    }

    return Project.fromMap(projectData.first);
  }

  Future<Project?> getCurrentProject() async {
    List<Project> projects = [];
    Database? _database = await LocalDatabase.instance.database;
    final projectsData = await _database?.rawQuery(GET_UNFINISHED_PROJECT);

    projectsData?.forEach((project) {
      projects.add(Project.fromMap(project));
    });

    if (projects.isEmpty) return null;

    return projects.first;
  }

  Future<bool> finishProject(Project project) async {
    final _database = await LocalDatabase.instance.database;
    bool result = false;

    final Project finishedProject = Project(
      id: project.id,
      name: project.name,
      workers: project.workers,
      items: project.items,
      price: project.price,
      discount: project.discount,
      email: project.email,
      createdAt: project.createdAt,
      createdBy: project.createdBy,
      deletedBy: project.deletedBy,
      isFinished: true,
    );

    await _database?.update(PROJECT, finishedProject.toMap(),
        where: 'id = ?',
        whereArgs: [project.id]).whenComplete(() => result = true);

    return result;
  }
}
