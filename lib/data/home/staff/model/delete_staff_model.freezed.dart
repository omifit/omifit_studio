// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_staff_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteStaffRes _$DeleteStaffResFromJson(Map<String, dynamic> json) {
  return _DeleteStaffRes.fromJson(json);
}

/// @nodoc
mixin _$DeleteStaffRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteStaffResCopyWith<DeleteStaffRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteStaffResCopyWith<$Res> {
  factory $DeleteStaffResCopyWith(
          DeleteStaffRes value, $Res Function(DeleteStaffRes) then) =
      _$DeleteStaffResCopyWithImpl<$Res, DeleteStaffRes>;
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class _$DeleteStaffResCopyWithImpl<$Res, $Val extends DeleteStaffRes>
    implements $DeleteStaffResCopyWith<$Res> {
  _$DeleteStaffResCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteStaffResImplCopyWith<$Res>
    implements $DeleteStaffResCopyWith<$Res> {
  factory _$$DeleteStaffResImplCopyWith(_$DeleteStaffResImpl value,
          $Res Function(_$DeleteStaffResImpl) then) =
      __$$DeleteStaffResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message});
}

/// @nodoc
class __$$DeleteStaffResImplCopyWithImpl<$Res>
    extends _$DeleteStaffResCopyWithImpl<$Res, _$DeleteStaffResImpl>
    implements _$$DeleteStaffResImplCopyWith<$Res> {
  __$$DeleteStaffResImplCopyWithImpl(
      _$DeleteStaffResImpl _value, $Res Function(_$DeleteStaffResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
  }) {
    return _then(_$DeleteStaffResImpl(
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
class _$DeleteStaffResImpl implements _DeleteStaffRes {
  const _$DeleteStaffResImpl({this.success, this.message});

  factory _$DeleteStaffResImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteStaffResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteStaffRes(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteStaffResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteStaffResImplCopyWith<_$DeleteStaffResImpl> get copyWith =>
      __$$DeleteStaffResImplCopyWithImpl<_$DeleteStaffResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteStaffResImplToJson(
      this,
    );
  }
}

abstract class _DeleteStaffRes implements DeleteStaffRes {
  const factory _DeleteStaffRes({final bool? success, final String? message}) =
      _$DeleteStaffResImpl;

  factory _DeleteStaffRes.fromJson(Map<String, dynamic> json) =
      _$DeleteStaffResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteStaffResImplCopyWith<_$DeleteStaffResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
