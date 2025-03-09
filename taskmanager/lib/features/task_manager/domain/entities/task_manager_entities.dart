import 'package:equatable/equatable.dart';

class ProjectsEntities extends Equatable {
  final String? id;
  final String? name;
  final String? color;

  const ProjectsEntities({
    required this.id,
    required this.name,
    required this.color,
  });
  @override
  List<Object?> get props => [id, name, color];
}

class SectionsEntities extends Equatable {
  final String? id;
  final String name;
  final String project_id;

  const SectionsEntities({
    required this.id,
    required this.name,
    required this.project_id,
  });

  @override
  List<Object?> get props => [id, name, project_id];
}

class TasksEntities extends Equatable {
  final String? id;
  final String content;
  final String description;
  final String project_id;
  final String section_id;
  final DateTime? dueDate;
  final String? dueString;
  final int? priority;
  final bool? isCompleted;
  final DateTime? reminderTime;

  const TasksEntities(
      {required this.id,
      required this.content,
      required this.description,
      required this.project_id,
      required this.section_id,
      this.dueDate,
      this.dueString,
      required this.priority,
      this.isCompleted = false,
      this.reminderTime});
  @override
  List<Object?> get props => [
        id,
        content,
        description,
        project_id,
        section_id,
        dueDate,
        dueString,
        priority,
        isCompleted
      ];
}
