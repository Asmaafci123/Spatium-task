// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'children_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChildrenModel _$ChildrenModelFromJson(Map<String, dynamic> json) {
  return _ChildrenModel.fromJson(json);
}

/// @nodoc
mixin _$ChildrenModel {
  @HiveField(0)
  DataPostModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildrenModelCopyWith<ChildrenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenModelCopyWith<$Res> {
  factory $ChildrenModelCopyWith(
          ChildrenModel value, $Res Function(ChildrenModel) then) =
      _$ChildrenModelCopyWithImpl<$Res, ChildrenModel>;
  @useResult
  $Res call({@HiveField(0) DataPostModel? data});

  $DataPostModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChildrenModelCopyWithImpl<$Res, $Val extends ChildrenModel>
    implements $ChildrenModelCopyWith<$Res> {
  _$ChildrenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataPostModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataPostModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataPostModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildrenModelImplCopyWith<$Res>
    implements $ChildrenModelCopyWith<$Res> {
  factory _$$ChildrenModelImplCopyWith(
          _$ChildrenModelImpl value, $Res Function(_$ChildrenModelImpl) then) =
      __$$ChildrenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) DataPostModel? data});

  @override
  $DataPostModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChildrenModelImplCopyWithImpl<$Res>
    extends _$ChildrenModelCopyWithImpl<$Res, _$ChildrenModelImpl>
    implements _$$ChildrenModelImplCopyWith<$Res> {
  __$$ChildrenModelImplCopyWithImpl(
      _$ChildrenModelImpl _value, $Res Function(_$ChildrenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ChildrenModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataPostModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildrenModelImpl implements _ChildrenModel {
  _$ChildrenModelImpl({@HiveField(0) this.data});

  factory _$ChildrenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildrenModelImplFromJson(json);

  @override
  @HiveField(0)
  final DataPostModel? data;

  @override
  String toString() {
    return 'ChildrenModel(data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenModelImplCopyWith<_$ChildrenModelImpl> get copyWith =>
      __$$ChildrenModelImplCopyWithImpl<_$ChildrenModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildrenModelImplToJson(
      this,
    );
  }
}

abstract class _ChildrenModel implements ChildrenModel {
  factory _ChildrenModel({@HiveField(0) final DataPostModel? data}) =
      _$ChildrenModelImpl;

  factory _ChildrenModel.fromJson(Map<String, dynamic> json) =
      _$ChildrenModelImpl.fromJson;

  @override
  @HiveField(0)
  DataPostModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ChildrenModelImplCopyWith<_$ChildrenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
