import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Manager/core/dependency_injection.dart';
import 'package:Manager/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/calendar_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/project_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/sections_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/tasks_cubit.dart';
import 'package:Manager/generate_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();
  runApp(const MyApp());
}

void initDependencies() {
  onBoardingGetIt();
  taskManagerGetIt();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            onGenerateRoute: AppRoute().generateRoutes,
            theme: ThemeData(
              fontFamily: "PlayfairDisplay",
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: "/",
            builder: (context, child) {
              return MultiBlocProvider(providers: [
                BlocProvider(
                  create: (context) => getIt<OnboardingCubit>(),
                ),
                BlocProvider(
                  create: (context) => getIt<ProjectCubit>(),
                ),
                BlocProvider(
                  create: (context) => CalendarCubit(),
                ),
                BlocProvider(
                  create: (context) => getIt<SectionsCubit>(),
                ),
                BlocProvider(
                  create: (context) => getIt<TasksCubit>(),
                ),
              ], child: child!);
            },
          );
        });
  }
}
