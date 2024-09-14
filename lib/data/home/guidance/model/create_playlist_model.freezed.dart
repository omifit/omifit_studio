// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist/create_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePlaylistReq _$CreatePlaylistReqFromJson(Map<String, dynamic> json) {
  return _CreatePlaylistReq.fromJson(json);
}

/// @nodoc
mixin _$CreatePlaylistReq {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePlaylistReqCopyWith<CreatePlaylistReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlaylistReqCopyWith<$Res> {
  factory $CreatePlaylistReqCopyWith(
          CreatePlaylistReq value, $Res Function(CreatePlaylistReq) then) =
      _$CreatePlaylistReqCopyWithImpl<$Res, CreatePlaylistReq>;
  @useResult
  $Res call(
      {String? title, String? description, String? image, String? qrCode});
}

/// @nodoc
class _$CreatePlaylistReqCopyWithImpl<$Res, $Val extends CreatePlaylistReq>
    implements $CreatePlaylistReqCopyWith<$Res> {
  _$CreatePlaylistReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePlaylistReqImplCopyWith<$Res>
    implements $CreatePlaylistReqCopyWith<$Res> {
  factory _$$CreatePlaylistReqImplCopyWith(_$CreatePlaylistReqImpl value,
          $Res Function(_$CreatePlaylistReqImpl) then) =
      __$$CreatePlaylistReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title, String? description, String? image, String? qrCode});
}

/// @nodoc
class __$$CreatePlaylistReqImplCopyWithImpl<$Res>
    extends _$CreatePlaylistReqCopyWithImpl<$Res, _$CreatePlaylistReqImpl>
    implements _$$CreatePlaylistReqImplCopyWith<$Res> {
  __$$CreatePlaylistReqImplCopyWithImpl(_$CreatePlaylistReqImpl _value,
      $Res Function(_$CreatePlaylistReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$CreatePlaylistReqImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePlaylistReqImpl implements _CreatePlaylistReq {
  const _$CreatePlaylistReqImpl(
      {this.title, this.description, this.image, this.qrCode});

  factory _$CreatePlaylistReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlaylistReqImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? qrCode;

  @override
  String toString() {
    return 'CreatePlaylistReq(title: $title, description: $description, image: $image, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlaylistReqImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, image, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlaylistReqImplCopyWith<_$CreatePlaylistReqImpl> get copyWith =>
      __$$CreatePlaylistReqImplCopyWithImpl<_$CreatePlaylistReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePlaylistReqImplToJson(
      this,
    );
  }
}

abstract class _CreatePlaylistReq implements CreatePlaylistReq {
  const factory _CreatePlaylistReq(
      {final String? title,
      final String? description,
      final String? image,
      final String? qrCode}) = _$CreatePlaylistReqImpl;

  factory _CreatePlaylistReq.fromJson(Map<String, dynamic> json) =
      _$CreatePlaylistReqImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$CreatePlaylistReqImplCopyWith<_$CreatePlaylistReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePlaylistRes _$CreatePlaylistResFromJson(Map<String, dynamic> json) {
  return _CreatePlaylistRes.fromJson(json);
}

/// @nodoc
mixin _$CreatePlaylistRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePlaylistResCopyWith<CreatePlaylistRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePlaylistResCopyWith<$Res> {
  factory $CreatePlaylistResCopyWith(
          CreatePlaylistRes value, $Res Function(CreatePlaylistRes) then) =
      _$CreatePlaylistResCopyWithImpl<$Res, CreatePlaylistRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$CreatePlaylistResCopyWithImpl<$Res, $Val extends CreatePlaylistRes>
    implements $CreatePlaylistResCopyWith<$Res> {
  _$CreatePlaylistResCopyWithImpl(this._value, this._then);

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
abstract class _$$CreatePlaylistResImplCopyWith<$Res>
    implements $CreatePlaylistResCopyWith<$Res> {
  factory _$$CreatePlaylistResImplCopyWith(_$CreatePlaylistResImpl value,
          $Res Function(_$CreatePlaylistResImpl) then) =
      __$$CreatePlaylistResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$CreatePlaylistResImplCopyWithImpl<$Res>
    extends _$CreatePlaylistResCopyWithImpl<$Res, _$CreatePlaylistResImpl>
    implements _$$CreatePlaylistResImplCopyWith<$Res> {
  __$$CreatePlaylistResImplCopyWithImpl(_$CreatePlaylistResImpl _value,
      $Res Function(_$CreatePlaylistResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$CreatePlaylistResImpl(
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
class _$CreatePlaylistResImpl implements _CreatePlaylistRes {
  const _$CreatePlaylistResImpl({this.success, this.message, this.body});

  factory _$CreatePlaylistResImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePlaylistResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'CreatePlaylistRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlaylistResImpl &&
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
  _$$CreatePlaylistResImplCopyWith<_$CreatePlaylistResImpl> get copyWith =>
      __$$CreatePlaylistResImplCopyWithImpl<_$CreatePlaylistResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePlaylistResImplToJson(
      this,
    );
  }
}

abstract class _CreatePlaylistRes implements CreatePlaylistRes {
  const factory _CreatePlaylistRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$CreatePlaylistResImpl;

  factory _CreatePlaylistRes.fromJson(Map<String, dynamic> json) =
      _$CreatePlaylistResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$CreatePlaylistResImplCopyWith<_$CreatePlaylistResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
