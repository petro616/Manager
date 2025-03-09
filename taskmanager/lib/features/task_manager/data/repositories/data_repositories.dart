import 'package:Manager/core/apiresult.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/features/task_manager/data/data_source/remote_data_source.dart';
import 'package:Manager/features/task_manager/data/model/task_manager_model.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/domain/repositories/domain_repositories.dart';

abstract class ProjectsDataRepositories
    implements ProjectsDomainRepositoriesImp {
  @override
  Future<Apiresult<List<ProjectsEntities>>> getAllProjects();
  @override
  Future<Apiresult<ProjectModel>> createProjects(
      {required ProjectsEntities projectEntity});
  @override
  Future<Apiresult<void>> deleteProjects({required String projectId});
}

abstract class SectionsDataRepositories
    implements SectionsDomainRepositoriesImp {
  @override
  Future<Apiresult<List<SectionsEntities>>> getAllSections(
      {required String projectId});
  @override
  Future<Apiresult<SectionModel>> createSections(
      {required SectionsEntities sectionEntity});
  @override
  Future<Apiresult<void>> deleteSections({required String sectionId});
}

abstract class TasksDataRepositories implements TasksDomainRepositoriesImp {
  @override
  Future<Apiresult<List<TasksEntities>>> getAllTasks(
      {required String projectId, required String sectionId});
  @override
  Future<Apiresult<TaskModel>> createTasks({required TasksEntities taskEntity});
  @override
  Future<Apiresult<TaskModel>> updateTasks(
      {required TasksEntities taskEntity, required String taskId});
  @override
  Future<Apiresult<void>> deleteTask({required String taskId});
}

class ProjectsDataRepositoriesImp extends ProjectsDataRepositories {
  final RemoteDataSource remoteDataSource;
  ProjectsDataRepositoriesImp({required this.remoteDataSource});
  @override
  Future<Apiresult<List<ProjectsEntities>>> getAllProjects() async {
    try {
      List<ProjectModel> response = await remoteDataSource.getProjects();
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  Future<Apiresult<ProjectModel>> createProjects(
      {required ProjectsEntities projectEntity}) async {
    try {
      ProjectModel projectModel = ProjectModel(
          id: projectEntity.id,
          name: projectEntity.name,
          color: projectEntity.color);
      ProjectModel response =
          await remoteDataSource.createProject(projectModel);
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  Future<Apiresult<void>> deleteProjects({required String projectId}) async {
    try {
      void response = await remoteDataSource.deleteProject(projectId);
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class SectionsDataRepositoriesImp extends SectionsDataRepositories {
  final RemoteDataSource remoteDataSource;

  SectionsDataRepositoriesImp({required this.remoteDataSource});
  @override
  Future<Apiresult<List<SectionsEntities>>> getAllSections(
      {required String projectId}) async {
    try {
      List<SectionModel> response =
          await remoteDataSource.getSections(projectId);
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  Future<Apiresult<SectionModel>> createSections(
      {required SectionsEntities sectionEntity}) async {
    try {
      SectionModel sectionModel = SectionModel(
          id: sectionEntity.id,
          name: sectionEntity.name,
          project_id: sectionEntity.project_id);
      SectionModel response =
          await remoteDataSource.createSection(sectionModel);
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  Future<Apiresult<void>> deleteSections({required String sectionId}) async {
    try {
      void response = await remoteDataSource.deleteSection(sectionId);
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class TasksDataRepositoriesImp extends TasksDataRepositories {
  final RemoteDataSource remoteDataSource;
  TasksDataRepositoriesImp({required this.remoteDataSource});
  @override
  Future<Apiresult<List<TasksEntities>>> getAllTasks(
      {required String projectId, required String sectionId}) async {
    try {
      var response = await remoteDataSource.getTasks(
          projectId: projectId, sectionId: sectionId);
      return Apiresult.success(response);
    } catch (dioException) {
      return Apiresult.failure(NetworkExceptions.getDioException(dioException));
    }
  }

  @override
  Future<Apiresult<TaskModel>> createTasks(
      {required TasksEntities taskEntity}) async {
    try {
      TaskModel taskModel = TaskModel(
          id: taskEntity.id,
          content: taskEntity.content,
          description: taskEntity.description,
          project_id: taskEntity.project_id,
          priority: taskEntity.priority,
          section_id: taskEntity.section_id,
          dueDate: taskEntity.dueDate,
          dueString: taskEntity.dueString);
      TaskModel response = await remoteDataSource.createTask(taskModel);
      return Apiresult.success(response);
    } catch (dioExceptions) {
      return Apiresult.failure(
          NetworkExceptions.getDioException(dioExceptions));
    }
  }

  @override
  Future<Apiresult<TaskModel>> updateTasks(
      {required TasksEntities taskEntity, required String taskId}) async {
    try {
      TaskModel taskModel = TaskModel(
          id: taskEntity.id,
          content: taskEntity.content,
          description: taskEntity.description,
          project_id: taskEntity.project_id,
          priority: taskEntity.priority,
          section_id: taskEntity.section_id,
          dueDate: taskEntity.dueDate,
          dueString: taskEntity.dueString);
      var response = await remoteDataSource.updateTask(taskId, taskModel);
      return Apiresult.success(response);
    } catch (dioExceptions) {
      return Apiresult.failure(
          NetworkExceptions.getDioException(dioExceptions));
    }
  }

  @override
  Future<Apiresult<void>> deleteTask({required String taskId}) async {
    try {
      void response = await remoteDataSource.deleteTask(taskId);
      return Apiresult.success(response);
    } catch (dioExceptions) {
      return Apiresult.failure(
          NetworkExceptions.getDioException(dioExceptions));
    }
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
