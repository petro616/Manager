import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/core/app_colors.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/tasks_cubit.dart';
import 'package:Manager/features/task_manager/presentation/widgets/tasks/task_card.dart';

class LoadedListTask extends StatelessWidget {
  final String projectId;
  final String sectionId;
  final List<TasksEntities> allTasks;
  final List<TasksEntities> allSearchedTasks;
  final TextEditingController isSearchingController;
  const LoadedListTask(
      {super.key,
      required this.projectId,
      required this.sectionId,
      required this.allTasks,
      required this.allSearchedTasks,
      required this.isSearchingController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: isSearchingController.text.isEmpty
            ? allTasks.length
            : allSearchedTasks.length,
        itemBuilder: (context, index) {
          return TaskCard(
            content: isSearchingController.text.isEmpty
                ? allTasks[index].content
                : allSearchedTasks[index].content,
            description: isSearchingController.text.isEmpty
                ? allTasks[index].description
                : allSearchedTasks[index].description,
            cardColor: AppColor.cardColor[0]['color'],
            onTap: () {},
            task: allTasks[index],
            priority: allTasks[index].priority!,
            onFinishTask: () {
              context
                  .read<TasksCubit>()
                  .deleteTasks(allTasks[index].id!, projectId, sectionId);
            },
            onEdit: () {
              Navigator.pushNamed(context, Routes.updatetasks, arguments: {
                "projectId": projectId,
                "sectionId": sectionId,
                "taskId": allTasks[index].id
              });
            },
          );
        });
  }
}
