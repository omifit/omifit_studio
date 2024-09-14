// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditDocumentReq _$EditDocumentReqFromJson(Map<String, dynamic> json) {
  return _EditDocumentReq.fromJson(json);
}

/// @nodoc
mixin _$EditDocumentReq {
  String? get title => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get contentType => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get playlistId => throw _privateConstructorUsedError;
  String? get documentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditDocumentReqCopyWith<EditDocumentReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditDocumentReqCopyWith<$Res> {
  factory $EditDocumentReqCopyWith(
          EditDocumentReq value, $Res Function(EditDocumentReq) then) =
      _$EditDocumentReqCopyWithImpl<$Res, EditDocumentReq>;
  @useResult
  $Res call(
      {String? title,
      String? file,
      String? contentType,
      String? thumbnail,
      String? duration,
      String? playlistId,
      String? documentId});
}

/// @nodoc
class _$EditDocumentReqCopyWithImpl<$Res, $Val extends EditDocumentReq>
    implements $EditDocumentReqCopyWith<$Res> {
  _$EditDocumentReqCopyWithImpl(this._value, this._then);

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
    Object? documentId = freezed,
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
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditDocumentReqImplCopyWith<$Res>
    implements $EditDocumentReqCopyWith<$Res> {
  factory _$$EditDocumentReqImplCopyWith(_$EditDocumentReqImpl value,
          $Res Function(_$EditDocumentReqImpl) then) =
      __$$EditDocumentReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? file,
      String? contentType,
      String? thumbnail,
      String? duration,
      String? playlistId,
      String? documentId});
}

/// @nodoc
class __$$EditDocumentReqImplCopyWithImpl<$Res>
    extends _$EditDocumentReqCopyWithImpl<$Res, _$EditDocumentReqImpl>
    implements _$$EditDocumentReqImplCopyWith<$Res> {
  __$$EditDocumentReqImplCopyWithImpl(
      _$EditDocumentReqImpl _value, $Res Function(_$EditDocumentReqImpl) _then)
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
    Object? documentId = freezed,
  }) {
    return _then(_$EditDocumentReqImpl(
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
      documentId: freezed == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditDocumentReqImpl implements _EditDocumentReq {
  const _$EditDocumentReqImpl(
      {this.title,
      this.file,
      this.contentType,
      this.thumbnail,
      this.duration,
      this.playlistId,
      this.documentId});

  factory _$EditDocumentReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditDocumentReqImplFromJson(json);

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
  final String? documentId;

  @override
  String toString() {
    return 'EditDocumentReq(title: $title, file: $file, contentType: $contentType, thumbnail: $thumbnail, duration: $duration, playlistId: $playlistId, documentId: $documentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditDocumentReqImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, file, contentType,
      thumbnail, duration, playlistId, documentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditDocumentReqImplCopyWith<_$EditDocumentReqImpl> get copyWith =>
      __$$EditDocumentReqImplCopyWithImpl<_$EditDocumentReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditDocumentReqImplToJson(
      this,
    );
  }
}

abstract class _EditDocumentReq implements EditDocumentReq {
  const factory _EditDocumentReq(
      {final String? title,
      final String? file,
      final String? contentType,
      final String? thumbnail,
      final String? duration,
      final String? playlistId,
      final String? documentId}) = _$EditDocumentReqImpl;

  factory _EditDocumentReq.fromJson(Map<String, dynamic> json) =
      _$EditDocumentReqImpl.fromJson;

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
  String? get documentId;
  @override
  @JsonKey(ignore: true)
  _$$EditDocumentReqImplCopyWith<_$EditDocumentReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditDocumentRes _$EditDocumentResFromJson(Map<String, dynamic> json) {
  return _EditDocumentRes.fromJson(json);
}

/// @nodoc
mixin _$EditDocumentRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditDocumentResCopyWith<EditDocumentRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditDocumentResCopyWith<$Res> {
  factory $EditDocumentResCopyWith(
          EditDocumentRes value, $Res Function(EditDocumentRes) then) =
      _$EditDocumentResCopyWithImpl<$Res, EditDocumentRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$EditDocumentResCopyWithImpl<$Res, $Val extends EditDocumentRes>
    implements $EditDocumentResCopyWith<$Res> {
  _$EditDocumentResCopyWithImpl(this._value, this._then);

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
abstract class _$$EditDocumentResImplCopyWith<$Res>
    implements $EditDocumentResCopyWith<$Res> {
  factory _$$EditDocumentResImplCopyWith(_$EditDocumentResImpl value,
          $Res Function(_$EditDocumentResImpl) then) =
      __$$EditDocumentResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$EditDocumentResImplCopyWithImpl<$Res>
    extends _$EditDocumentResCopyWithImpl<$Res, _$EditDocumentResImpl>
    implements _$$EditDocumentResImplCopyWith<$Res> {
  __$$EditDocumentResImplCopyWithImpl(
      _$EditDocumentResImpl _value, $Res Function(_$EditDocumentResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$EditDocumentResImpl(
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
class _$EditDocumentResImpl implements _EditDocumentRes {
  const _$EditDocumentResImpl({this.success, this.message, this.body});

  factory _$EditDocumentResImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditDocumentResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'EditDocumentRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditDocumentResImpl &&
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
  _$$EditDocumentResImplCopyWith<_$EditDocumentResImpl> get copyWith =>
      __$$EditDocumentResImplCopyWithImpl<_$EditDocumentResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditDocumentResImplToJson(
      this,
    );
  }
}

abstract class _EditDocumentRes implements EditDocumentRes {
  const factory _EditDocumentRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$EditDocumentResImpl;

  factory _EditDocumentRes.fromJson(Map<String, dynamic> json) =
      _$EditDocumentResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$EditDocumentResImplCopyWith<_$EditDocumentResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
