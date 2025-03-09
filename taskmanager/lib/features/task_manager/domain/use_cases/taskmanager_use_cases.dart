import 'package:Manager/core/apiresult.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/domain/repositories/domain_repositories.dart';

class ProjectsUseCase {
  final ProjectsDomainRepositoriesImp projectsDomainRepositories;
  ProjectsUseCase({required this.projectsDomainRepositories});
  Future<Apiresult<List<ProjectsEntities>>> getAllProjects() {
    return projectsDomainRepositories.getAllProjects();
  }

  Future<Apiresult<ProjectsEntities>> createProjects(
      {required ProjectsEntities projectEntity}) {
    return projectsDomainRepositories.createProjects(
        projectEntity: projectEntity);
  }

  Future<Apiresult<void>> deleteProjects({required String projectId}) {
    return projectsDomainRepositories.deleteProjects(projectId: projectId);
  }
}

class SectionsUseCase {
  final SectionsDomainRepositoriesImp sectionsDomainRepositories;
  SectionsUseCase({required this.sectionsDomainRepositories});
  Future<Apiresult<List<SectionsEntities>>> getAllSections(
      {required String projectId}) {
    return sectionsDomainRepositories.getAllSections(projectId: projectId);
  }

  Future<Apiresult<SectionsEntities>> createSections(
      {required SectionsEntities sectionEntity}) {
    return sectionsDomainRepositories.createSections(
        sectionEntity: sectionEntity);
  }

  Future<Apiresult<void>> deleteSections({required String sectionId}) {
    return sectionsDomainRepositories.deleteSections(sectionId: sectionId);
  }
}

class TasksUseCase {
  final TasksDomainRepositoriesImp tasksDomainRepositories;
  TasksUseCase({required this.tasksDomainRepositories});
  Future<Apiresult<List<TasksEntities>>> getAllTasks(
      {required String projectId, required String sectionId}) {
    return tasksDomainRepositories.getAllTasks(
        projectId: projectId, sectionId: sectionId);
  }

  Future<Apiresult<TasksEntities>> createTasks(
      {required TasksEntities taskEntity}) {
    return tasksDomainRepositories.createTasks(taskEntity: taskEntity);
  }

  Future<Apiresult<TasksEntities>> updateTasks(
      {required TasksEntities taskEntity, required String taskId}) {
    return tasksDomainRepositories.updateTasks(
        taskEntity: taskEntity, taskId: taskId);
  }

  Future<Apiresult<void>> deleteTask({required String taskId}) {
    return tasksDomainRepositories.deleteTask(taskId: taskId);
  }
}
