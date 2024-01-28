import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../core/utils/services/dio_client.dart';
import '../../core/constants/app_constants.dart';
import '../../core/constants/app_end_points.dart';
import '../models/responses/get_posts_response.dart';


abstract class RemoteDataSource {
  Future<GetPostsModelResponse> getPosts(
      {required PostCat category});
}

class  RemoteDataSourceImpl  extends RemoteDataSource {
  final DioClient client;
  RemoteDataSourceImpl({required this.client});
  final String clientId = 'zSYLA4s8UzMBFssmhWcP6A';
  final String clientSecret = 'bjkE0J_pEXpq0Y4ItGWCKbCxMdXpMA';
  final String subreddit = 'FlutterDev';
  @override
  Future<GetPostsModelResponse> getPosts({
    required PostCat category
  }) async {
    print("!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@###########");
    print(category);
    print("!!!!!!!!!!!!!!!!@@@@@@@@@@@@@@@###########");
    String cat="";
    switch (category) {
      case PostCat.New:
        cat="new";
        break;
      case PostCat.hot:
        cat="hot";
        break;
      case PostCat.rising:
        cat="rising";
        break;
    }
    print(cat);
    String url='${AppEndpoints.baseUrl}/$cat.json';
    final response = await client.request(
        url: url,
        method: HttpMethod.GET,
      options: Options(
        headers: {
          'Authorization': 'Basic $clientId:$clientSecret',
        },
      )
        );
    return GetPostsModelResponse.fromJson(response.data);
  }

}