import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'core/utils/services/dio_client.dart';
import 'data/datasources/remote_data_source.dart';
import 'data/repositories/flutter_dev_repository.dart';
import 'logic/get_posts/get_posts_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! blocs/cubits

  sl.registerFactory(() => GetPostsCubit(flutterDevRepository: sl()));

  //! Repositories
  sl.registerLazySingleton<FlutterDevRepository>(() => FlutterDevRepositoryImpl(
      remoteDataSource: sl(),
  ));

//! Datasources
  sl.registerLazySingleton<RemoteDataSource>(
          () => RemoteDataSourceImpl(client: sl()));

//! Core
  sl.registerLazySingleton(() => DioClient(sl()));
  sl.registerLazySingleton(() => Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout:  Duration(seconds: 60*1000),
    receiveTimeout:Duration(seconds: 60*1000),
  )));
}