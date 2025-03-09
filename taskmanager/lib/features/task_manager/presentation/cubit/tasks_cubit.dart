import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/core/apiresult.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/domain/use_cases/taskmanager_use_cases.dart';
import 'package:Manager/features/task_manager/presentation/cubit/task_manager_state.dart';

class TasksCubit extends Cubit<TaskManagerState<TasksEntities>> {
  final TasksUseCase useCase;
  TasksCubit({required this.useCase}) : super(Idle());

  getAllTasks(String projectId, String sectionId) async {
    emit(Loading());
    Apiresult<List<TasksEntities>> response =
        await useCase.getAllTasks(projectId: projectId, sectionId: sectionId);
    response.when(success: (List<TasksEntities> tasksList) {
      tasksList.isEmpty ? emit(EmptyList()) : emit(LoadedList(tasksList));
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }

  createTasks(
      TasksEntities taskEntity, String projectId, String sectionId) async {
    emit(Loading());
    Apiresult<TasksEntities> response =
        await useCase.createTasks(taskEntity: taskEntity);
    response.when(success: (TasksEntities tasksEntity) {
      emit(Created(tasksEntity));
      getAllTasks(projectId, sectionId);
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }

  updateTasks(TasksEntities taskEntity, String taskId, String projectId,
      String sectionId) async {
    emit(Loading());
    Apiresult<TasksEntities> response =
        await useCase.updateTasks(taskEntity: taskEntity, taskId: taskId);
    response.when(success: (TasksEntities tasksEntity) {
      emit(Updated(tasksEntity));
      getAllTasks(projectId, sectionId);
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }

  deleteTasks(String taskId, String projectId, String sectionId) async {
    emit(Loading());
    Apiresult<void> response = await useCase.deleteTask(taskId: taskId);
    response.when(success: (_) {
      emit(Deleted());
      getAllTasks(projectId, sectionId);
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }
}
