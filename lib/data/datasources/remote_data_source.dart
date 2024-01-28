import 'package:dio/dio.dart';

import '../../../core/utils/services/dio_client.dart';
import '../../core/constants/app_end_points.dart';
import '../models/responses/get_posts_response.dart';


abstract class RemoteDataSource {
  Future<GetPostsModelResponse> getPosts(
      {required String category});
}

class  RemoteDataSourceImpl  extends RemoteDataSource {
  final DioClient client;
  RemoteDataSourceImpl({required this.client});
  final String clientId = 'zSYLA4s8UzMBFssmhWcP6A';
  final String clientSecret = 'bjkE0J_pEXpq0Y4ItGWCKbCxMdXpMA';
  final String subreddit = 'FlutterDev';
  @override
  Future<GetPostsModelResponse> getPosts({
    required String category
  }) async {
    String url='${AppEndpoints.baseUrl}/$category.json';
    final response = await client.request(
        url: url,
        method: HttpMethod.GET,
      options: Options(
        headers: {
          'Authorization': 'Basic $clientId:$clientSecret',
        },
      )
        );
    print("111111111111111111111111111");
    print(response.data);
    print("111111111111111111111111111");
    return GetPostsModelResponse.fromJson(response.data);
  }

}