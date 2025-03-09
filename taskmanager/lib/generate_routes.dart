import 'package:flutter/material.dart';
import 'package:Manager/core/named_routes.dart';
import 'package:Manager/features/onboarding/presentation/screens/onboarding.dart';
import 'package:Manager/features/task_manager/presentation/screens/create_project.dart';
import 'package:Manager/features/task_manager/presentation/screens/create_section.dart';
import 'package:Manager/features/task_manager/presentation/screens/create_tasks.dart';
import 'package:Manager/features/task_manager/presentation/screens/home.dart';
import 'package:Manager/features/task_manager/presentation/screens/section_screen.dart';
import 'package:Manager/features/task_manager/presentation/screens/seeallprojects.dart';
import 'package:Manager/features/task_manager/presentation/screens/tasks_screen.dart';
import 'package:Manager/features/task_manager/presentation/screens/update_tasks.dart';

class AppRoute {
  Route? generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => Onboarding());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => Home());
      case Routes.seeAllProjects:
        return MaterialPageRoute(builder: (_) => SeeAllProjects());
      case Routes.createProject:
        return MaterialPageRoute(builder: (_) => CreateProject());
      case Routes.sectionsScreen:
        final argument = settings.arguments as Map<String, dynamic>;
        String projectId = argument['projectId'];
        return MaterialPageRoute(
            builder: (_) => SectionScreen(projectId: projectId));
      case Routes.createSection:
        final argument = settings.arguments as Map<String, dynamic>;
        String projectId = argument["projectId"];
        return MaterialPageRoute(
            builder: (_) => CreateSection(projectId: projectId));
      case Routes.tasksScreen:
        final argument = settings.arguments as Map<String, dynamic>;
        String projectId = argument["projectId"];
        String sectionId = argument["sectionId"];
        return MaterialPageRoute(
            builder: (_) => TasksScreen(
                  projectId: projectId,
                  sectionId: sectionId,
                ));
      case Routes.creaetasks:
        final argument = settings.arguments as Map<String, dynamic>;
        String projectId = argument["projectId"];
        String sectionId = argument["sectionId"];
        return MaterialPageRoute(
            builder: (_) =>
                CreateTaskPage(projectId: projectId, sectionId: sectionId));
      case Routes.updatetasks:
        final argument = settings.arguments as Map<String, dynamic>;
        String projectId = argument["projectId"];
        String sectionId = argument["sectionId"];
        String taskId = argument["taskId"];
        return MaterialPageRoute(
            builder: (_) => UpdateTasks(
                projectId: projectId, sectionId: sectionId, taskId: taskId));
      default:
        return null;
    }
  }
}
