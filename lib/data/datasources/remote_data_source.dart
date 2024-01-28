import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../core/utils/services/dio_client.dart';
import '../../core/constants/app_constants.dart';
import '../../core/constants/app_end_points.dart';
import '../models/responses/get_posts_response.dart';


abstract class RemoteDataSource {
  Future<GetPostsModelResponse> getPosts(
      {required PostCatTitle category, String? after});
}

class  RemoteDataSourceImpl  extends RemoteDataSource {
  final DioClient client;
  RemoteDataSourceImpl({required this.client});
  final String clientId = 'zSYLA4s8UzMBFssmhWcP6A';
  final String clientSecret = 'bjkE0J_pEXpq0Y4ItGWCKbCxMdXpMA';
  final String subreddit = 'FlutterDev';
  @override
  Future<GetPostsModelResponse> getPosts({
    required PostCatTitle category,
    String? after
  }) async {
    String cat=category.name.toLowerCase().toString();
    String url='${AppEndpoints.baseUrl}/$cat.json';
    final response = await client.request(
        url: url,
        method: HttpMethod.GET,
      queryParameters: {
          "after":after
      },
      options: Options(
        headers: {
          'Authorization': 'Basic $clientId:$clientSecret',
        },
      ));
    return GetPostsModelResponse.fromJson(response.data);
  }

}