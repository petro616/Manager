import 'package:Manager/features/task_manager/domain/use_cases/taskmanager_use_cases.dart';
import 'package:get_it/get_it.dart';
import 'package:Manager/features/onboarding/data/data_source/local_data_source.dart';
import 'package:Manager/features/onboarding/data/repositories/data_repositories.dart';
import 'package:Manager/features/onboarding/domain/domain_repositories/onboarding_repositories.dart';
import 'package:Manager/features/onboarding/domain/use_cases/onboarding_use_cases.dart';
import 'package:Manager/features/onboarding/presentation/cubit/onboarding_cubit.dart';
import 'package:Manager/features/task_manager/data/data_source/remote_data_source.dart';
import 'package:Manager/features/task_manager/data/repositories/data_repositories.dart';
import 'package:Manager/features/task_manager/domain/repositories/domain_repositories.dart';
import 'package:Manager/features/task_manager/presentation/cubit/project_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/sections_cubit.dart';
import 'package:Manager/features/task_manager/presentation/cubit/tasks_cubit.dart';

final getIt = GetIt.instance;

void onBoardingGetIt() {
  getIt.registerSingleton<LocalDataSource>(LocalDataSource());
  getIt.registerSingleton<DataRepositories>(
      DataRepositories(localDataSource: getIt.get()));
  getIt.registerSingleton<OnboardingDomainRepositoriesImp>(
      OnboardingDomainRepositoriesImp(dataRepositories: getIt.get()));
  getIt.registerSingleton<OnboardingUseCases>(
      OnboardingUseCases(domainRepositories: getIt.get()));
  getIt.registerFactory<OnboardingCubit>(
      () => OnboardingCubit(useCases: getIt.get()));
}

void taskManagerGetIt() {
  getIt.registerSingleton<RemoteDataSource>(
      RemoteDataSource(createAndSetupDio()));

  getIt.registerSingleton<ProjectsDataRepositoriesImp>(
      ProjectsDataRepositoriesImp(remoteDataSource: getIt.get()));
  getIt.registerSingleton<SectionsDataRepositoriesImp>(
      SectionsDataRepositoriesImp(remoteDataSource: getIt.get()));
  getIt.registerSingleton<TasksDataRepositoriesImp>(
      TasksDataRepositoriesImp(remoteDataSource: getIt.get()));

  getIt.registerSingleton<ProjectsDomainRepositoriesImp>(
      ProjectsDomainRepositoriesImp(projectsDataRepositories: getIt.get()));
  getIt.registerSingleton<SectionsDomainRepositoriesImp>(
      SectionsDomainRepositoriesImp(sectionsDataRepositories: getIt.get()));
  getIt.registerSingleton<TasksDomainRepositoriesImp>(
      TasksDomainRepositoriesImp(tasksDataRepositories: getIt.get()));

  getIt.registerSingleton<ProjectsUseCase>(
      ProjectsUseCase(projectsDomainRepositories: getIt.get()));
  getIt.registerSingleton<SectionsUseCase>(
      SectionsUseCase(sectionsDomainRepositories: getIt.get()));
  getIt.registerSingleton<TasksUseCase>(
      TasksUseCase(tasksDomainRepositories: getIt.get()));

  getIt.registerFactory<ProjectCubit>(() => ProjectCubit(useCase: getIt.get()));
  getIt.registerFactory<SectionsCubit>(
      () => SectionsCubit(useCase: getIt.get()));
  getIt.registerFactory<TasksCubit>(() => TasksCubit(useCase: getIt.get()));
}
