import 'package:dartz/dartz.dart';
import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../datasources/remote_data_source.dart';
import '../models/responses/get_posts_response.dart';

abstract class FlutterDevRepository {
  Future<Either<Failure,GetPostsModelResponse>> getPosts(
      { required String category});
}

class FlutterDevRepositoryImpl extends FlutterDevRepository {
  final RemoteDataSource remoteDataSource;
  //final  DeviceConnectivity deviceConnectivity;

  FlutterDevRepositoryImpl({
    required this.remoteDataSource,
    //required this.deviceConnectivity,
  });

  @override
  Future<Either<Failure,GetPostsModelResponse>>getPosts(
      { required String category})
  async {
    // if (await deviceConnectivity.isConnected == false) {
    //   return Left(DeviceConnectivityFailure(message: AppStrings.checkYourNetwork.tr()));
    // }
    try {
      GetPostsModelResponse result = await remoteDataSource.getPosts(category: category);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    }
  }

}
