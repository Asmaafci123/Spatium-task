import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../data_model/data_model.dart';
part 'get_posts_response.freezed.dart';
part 'get_posts_response.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class GetPostsModelResponse with _$GetPostsModelResponse {
  factory GetPostsModelResponse(
      {

        @HiveField(0) final String? kind,
        @HiveField(1) final DataModel? data,
      }) =_GetPostsModelResponse ;
  factory GetPostsModelResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPostsModelResponseFromJson(json);
}
