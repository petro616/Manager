import 'package:Manager/core/apiresult.dart';
import 'package:Manager/features/task_manager/data/repositories/data_repositories.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';

abstract class ProjectsDomainRepositories {
  Future<Apiresult<List<ProjectsEntities>>> getAllProjects();
  Future<Apiresult<ProjectsEntities>> createProjects(
      {required ProjectsEntities projectEntity});
  Future<Apiresult<void>> deleteProjects({required String projectId});
}

abstract class SectionsDomainRepositories {
  Future<Apiresult<List<SectionsEntities>>> getAllSections(
      {required String projectId});
  Future<Apiresult<SectionsEntities>> createSections(
      {required SectionsEntities sectionEntity});
  Future<Apiresult<void>> deleteSections({required String sectionId});
}

abstract class TasksDomainRepositories {
  Future<Apiresult<List<TasksEntities>>> getAllTasks(
      {required String projectId, required String sectionId});
  Future<Apiresult<TasksEntities>> createTasks(
      {required TasksEntities taskEntity});
  Future<Apiresult<TasksEntities>> updateTasks(
      {required TasksEntities taskEntity, required String taskId});
  Future<Apiresult<void>> deleteTask({required String taskId});
}

class ProjectsDomainRepositoriesImp extends ProjectsDomainRepositories {
  final ProjectsDataRepositoriesImp projectsDataRepositories;
  ProjectsDomainRepositoriesImp({required this.projectsDataRepositories});
  @override
  Future<Apiresult<List<ProjectsEntities>>> getAllProjects() {
    return projectsDataRepositories.getAllProjects();
  }

  @override
  Future<Apiresult<ProjectsEntities>> createProjects(
      {required ProjectsEntities projectEntity}) {
    return projectsDataRepositories.createProjects(
        projectEntity: projectEntity);
  }

  @override
  Future<Apiresult<void>> deleteProjects({required String projectId}) {
    return projectsDataRepositories.deleteProjects(projectId: projectId);
  }
}

class SectionsDomainRepositoriesImp extends SectionsDomainRepositories {
  final SectionsDataRepositoriesImp sectionsDataRepositories;
  SectionsDomainRepositoriesImp({required this.sectionsDataRepositories});
  @override
  Future<Apiresult<List<SectionsEntities>>> getAllSections(
      {required String projectId}) {
    return sectionsDataRepositories.getAllSections(projectId: projectId);
  }

  @override
  Future<Apiresult<SectionsEntities>> createSections(
      {required SectionsEntities sectionEntity}) {
    return sectionsDataRepositories.createSections(
        sectionEntity: sectionEntity);
  }

  @override
  Future<Apiresult<void>> deleteSections({required String sectionId}) {
    return sectionsDataRepositories.deleteSections(sectionId: sectionId);
  }
}

class TasksDomainRepositoriesImp extends TasksDomainRepositories {
  final TasksDataRepositoriesImp tasksDataRepositories;
  TasksDomainRepositoriesImp({required this.tasksDataRepositories});
  @override
  Future<Apiresult<List<TasksEntities>>> getAllTasks(
      {required String projectId, required String sectionId}) {
    return tasksDataRepositories.getAllTasks(
        projectId: projectId, sectionId: sectionId);
  }

  @override
  Future<Apiresult<TasksEntities>> createTasks(
      {required TasksEntities taskEntity}) {
    return tasksDataRepositories.createTasks(taskEntity: taskEntity);
  }

  @override
  Future<Apiresult<TasksEntities>> updateTasks(
      {required TasksEntities taskEntity, required String taskId}) {
    return tasksDataRepositories.updateTasks(
        taskEntity: taskEntity, taskId: taskId);
  }

  @override
  Future<Apiresult<void>> deleteTask({required String taskId}) {
    return tasksDataRepositories.deleteTask(taskId: taskId);
  }
}
