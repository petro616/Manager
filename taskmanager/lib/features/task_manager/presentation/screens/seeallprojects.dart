import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/core/loading.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/project_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/task_manager_state.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/appbar_made.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/floating_action_button.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/loaded_list_builder.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/search_text_field.dart';

class SeeAllProjects extends StatefulWidget {
  const SeeAllProjects({super.key});

  @override
  State<SeeAllProjects> createState() => _SeeallprojectsState();
}

class _SeeallprojectsState extends State<SeeAllProjects> {
  List<ProjectsEntities> allProjects = [];
  List<ProjectsEntities> allSearchedProject = [];
  late TextEditingController isSearchingController;
  bool isSearching = false;
  @override
  void initState() {
    super.initState();
    context.read<ProjectCubit>().getAllProjects();
    isSearchingController = TextEditingController();
  }

  @override
  void dispose() {
    isSearchingController.dispose();
    super.dispose();
  }

  Widget searchTextFormField() {
    return CustomSearchTextField(
        onChanged: (projectUserSearchFor) {
          if (allProjects.isNotEmpty) {
            allSearchedProject = allProjects
                .where((singleProject) => singleProject.name!
                    .toLowerCase()
                    .startsWith(projectUserSearchFor.toLowerCase()))
                .toList();
          } else {
            allSearchedProject.clear();
          }
          setState(() {});
        },
        isSearchingController: isSearchingController);
  }

  List<Widget> appBarActions() {
    if (isSearching) {
      return [
        IconButton(
            onPressed: () {
              clearSearch();
              Navigator.pop(context);
            },
            icon: Icon(Icons.clear))
      ];
    } else {
      return [
        IconButton(
            onPressed: () {
              startSearch();
            },
            icon: Icon(Icons.search)),
      ];
    }
  }

  void clearSearch() {
    setState(() {
      isSearchingController.clear();
      allSearchedProject.clear();
    });
  }

  void startSearch() {
    ModalRoute.of(context)!
        .addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearching));
    setState(() {
      isSearching = true;
    });
  }

  void stopSearching() {
    clearSearch();
    setState(() {
      isSearching = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: CustomFloatingActionButton(onPressed: () {
        Navigator.pushNamed(context, Routes.createProject);
      }),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: isSearching
            ? searchTextFormField()
            : CustomAppbar(title: "PROJECTS"),
        leading:
            isSearching ? BackButton(color: Colors.grey[600]) : BackButton(),
        actions: appBarActions(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 9.h, left: 6.w, right: 6.w),
        child: ListView(
          children: [
            BlocBuilder<ProjectCubit, TaskManagerState<ProjectsEntities>>(
              builder: (context, TaskManagerState<ProjectsEntities> state) {
                return state.when(
                  idle: () => const SizedBox.shrink(),
                  loading: () =>
                      SizedBox(height: 600.h, child: LoadingWidget()),
                  failure: (NetworkExceptions networkExceptions) {
                    return Text(
                        NetworkExceptions.getErrorMessage(networkExceptions));
                  },
                  loadedList: (List<ProjectsEntities> data) {
                    allProjects = data;
                    return LoadedListBuilder(
                        isSearchingController: isSearchingController,
                        allProjects: allProjects,
                        allSearchedProject: allSearchedProject);
                  },
                  emptyList: () => const SizedBox.shrink(),
                  loadedSingle: (ProjectsEntities data) =>
                      const SizedBox.shrink(),
                  created: (ProjectsEntities data) => Text(data.name!),
                  updated: (ProjectsEntities data) => const SizedBox.shrink(),
                  deleted: () => const SizedBox.shrink(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
