import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:Manager/features/task_manager/data/model/task_manager_model.dart';

part 'remote_data_source.g.dart';

@RestApi(baseUrl: "https://api.todoist.com/rest/v2/")
abstract class RemoteDataSource {
  factory RemoteDataSource(Dio dio, {String? baseUrl}) = _RemoteDataSource;

  @GET('projects')
  Future<List<ProjectModel>> getProjects();

  @POST('projects')
  Future<ProjectModel> createProject(@Body() ProjectModel body);

  @DELETE('projects/{projectId}')
  Future<void> deleteProject(@Path('projectId') String projectId);

  @GET('sections')
  Future<List<SectionModel>> getSections(@Query('project_id') String projectId);

  @POST('sections')
  Future<SectionModel> createSection(@Body() SectionModel body);

  @DELETE('sections/{sectionId}')
  Future<void> deleteSection(@Path('sectionId') String sectionId);

  @GET('tasks')
  Future<List<TaskModel>> getTasks({
    @Query('project_id') required String projectId,
    @Query('section_id') String? sectionId,
  });

  @POST('tasks')
  Future<TaskModel> createTask(@Body() TaskModel body);

  @POST('tasks/{taskId}')
  Future<TaskModel> updateTask(
    @Path('taskId') String taskId,
    @Body() TaskModel body,
  );

  @DELETE('tasks/{taskId}')
  Future<void> deleteTask(@Path('taskId') String taskId);
}

Dio createAndSetupDio() {
  Dio dio = Dio();

  dio.options.connectTimeout = Duration(seconds: 20);
  dio.options.receiveTimeout = Duration(seconds: 20);
  dio.options.headers["Authorization"] =
      "Bearer 7b950b29e61cace011a4a91e2a2c57a4aad5455f";
  dio.options.headers["Content-Type"] = "application/json";
  dio.options.headers["Accept"] = "application/json";
  dio.interceptors.add(LogInterceptor(
    error: true,
    request: true,
    requestBody: true,
    responseBody: true,
    requestHeader: false,
    responseHeader: false,
  ));
  return dio;
}
