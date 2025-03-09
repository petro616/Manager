import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/core/loading.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/core/noInternet_widget.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/task_manager_state.dart';
import 'package:Manager/features/task_manager/presentation/cubit/tasks_cubit.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/appbar_made.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/floating_action_button.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/search_text_field.dart';
import 'package:Manager/features/task_manager/presentation/widgets/tasks/loaded_list_task.dart';

class TasksScreen extends StatefulWidget {
  final String projectId;
  final String sectionId;

  const TasksScreen({
    super.key,
    required this.projectId,
    required this.sectionId,
  });

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<TasksEntities> allTasks = [];
  List<TasksEntities> allSearchedTasks = [];
  late TextEditingController isSearchingController;
  bool isSearching = false;
  @override
  void initState() {
    super.initState();
    isSearchingController = TextEditingController();
    context.read<TasksCubit>().getAllTasks(widget.projectId, widget.sectionId);
  }

  @override
  void dispose() {
    isSearchingController.dispose();
    super.dispose();
  }

  Widget searchTextFormField() {
    return CustomSearchTextField(
        onChanged: (projectUserSearchFor) {
          if (allTasks.isNotEmpty) {
            allSearchedTasks = allTasks
                .where((singleProject) => singleProject.content
                    .toLowerCase()
                    .startsWith(projectUserSearchFor.toLowerCase()))
                .toList();
          } else {
            allSearchedTasks.clear();
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
      allSearchedTasks.clear();
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
        floatingActionButton: CustomFloatingActionButton(onPressed: () {
          Navigator.pushNamed(context, Routes.creaetasks, arguments: {
            "projectId": widget.projectId,
            "sectionId": widget.sectionId
          });
        }),
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: isSearching
                ? searchTextFormField()
                : CustomAppbar(title: "TASKS"),
            actions: appBarActions()),
        body: OfflineBuilder(
          connectivityBuilder: (
            BuildContext context,
            List<ConnectivityResult> connectivity,
            Widget child,
          ) {
            final bool connected =
                !connectivity.contains(ConnectivityResult.none);
            if (connected) {
              return Container(
                  padding: EdgeInsets.only(top: 9.h, left: 6.w, right: 6.w),
                  child: ListView(
                    children: [
                      BlocBuilder<TasksCubit, TaskManagerState<TasksEntities>>(
                        builder:
                            (context, TaskManagerState<TasksEntities> state) {
                          return state.when(
                            idle: () {
                              return const SizedBox.shrink();
                            },
                            loading: () {
                              return SizedBox(
                                  height: 600.h, child: LoadingWidget());
                            },
                            failure: (NetworkExceptions networkExceptions) {
                              return Text(NetworkExceptions.getErrorMessage(
                                  networkExceptions));
                            },
                            loadedList: (List<TasksEntities> data) {
                              allTasks = data;
                              return LoadedListTask(
                                  projectId: widget.projectId,
                                  sectionId: widget.sectionId,
                                  allTasks: allTasks,
                                  allSearchedTasks: allSearchedTasks,
                                  isSearchingController: isSearchingController);
                            },
                            emptyList: () {
                              return const SizedBox.shrink();
                            },
                            loadedSingle: (TasksEntities data) {
                              return const SizedBox.shrink();
                            },
                            created: (TasksEntities data) {
                              return Text(data.content);
                            },
                            updated: (TasksEntities data) {
                              return const SizedBox.shrink();
                            },
                            deleted: () {
                              return const SizedBox.shrink();
                            },
                          );
                        },
                      )
                    ],
                  ));
            } else {
              return NoInternetWidget();
            }
          },
          child: LoadingWidget(),
        ));
  }
}
