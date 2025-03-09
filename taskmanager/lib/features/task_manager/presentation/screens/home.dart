import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/core/dialog.dart';
import 'package:Manager/core/loading.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/core/noInternet_widget.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/project_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/task_manager_state.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/app_bar.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/bottom_app_bar.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/calendar_builder.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/floating_action_button.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/middle_main_page_text.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/projectlist_widget.dart';
import 'package:Manager/features/task_manager/presentation/widgets/home/today_text.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/search_text_field.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ProjectsEntities> allProjects = [];
  List<ProjectsEntities> allSearchedProject = [];
  late TextEditingController isSearchingController;
  bool isSearching = false;
  @override
  void initState() {
    isSearchingController = TextEditingController();
    context.read<ProjectCubit>().getAllProjects();
    super.initState();
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
        IconButton(
            onPressed: () {
              showDialogs(context);
            },
            icon: Icon(Icons.notifications_on)),
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
        bottomNavigationBar: Row(
          spacing: 30.w,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomAppBarMade(title: "Home", icon: Icons.home, onPressed: () {}),
            BottomAppBarMade(
                title: "Status",
                icon: Icons.show_chart,
                onPressed: () {
                  showDialogs(context);
                }),
          ],
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButtonMade(onPressed: () {
          Navigator.pushNamed(context, Routes.createProject);
        }),
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: isSearching ? searchTextFormField() : AppBarMade(),
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
              return ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  TodayText(),
                  CalendarBuilder(),
                  MiddleMainPageText(
                      title: "Main Projetcs",
                      textGoToSeeProjects: "see projetcs",
                      onTap: () {
                        Navigator.pushNamed(context, Routes.seeAllProjects);
                      }),
                  SizedBox(height: 8.h),
                  BlocBuilder<ProjectCubit, TaskManagerState<ProjectsEntities>>(
                    builder:
                        (context, TaskManagerState<ProjectsEntities> state) {
                      return state.when(
                        idle: () {
                          return const SizedBox.shrink();
                        },
                        loading: () {
                          return SizedBox(
                              height: 270.h, child: LoadingWidget());
                        },
                        failure: (NetworkExceptions networkExceptions) {
                          return Text(NetworkExceptions.getErrorMessage(
                              networkExceptions));
                        },
                        loadedList: (List<ProjectsEntities> data) {
                          allProjects = data;
                          return ProjectListWidget(
                            allProjects: allProjects,
                            allSearchedProject: allSearchedProject,
                            isSearchingController: isSearchingController,
                          );
                        },
                        emptyList: () {
                          return const SizedBox.shrink();
                        },
                        loadedSingle: (ProjectsEntities data) {
                          return const SizedBox.shrink();
                        },
                        created: (ProjectsEntities data) {
                          return Text(data.name!);
                        },
                        updated: (ProjectsEntities data) {
                          return const SizedBox.shrink();
                        },
                        deleted: () {
                          return const SizedBox.shrink();
                        },
                      );
                    },
                  )
                ],
              );
            } else {
              return NoInternetWidget();
            }
          },
          child: LoadingWidget(),
        ));
  }
}
