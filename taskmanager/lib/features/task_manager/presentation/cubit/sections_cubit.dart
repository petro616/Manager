import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/core/apiresult.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/domain/use_cases/taskmanager_use_cases.dart';
import 'package:Manager/features/task_manager/presentation/cubit/task_manager_state.dart';

class SectionsCubit extends Cubit<TaskManagerState<SectionsEntities>> {
  final SectionsUseCase useCase;
  SectionsCubit({required this.useCase}) : super(Idle());
  getAllSections(String projectId) async {
    emit(Loading());
    Apiresult<List<SectionsEntities>> response =
        await useCase.getAllSections(projectId: projectId);
    response.when(success: (List<SectionsEntities> setionsList) {
      setionsList.isEmpty ? emit(EmptyList()) : emit(LoadedList(setionsList));
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }

  createSection(SectionsEntities sectionEntity, String projectId) async {
    emit(Loading());
    var response = await useCase.createSections(sectionEntity: sectionEntity);
    response.when(success: (SectionsEntities sectionEntity) {
      emit(Created(sectionEntity));
      getAllSections(projectId);
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }

  deleteSection(String sectionId, String projectId) async {
    emit(Loading());
    Apiresult<void> response =
        await useCase.deleteSections(sectionId: sectionId);
    response.when(success: (_) {
      emit(Deleted());
      getAllSections(projectId);
    }, failure: (NetworkExceptions errors) {
      emit(Failure(errors));
    });
  }
}
