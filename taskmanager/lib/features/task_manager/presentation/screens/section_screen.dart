import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/core/loading.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/core/network_exceptions.dart';
import 'package:Manager/core/noInternet_widget.dart';
import 'package:Manager/features/task_manager/domain/entities/task_manager_entities.dart';
import 'package:Manager/features/task_manager/presentation/cubit/sections_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/task_manager_state.dart';
import 'package:Manager/features/task_manager/presentation/widgets/sections/loaded_section_list.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/appbar_made.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/floating_action_button.dart';
import 'package:Manager/features/task_manager/presentation/widgets/seeallprojects/search_text_field.dart';

class SectionScreen extends StatefulWidget {
  final String projectId;
  const SectionScreen({super.key, required this.projectId});

  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  List<SectionsEntities> allSections = [];
  List<SectionsEntities> allSearchedSections = [];
  late TextEditingController isSearchingController;
  bool isSearching = false;
  @override
  void initState() {
    super.initState();
    isSearchingController = TextEditingController();
    context.read<SectionsCubit>().getAllSections(widget.projectId);
  }

  @override
  void dispose() {
    isSearchingController.dispose();
    super.dispose();
  }

  Widget searchTextFormField() {
    return CustomSearchTextField(
        onChanged: (projectUserSearchFor) {
          if (allSections.isNotEmpty) {
            allSearchedSections = allSections
                .where((singleProject) => singleProject.name
                    .toLowerCase()
                    .startsWith(projectUserSearchFor.toLowerCase()))
                .toList();
          } else {
            allSearchedSections.clear();
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
      allSearchedSections.clear();
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
          Navigator.pushNamed(context, Routes.createSection,
              arguments: {"projectId": widget.projectId});
        }),
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: isSearching
                ? searchTextFormField()
                : CustomAppbar(title: "SECTIONS"),
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
                    BlocBuilder<SectionsCubit,
                        TaskManagerState<SectionsEntities>>(
                      builder:
                          (context, TaskManagerState<SectionsEntities> state) {
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
                          loadedList: (List<SectionsEntities> data) {
                            allSections = data;
                            return LoadedSectionList(
                                projectId: widget.projectId,
                                allSections: allSections,
                                allSearchedSections: allSearchedSections,
                                isSearchingController: isSearchingController);
                          },
                          emptyList: () {
                            return const SizedBox.shrink();
                          },
                          loadedSingle: (SectionsEntities data) {
                            return const SizedBox.shrink();
                          },
                          created: (SectionsEntities data) {
                            return Text(data.name);
                          },
                          updated: (SectionsEntities data) {
                            return const SizedBox.shrink();
                          },
                          deleted: () {
                            return const SizedBox.shrink();
                          },
                        );
                      },
                    )
                  ],
                ),
              );
            } else {
              return NoInternetWidget();
            }
          },
          child: LoadingWidget(),
        ));
  }
}
