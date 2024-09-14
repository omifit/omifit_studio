// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteDocumentRes _$DeleteDocumentResFromJson(Map<String, dynamic> json) {
  return _DeleteDocumentRes.fromJson(json);
}

/// @nodoc
mixin _$DeleteDocumentRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteDocumentResCopyWith<DeleteDocumentRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteDocumentResCopyWith<$Res> {
  factory $DeleteDocumentResCopyWith(
          DeleteDocumentRes value, $Res Function(DeleteDocumentRes) then) =
      _$DeleteDocumentResCopyWithImpl<$Res, DeleteDocumentRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$DeleteDocumentResCopyWithImpl<$Res, $Val extends DeleteDocumentRes>
    implements $DeleteDocumentResCopyWith<$Res> {
  _$DeleteDocumentResCopyWithImpl(this._value, this._then);

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
abstract class _$$DeleteDocumentResImplCopyWith<$Res>
    implements $DeleteDocumentResCopyWith<$Res> {
  factory _$$DeleteDocumentResImplCopyWith(_$DeleteDocumentResImpl value,
          $Res Function(_$DeleteDocumentResImpl) then) =
      __$$DeleteDocumentResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$DeleteDocumentResImplCopyWithImpl<$Res>
    extends _$DeleteDocumentResCopyWithImpl<$Res, _$DeleteDocumentResImpl>
    implements _$$DeleteDocumentResImplCopyWith<$Res> {
  __$$DeleteDocumentResImplCopyWithImpl(_$DeleteDocumentResImpl _value,
      $Res Function(_$DeleteDocumentResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$DeleteDocumentResImpl(
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
class _$DeleteDocumentResImpl implements _DeleteDocumentRes {
  const _$DeleteDocumentResImpl({this.success, this.message, this.body});

  factory _$DeleteDocumentResImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteDocumentResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'DeleteDocumentRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDocumentResImpl &&
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
  _$$DeleteDocumentResImplCopyWith<_$DeleteDocumentResImpl> get copyWith =>
      __$$DeleteDocumentResImplCopyWithImpl<_$DeleteDocumentResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteDocumentResImplToJson(
      this,
    );
  }
}

abstract class _DeleteDocumentRes implements DeleteDocumentRes {
  const factory _DeleteDocumentRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$DeleteDocumentResImpl;

  factory _DeleteDocumentRes.fromJson(Map<String, dynamic> json) =
      _$DeleteDocumentResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$DeleteDocumentResImplCopyWith<_$DeleteDocumentResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
