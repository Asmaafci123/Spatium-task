import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import '../children_model/children_model.dart';
part 'data_model.freezed.dart';
part 'data_model.g.dart';

@HiveType(typeId: 1) // unique id
@unfreezed
class DataModel with _$DataModel{
  factory DataModel(
      {
        @HiveField(0) final String? after,
        @HiveField(1) final List<ChildrenModel>?children,
      }) =_DataModel ;
  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}
