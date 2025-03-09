import 'package:json_annotation/json_annotation.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
part 'task_manager_model.g.dart';

@JsonSerializable()
class ProjectModel extends ProjectsEntities {
  const ProjectModel({
    required super.id,
    required super.name,
    required super.color,
  });

  factory ProjectModel.fromJson(Map<String, dynamic> json) =>
      _$ProjectModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProjectModelToJson(this);
}

@JsonSerializable()
class SectionModel extends SectionsEntities {
  const SectionModel({
    required super.id,
    required super.name,
    required super.project_id,
  });

  factory SectionModel.fromJson(Map<String, dynamic> json) =>
      _$SectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$SectionModelToJson(this);
}

@JsonSerializable()
class TaskModel extends TasksEntities {
  const TaskModel(
      {required super.id,
      required super.content,
      required super.description,
      required super.project_id,
      required super.section_id,
      required super.dueDate,
      super.dueString,
      required super.priority,
      super.isCompleted = false,
      super.reminderTime});

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  Map<String, dynamic> toJson() => _$TaskModelToJson(this);
}
