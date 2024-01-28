// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetPostsModelResponse _$GetPostsModelResponseFromJson(
    Map<String, dynamic> json) {
  return _GetPostsModelResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPostsModelResponse {
  @HiveField(0)
  String? get kind => throw _privateConstructorUsedError;
  @HiveField(1)
  DataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetPostsModelResponseCopyWith<GetPostsModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsModelResponseCopyWith<$Res> {
  factory $GetPostsModelResponseCopyWith(GetPostsModelResponse value,
          $Res Function(GetPostsModelResponse) then) =
      _$GetPostsModelResponseCopyWithImpl<$Res, GetPostsModelResponse>;
  @useResult
  $Res call({@HiveField(0) String? kind, @HiveField(1) DataModel? data});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetPostsModelResponseCopyWithImpl<$Res,
        $Val extends GetPostsModelResponse>
    implements $GetPostsModelResponseCopyWith<$Res> {
  _$GetPostsModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetPostsModelResponseImplCopyWith<$Res>
    implements $GetPostsModelResponseCopyWith<$Res> {
  factory _$$GetPostsModelResponseImplCopyWith(
          _$GetPostsModelResponseImpl value,
          $Res Function(_$GetPostsModelResponseImpl) then) =
      __$$GetPostsModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String? kind, @HiveField(1) DataModel? data});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetPostsModelResponseImplCopyWithImpl<$Res>
    extends _$GetPostsModelResponseCopyWithImpl<$Res,
        _$GetPostsModelResponseImpl>
    implements _$$GetPostsModelResponseImplCopyWith<$Res> {
  __$$GetPostsModelResponseImplCopyWithImpl(_$GetPostsModelResponseImpl _value,
      $Res Function(_$GetPostsModelResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kind = freezed,
    Object? data = freezed,
  }) {
    return _then(_$GetPostsModelResponseImpl(
      kind: freezed == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPostsModelResponseImpl implements _GetPostsModelResponse {
  _$GetPostsModelResponseImpl(
      {@HiveField(0) this.kind, @HiveField(1) this.data});

  factory _$GetPostsModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPostsModelResponseImplFromJson(json);

  @override
  @HiveField(0)
  final String? kind;
  @override
  @HiveField(1)
  final DataModel? data;

  @override
  String toString() {
    return 'GetPostsModelResponse(kind: $kind, data: $data)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsModelResponseImplCopyWith<_$GetPostsModelResponseImpl>
      get copyWith => __$$GetPostsModelResponseImplCopyWithImpl<
          _$GetPostsModelResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostsModelResponseImplToJson(
      this,
    );
  }
}

abstract class _GetPostsModelResponse implements GetPostsModelResponse {
  factory _GetPostsModelResponse(
      {@HiveField(0) final String? kind,
      @HiveField(1) final DataModel? data}) = _$GetPostsModelResponseImpl;

  factory _GetPostsModelResponse.fromJson(Map<String, dynamic> json) =
      _$GetPostsModelResponseImpl.fromJson;

  @override
  @HiveField(0)
  String? get kind;
  @override
  @HiveField(1)
  DataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetPostsModelResponseImplCopyWith<_$GetPostsModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
