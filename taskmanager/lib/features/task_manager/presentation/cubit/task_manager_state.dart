import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:Manager/core/network_exceptions.dart';

part 'task_manager_state.freezed.dart';

@freezed
sealed class TaskManagerState<T> with _$TaskManagerState<T> {
  // Common states
  factory TaskManagerState.idle() = Idle<T>;
  factory TaskManagerState.loading() = Loading<T>;
  factory TaskManagerState.failure(NetworkExceptions error) = Failure<T>;

  // States for lists
  factory TaskManagerState.loadedList(List<T> data) = LoadedList<T>;
  factory TaskManagerState.emptyList() = EmptyList<T>;

  // States for single entities
  factory TaskManagerState.loadedSingle(T data) = LoadedSingle<T>;
  factory TaskManagerState.created(T data) = Created<T>;
  factory TaskManagerState.updated(T data) = Updated<T>;
  factory TaskManagerState.deleted() = Deleted<T>;
}
