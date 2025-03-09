import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/tasks_cubit.dart';

class CustomUpdateTaskButton extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController descriptionController;
  final String projectId;
  final String sectionId;
  final String? priority;
  final String taskId;

  const CustomUpdateTaskButton({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.descriptionController,
    required this.projectId,
    required this.sectionId,
    required this.priority,
    required this.taskId,
  });
  int getPriorityValue(String? priority) {
    switch (priority) {
      case '        Low':
        return 1;
      case '        Medium':
        return 2;
      case '        High':
        return 3;
      default:
        return 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 150.w,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
      color: const Color.fromARGB(255, 177, 183, 184),
      onPressed: () {
        if (formKey.currentState!.validate()) {
          context.read<TasksCubit>().updateTasks(
              TasksEntities(
                  id: taskId,
                  content: nameController.text,
                  description: descriptionController.text,
                  project_id: projectId,
                  section_id: sectionId,
                  priority: getPriorityValue(priority)),
              taskId,
              projectId,
              sectionId);
          Navigator.pop(context);
        }
      },
      child: Text(
        "UPDATE",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
