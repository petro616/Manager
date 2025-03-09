import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/core/app_colors.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/project_cubit.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/seeallprojects_card.dart';

class LoadedListBuilder extends StatelessWidget {
  final TextEditingController isSearchingController;
  final List<ProjectsEntities> allProjects;
  final List<ProjectsEntities> allSearchedProject;

  const LoadedListBuilder(
      {super.key,
      required this.isSearchingController,
      required this.allProjects,
      required this.allSearchedProject});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: isSearchingController.text.isEmpty
          ? allProjects.length
          : allSearchedProject.length,
      itemBuilder: (context, index) {
        return SeeAllProjectsCard(
          onTap: () {
            Navigator.pushNamed(context, Routes.sectionsScreen, arguments: {
              'projectId': isSearchingController.text.isEmpty
                  ? allProjects[index].id
                  : allSearchedProject[index].id
            });
          },
          title: isSearchingController.text.isEmpty
              ? allProjects[index].name!
              : allSearchedProject[index].name!,
          description: "Click Here To See Sections...",
          cardColor: AppColor.cardColor[0]['color'],
          onDelete: () {
            context.read<ProjectCubit>().deleteProject(allProjects[index].id!);
          },
        );
      },
    );
  }
}
