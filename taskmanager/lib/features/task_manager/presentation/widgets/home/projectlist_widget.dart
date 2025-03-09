import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/core/app_colors.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/card_home.dart';

class ProjectListWidget extends StatelessWidget {
  final TextEditingController isSearchingController;
  final List<ProjectsEntities> allProjects;
  final List<ProjectsEntities> allSearchedProject;
  const ProjectListWidget(
      {super.key,
      required this.isSearchingController,
      required this.allProjects,
      required this.allSearchedProject});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, i) {
          return SizedBox(
            height: 500.h,
            child: Stack(
              children: List.generate(
                isSearchingController.text.isEmpty
                    ? allProjects.length >= 4
                        ? 4
                        : allProjects.length
                    : allSearchedProject.length,
                (index) => Positioned(
                  top: index * 75.0.h,
                  left: 10.w,
                  right: 10.w,
                  child: ProjectCard(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.sectionsScreen,
                          arguments: {
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
                  ),
                ),
              ),
            ),
          );
        });
  }
}
