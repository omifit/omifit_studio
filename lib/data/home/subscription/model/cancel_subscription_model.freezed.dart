// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CancelSubscriptionRes _$CancelSubscriptionResFromJson(
    Map<String, dynamic> json) {
  return _CancelSubscriptionRes.fromJson(json);
}

/// @nodoc
mixin _$CancelSubscriptionRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CancelSubscriptionResCopyWith<CancelSubscriptionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelSubscriptionResCopyWith<$Res> {
  factory $CancelSubscriptionResCopyWith(CancelSubscriptionRes value,
          $Res Function(CancelSubscriptionRes) then) =
      _$CancelSubscriptionResCopyWithImpl<$Res, CancelSubscriptionRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$CancelSubscriptionResCopyWithImpl<$Res,
        $Val extends CancelSubscriptionRes>
    implements $CancelSubscriptionResCopyWith<$Res> {
  _$CancelSubscriptionResCopyWithImpl(this._value, this._then);

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
abstract class _$$CancelSubscriptionResImplCopyWith<$Res>
    implements $CancelSubscriptionResCopyWith<$Res> {
  factory _$$CancelSubscriptionResImplCopyWith(
          _$CancelSubscriptionResImpl value,
          $Res Function(_$CancelSubscriptionResImpl) then) =
      __$$CancelSubscriptionResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$CancelSubscriptionResImplCopyWithImpl<$Res>
    extends _$CancelSubscriptionResCopyWithImpl<$Res,
        _$CancelSubscriptionResImpl>
    implements _$$CancelSubscriptionResImplCopyWith<$Res> {
  __$$CancelSubscriptionResImplCopyWithImpl(_$CancelSubscriptionResImpl _value,
      $Res Function(_$CancelSubscriptionResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$CancelSubscriptionResImpl(
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
class _$CancelSubscriptionResImpl implements _CancelSubscriptionRes {
  const _$CancelSubscriptionResImpl({this.success, this.message, this.body});

  factory _$CancelSubscriptionResImpl.fromJson(Map<String, dynamic> json) =>
      _$$CancelSubscriptionResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'CancelSubscriptionRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelSubscriptionResImpl &&
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
  _$$CancelSubscriptionResImplCopyWith<_$CancelSubscriptionResImpl>
      get copyWith => __$$CancelSubscriptionResImplCopyWithImpl<
          _$CancelSubscriptionResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CancelSubscriptionResImplToJson(
      this,
    );
  }
}

abstract class _CancelSubscriptionRes implements CancelSubscriptionRes {
  const factory _CancelSubscriptionRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$CancelSubscriptionResImpl;

  factory _CancelSubscriptionRes.fromJson(Map<String, dynamic> json) =
      _$CancelSubscriptionResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$CancelSubscriptionResImplCopyWith<_$CancelSubscriptionResImpl>
      get copyWith => throw _privateConstructorUsedError;
}
