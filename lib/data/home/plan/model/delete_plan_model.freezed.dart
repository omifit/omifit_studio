// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeletePlanRes _$DeletePlanResFromJson(Map<String, dynamic> json) {
  return _DeletePlanRes.fromJson(json);
}

/// @nodoc
mixin _$DeletePlanRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeletePlanResCopyWith<DeletePlanRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletePlanResCopyWith<$Res> {
  factory $DeletePlanResCopyWith(
          DeletePlanRes value, $Res Function(DeletePlanRes) then) =
      _$DeletePlanResCopyWithImpl<$Res, DeletePlanRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$DeletePlanResCopyWithImpl<$Res, $Val extends DeletePlanRes>
    implements $DeletePlanResCopyWith<$Res> {
  _$DeletePlanResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeletePlanResImplCopyWith<$Res>
    implements $DeletePlanResCopyWith<$Res> {
  factory _$$DeletePlanResImplCopyWith(
          _$DeletePlanResImpl value, $Res Function(_$DeletePlanResImpl) then) =
      __$$DeletePlanResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$DeletePlanResImplCopyWithImpl<$Res>
    extends _$DeletePlanResCopyWithImpl<$Res, _$DeletePlanResImpl>
    implements _$$DeletePlanResImplCopyWith<$Res> {
  __$$DeletePlanResImplCopyWithImpl(
      _$DeletePlanResImpl _value, $Res Function(_$DeletePlanResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$DeletePlanResImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletePlanResImpl implements _DeletePlanRes {
  const _$DeletePlanResImpl({this.success, this.message, this.body});

  factory _$DeletePlanResImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeletePlanResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'DeletePlanRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletePlanResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, message, const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletePlanResImplCopyWith<_$DeletePlanResImpl> get copyWith =>
      __$$DeletePlanResImplCopyWithImpl<_$DeletePlanResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletePlanResImplToJson(
      this,
    );
  }
}

abstract class _DeletePlanRes implements DeletePlanRes {
  const factory _DeletePlanRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$DeletePlanResImpl;

  factory _DeletePlanRes.fromJson(Map<String, dynamic> json) =
      _$DeletePlanResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$DeletePlanResImplCopyWith<_$DeletePlanResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
