// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_manager_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) => ProjectModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      color: json['color'] as String?,
    );

Map<String, dynamic> _$ProjectModelToJson(ProjectModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'color': instance.color,
    };

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) => SectionModel(
      id: json['id'] as String?,
      name: json['name'] as String,
      project_id: json['project_id'] as String,
    );

Map<String, dynamic> _$SectionModelToJson(SectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'project_id': instance.project_id,
    };

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel(
      id: json['id'] as String?,
      content: json['content'] as String,
      description: json['description'] as String,
      project_id: json['project_id'] as String,
      section_id: json['section_id'] as String,
      dueDate: json['dueDate'] == null
          ? null
          : DateTime.parse(json['dueDate'] as String),
      dueString: json['dueString'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      isCompleted: json['isCompleted'] as bool? ?? false,
      reminderTime: json['reminderTime'] == null
          ? null
          : DateTime.parse(json['reminderTime'] as String),
    );

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'description': instance.description,
      'project_id': instance.project_id,
      'section_id': instance.section_id,
      'dueDate': instance.dueDate?.toIso8601String(),
      'dueString': instance.dueString,
      'priority': instance.priority,
      'isCompleted': instance.isCompleted,
      'reminderTime': instance.reminderTime?.toIso8601String(),
    };
