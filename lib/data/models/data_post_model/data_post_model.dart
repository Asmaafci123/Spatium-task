import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
part 'data_post_model.freezed.dart';
part 'data_post_model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class DataPostModel with _$DataPostModel{
  factory DataPostModel(
      {
        @HiveField(0)  final String? selftext,
        @HiveField(1)  final String? title,
        @HiveField(2)  final String? url,
      }) =_DataPostModel;
  factory DataPostModel.fromJson(Map<String, dynamic> json) =>
      _$DataPostModelFromJson(json);
}
