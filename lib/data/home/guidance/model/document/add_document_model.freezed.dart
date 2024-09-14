// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddDocumentReq _$AddDocumentReqFromJson(Map<String, dynamic> json) {
  return _AddDocumentReq.fromJson(json);
}

/// @nodoc
mixin _$AddDocumentReq {
  String? get title => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get playlistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddDocumentReqCopyWith<AddDocumentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDocumentReqCopyWith<$Res> {
  factory $AddDocumentReqCopyWith(
          AddDocumentReq value, $Res Function(AddDocumentReq) then) =
      _$AddDocumentReqCopyWithImpl<$Res, AddDocumentReq>;
  @useResult
  $Res call(
      {String? title,
      String? file,
      String? contentType,
      String? thumbnail,
      String? duration,
      String? playlistId});
}

/// @nodoc
class _$AddDocumentReqCopyWithImpl<$Res, $Val extends AddDocumentReq>
    implements $AddDocumentReqCopyWith<$Res> {
  _$AddDocumentReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? file = freezed,
    Object? contentType = freezed,
    Object? thumbnail = freezed,
    Object? duration = freezed,
    Object? playlistId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      playlistId: freezed == playlistId
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddDocumentReqImplCopyWith<$Res>
    implements $AddDocumentReqCopyWith<$Res> {
  factory _$$AddDocumentReqImplCopyWith(_$AddDocumentReqImpl value,
          $Res Function(_$AddDocumentReqImpl) then) =
      __$$AddDocumentReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? file,
      String? contentType,
      String? thumbnail,
      String? duration,
      String? playlistId});
}

/// @nodoc
class __$$AddDocumentReqImplCopyWithImpl<$Res>
    extends _$AddDocumentReqCopyWithImpl<$Res, _$AddDocumentReqImpl>
    implements _$$AddDocumentReqImplCopyWith<$Res> {
  __$$AddDocumentReqImplCopyWithImpl(
      _$AddDocumentReqImpl _value, $Res Function(_$AddDocumentReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? file = freezed,
    Object? contentType = freezed,
    Object? thumbnail = freezed,
    Object? duration = freezed,
    Object? playlistId = freezed,
  }) {
    return _then(_$AddDocumentReqImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      contentType: freezed == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      playlistId: freezed == playlistId
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddDocumentReqImpl implements _AddDocumentReq {
  const _$AddDocumentReqImpl(
      {this.title,
      this.file,
      this.contentType,
      this.thumbnail,
      this.duration,
      this.playlistId});

  factory _$AddDocumentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddDocumentReqImplFromJson(json);

  @override
  final String? title;
  @override
  final String? file;
  @override
  final String? contentType;
  @override
  final String? thumbnail;
  @override
  final String? duration;
  @override
  final String? playlistId;

  @override
  String toString() {
    return 'AddDocumentReq(title: $title, file: $file, contentType: $contentType, thumbnail: $thumbnail, duration: $duration, playlistId: $playlistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDocumentReqImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, file, contentType, thumbnail, duration, playlistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddDocumentReqImplCopyWith<_$AddDocumentReqImpl> get copyWith =>
      __$$AddDocumentReqImplCopyWithImpl<_$AddDocumentReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddDocumentReqImplToJson(
      this,
    );
  }
}

abstract class _AddDocumentReq implements AddDocumentReq {
  const factory _AddDocumentReq(
      {final String? title,
      final String? file,
      final String? contentType,
      final String? thumbnail,
      final String? duration,
      final String? playlistId}) = _$AddDocumentReqImpl;

  factory _AddDocumentReq.fromJson(Map<String, dynamic> json) =
      _$AddDocumentReqImpl.fromJson;

  @override
  String? get title;
  @override
  String? get file;
  @override
  String? get contentType;
  @override
  String? get thumbnail;
  @override
  String? get duration;
  @override
  String? get playlistId;
  @override
  @JsonKey(ignore: true)
  _$$AddDocumentReqImplCopyWith<_$AddDocumentReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddDocumentRes _$AddDocumentResFromJson(Map<String, dynamic> json) {
  return _AddDocumentRes.fromJson(json);
}

/// @nodoc
mixin _$AddDocumentRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddDocumentResCopyWith<AddDocumentRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddDocumentResCopyWith<$Res> {
  factory $AddDocumentResCopyWith(
          AddDocumentRes value, $Res Function(AddDocumentRes) then) =
      _$AddDocumentResCopyWithImpl<$Res, AddDocumentRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$AddDocumentResCopyWithImpl<$Res, $Val extends AddDocumentRes>
    implements $AddDocumentResCopyWith<$Res> {
  _$AddDocumentResCopyWithImpl(this._value, this._then);

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
abstract class _$$AddDocumentResImplCopyWith<$Res>
    implements $AddDocumentResCopyWith<$Res> {
  factory _$$AddDocumentResImplCopyWith(_$AddDocumentResImpl value,
          $Res Function(_$AddDocumentResImpl) then) =
      __$$AddDocumentResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$AddDocumentResImplCopyWithImpl<$Res>
    extends _$AddDocumentResCopyWithImpl<$Res, _$AddDocumentResImpl>
    implements _$$AddDocumentResImplCopyWith<$Res> {
  __$$AddDocumentResImplCopyWithImpl(
      _$AddDocumentResImpl _value, $Res Function(_$AddDocumentResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$AddDocumentResImpl(
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
class _$AddDocumentResImpl implements _AddDocumentRes {
  const _$AddDocumentResImpl({this.success, this.message, this.body});

  factory _$AddDocumentResImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddDocumentResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'AddDocumentRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDocumentResImpl &&
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
  _$$AddDocumentResImplCopyWith<_$AddDocumentResImpl> get copyWith =>
      __$$AddDocumentResImplCopyWithImpl<_$AddDocumentResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddDocumentResImplToJson(
      this,
    );
  }
}

abstract class _AddDocumentRes implements AddDocumentRes {
  const factory _AddDocumentRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$AddDocumentResImpl;

  factory _AddDocumentRes.fromJson(Map<String, dynamic> json) =
      _$AddDocumentResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$AddDocumentResImplCopyWith<_$AddDocumentResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
