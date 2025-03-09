import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:Manager/core/app_colors.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/sections_cubit.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/seeallprojects_card.dart';

class LoadedSectionList extends StatelessWidget {
  final String projectId;
  final List<SectionsEntities> allSections;
  final List<SectionsEntities> allSearchedSections;
  final TextEditingController isSearchingController;
  const LoadedSectionList(
      {super.key,
      required this.projectId,
      required this.allSections,
      required this.allSearchedSections,
      required this.isSearchingController});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: isSearchingController.text.isEmpty
            ? allSections.length
            : allSearchedSections.length,
        itemBuilder: (context, index) {
          return SeeAllProjectsCard(
            onTap: () {
              Navigator.pushNamed(context, Routes.tasksScreen, arguments: {
                "projectId":
                    isSearchingController.text.isEmpty ? projectId : projectId,
                "sectionId": isSearchingController.text.isEmpty
                    ? allSections[index].id
                    : allSearchedSections[index].id
              });
            },
            title: isSearchingController.text.isEmpty
                ? allSections[index].name
                : allSearchedSections[index].name,
            description: "Click Here To See Tasks...",
            cardColor: AppColor.cardColor[0]['color'],
            onDelete: () {
              context
                  .read<SectionsCubit>()
                  .deleteSection(allSections[index].id!, projectId);
            },
          );
        });
  }
}
