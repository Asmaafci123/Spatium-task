// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPostsModelResponseImpl _$$GetPostsModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsModelResponseImpl(
      kind: json['kind'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetPostsModelResponseImplToJson(
        _$GetPostsModelResponseImpl instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
