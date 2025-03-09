import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/core/apiresult.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/domain/use_cases/taskmanager_use_cases.dart';
import 'package:Manager/features/task_manager/presentation/cubit/task_manager_state.dart';

class ProjectCubit extends Cubit<TaskManagerState<ProjectsEntities>> {
  final ProjectsUseCase useCase;
  ProjectCubit({required this.useCase}) : super(Idle());
  getAllProjects() async {
    emit(Loading());
    Apiresult<List<ProjectsEntities>> response = await useCase.getAllProjects();
    response.when(success: (List<ProjectsEntities> projectsList) {
      projectsList.isEmpty ? emit(EmptyList()) : emit(LoadedList(projectsList));
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }

  createProject(ProjectsEntities projectEntity) async {
    emit(Loading());
    Apiresult<ProjectsEntities> response =
        await useCase.createProjects(projectEntity: projectEntity);
    response.when(success: (ProjectsEntities createProjectEntity) {
      emit(Created(createProjectEntity));
      getAllProjects();
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }

  deleteProject(String projectId) async {
    emit(Loading());
    Apiresult<void> response =
        await useCase.deleteProjects(projectId: projectId);
    response.when(success: (_) {
      emit(Deleted());
      getAllProjects();
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }
}
