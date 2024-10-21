// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_member_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteMemberRes _$DeleteMemberResFromJson(Map<String, dynamic> json) {
  return _DeleteMemberRes.fromJson(json);
}

/// @nodoc
mixin _$DeleteMemberRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteMemberResCopyWith<DeleteMemberRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMemberResCopyWith<$Res> {
  factory $DeleteMemberResCopyWith(
          DeleteMemberRes value, $Res Function(DeleteMemberRes) then) =
      _$DeleteMemberResCopyWithImpl<$Res, DeleteMemberRes>;
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class _$DeleteMemberResCopyWithImpl<$Res, $Val extends DeleteMemberRes>
    implements $DeleteMemberResCopyWith<$Res> {
  _$DeleteMemberResCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteMemberResImplCopyWith<$Res>
    implements $DeleteMemberResCopyWith<$Res> {
  factory _$$DeleteMemberResImplCopyWith(_$DeleteMemberResImpl value,
          $Res Function(_$DeleteMemberResImpl) then) =
      __$$DeleteMemberResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class __$$DeleteMemberResImplCopyWithImpl<$Res>
    extends _$DeleteMemberResCopyWithImpl<$Res, _$DeleteMemberResImpl>
    implements _$$DeleteMemberResImplCopyWith<$Res> {
  __$$DeleteMemberResImplCopyWithImpl(
      _$DeleteMemberResImpl _value, $Res Function(_$DeleteMemberResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DeleteMemberResImpl(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteMemberResImpl implements _DeleteMemberRes {
  const _$DeleteMemberResImpl({this.success, this.message});

  factory _$DeleteMemberResImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteMemberResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteMemberRes(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMemberResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMemberResImplCopyWith<_$DeleteMemberResImpl> get copyWith =>
      __$$DeleteMemberResImplCopyWithImpl<_$DeleteMemberResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteMemberResImplToJson(
      this,
    );
  }
}

abstract class _DeleteMemberRes implements DeleteMemberRes {
  const factory _DeleteMemberRes({final bool? success, final String? message}) =
      _$DeleteMemberResImpl;

  factory _DeleteMemberRes.fromJson(Map<String, dynamic> json) =
      _$DeleteMemberResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteMemberResImplCopyWith<_$DeleteMemberResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
