import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../data_post_model/data_post_model.dart';
part 'children_model.freezed.dart';
part 'children_model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class ChildrenModel with _$ChildrenModel{
  factory ChildrenModel(
      {
        @HiveField(0)  final DataPostModel? data
      }) =_ChildrenModel;
  factory ChildrenModel.fromJson(Map<String, dynamic> json) =>
      _$ChildrenModelFromJson(json);
}
