// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataPostModel _$DataPostModelFromJson(Map<String, dynamic> json) {
  return _DataPostModel.fromJson(json);
}

/// @nodoc
mixin _$DataPostModel {
  @HiveField(0)
  String? get selftext => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataPostModelCopyWith<DataPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataPostModelCopyWith<$Res> {
  factory $DataPostModelCopyWith(
          DataPostModel value, $Res Function(DataPostModel) then) =
      _$DataPostModelCopyWithImpl<$Res, DataPostModel>;
  @useResult
  $Res call(
      {@HiveField(0) String? selftext,
      @HiveField(1) String? title,
      @HiveField(2) String? url});
}

/// @nodoc
class _$DataPostModelCopyWithImpl<$Res, $Val extends DataPostModel>
    implements $DataPostModelCopyWith<$Res> {
  _$DataPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selftext = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataPostModelImplCopyWith<$Res>
    implements $DataPostModelCopyWith<$Res> {
  factory _$$DataPostModelImplCopyWith(
          _$DataPostModelImpl value, $Res Function(_$DataPostModelImpl) then) =
      __$$DataPostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String? selftext,
      @HiveField(1) String? title,
      @HiveField(2) String? url});
}

/// @nodoc
class __$$DataPostModelImplCopyWithImpl<$Res>
    extends _$DataPostModelCopyWithImpl<$Res, _$DataPostModelImpl>
    implements _$$DataPostModelImplCopyWith<$Res> {
  __$$DataPostModelImplCopyWithImpl(
      _$DataPostModelImpl _value, $Res Function(_$DataPostModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selftext = freezed,
    Object? title = freezed,
    Object? url = freezed,
  }) {
    return _then(_$DataPostModelImpl(
      selftext: freezed == selftext
          ? _value.selftext
          : selftext // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataPostModelImpl implements _DataPostModel {
  _$DataPostModelImpl(
      {@HiveField(0) this.selftext,
      @HiveField(1) this.title,
      @HiveField(2) this.url});

  factory _$DataPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataPostModelImplFromJson(json);

  @override
  @HiveField(0)
  final String? selftext;
  @override
  @HiveField(1)
  final String? title;
  @override
  @HiveField(2)
  final String? url;

  @override
  String toString() {
    return 'DataPostModel(selftext: $selftext, title: $title, url: $url)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataPostModelImplCopyWith<_$DataPostModelImpl> get copyWith =>
      __$$DataPostModelImplCopyWithImpl<_$DataPostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataPostModelImplToJson(
      this,
    );
  }
}

abstract class _DataPostModel implements DataPostModel {
  factory _DataPostModel(
      {@HiveField(0) final String? selftext,
      @HiveField(1) final String? title,
      @HiveField(2) final String? url}) = _$DataPostModelImpl;

  factory _DataPostModel.fromJson(Map<String, dynamic> json) =
      _$DataPostModelImpl.fromJson;

  @override
  @HiveField(0)
  String? get selftext;
  @override
  @HiveField(1)
  String? get title;
  @override
  @HiveField(2)
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$DataPostModelImplCopyWith<_$DataPostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
