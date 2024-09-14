// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist/edit_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditPlaylistReq _$EditPlaylistReqFromJson(Map<String, dynamic> json) {
  return _EditPlaylistReq.fromJson(json);
}

/// @nodoc
mixin _$EditPlaylistReq {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get qrCode => throw _privateConstructorUsedError;
  String? get playlistId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditPlaylistReqCopyWith<EditPlaylistReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPlaylistReqCopyWith<$Res> {
  factory $EditPlaylistReqCopyWith(
          EditPlaylistReq value, $Res Function(EditPlaylistReq) then) =
      _$EditPlaylistReqCopyWithImpl<$Res, EditPlaylistReq>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? image,
      String? qrCode,
      String? playlistId});
}

/// @nodoc
class _$EditPlaylistReqCopyWithImpl<$Res, $Val extends EditPlaylistReq>
    implements $EditPlaylistReqCopyWith<$Res> {
  _$EditPlaylistReqCopyWithImpl(this._value, this._then);

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
    Object? playlistId = freezed,
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
      playlistId: freezed == playlistId
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditPlaylistReqImplCopyWith<$Res>
    implements $EditPlaylistReqCopyWith<$Res> {
  factory _$$EditPlaylistReqImplCopyWith(_$EditPlaylistReqImpl value,
          $Res Function(_$EditPlaylistReqImpl) then) =
      __$$EditPlaylistReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      String? image,
      String? qrCode,
      String? playlistId});
}

/// @nodoc
class __$$EditPlaylistReqImplCopyWithImpl<$Res>
    extends _$EditPlaylistReqCopyWithImpl<$Res, _$EditPlaylistReqImpl>
    implements _$$EditPlaylistReqImplCopyWith<$Res> {
  __$$EditPlaylistReqImplCopyWithImpl(
      _$EditPlaylistReqImpl _value, $Res Function(_$EditPlaylistReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? qrCode = freezed,
    Object? playlistId = freezed,
  }) {
    return _then(_$EditPlaylistReqImpl(
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
      playlistId: freezed == playlistId
          ? _value.playlistId
          : playlistId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditPlaylistReqImpl implements _EditPlaylistReq {
  const _$EditPlaylistReqImpl(
      {this.title, this.description, this.image, this.qrCode, this.playlistId});

  factory _$EditPlaylistReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditPlaylistReqImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? qrCode;
  @override
  final String? playlistId;

  @override
  String toString() {
    return 'EditPlaylistReq(title: $title, description: $description, image: $image, qrCode: $qrCode, playlistId: $playlistId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPlaylistReqImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode) &&
            (identical(other.playlistId, playlistId) ||
                other.playlistId == playlistId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, image, qrCode, playlistId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPlaylistReqImplCopyWith<_$EditPlaylistReqImpl> get copyWith =>
      __$$EditPlaylistReqImplCopyWithImpl<_$EditPlaylistReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditPlaylistReqImplToJson(
      this,
    );
  }
}

abstract class _EditPlaylistReq implements EditPlaylistReq {
  const factory _EditPlaylistReq(
      {final String? title,
      final String? description,
      final String? image,
      final String? qrCode,
      final String? playlistId}) = _$EditPlaylistReqImpl;

  factory _EditPlaylistReq.fromJson(Map<String, dynamic> json) =
      _$EditPlaylistReqImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get qrCode;
  @override
  String? get playlistId;
  @override
  @JsonKey(ignore: true)
  _$$EditPlaylistReqImplCopyWith<_$EditPlaylistReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditPlaylistRes _$EditPlaylistResFromJson(Map<String, dynamic> json) {
  return _EditPlaylistRes.fromJson(json);
}

/// @nodoc
mixin _$EditPlaylistRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditPlaylistResCopyWith<EditPlaylistRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPlaylistResCopyWith<$Res> {
  factory $EditPlaylistResCopyWith(
          EditPlaylistRes value, $Res Function(EditPlaylistRes) then) =
      _$EditPlaylistResCopyWithImpl<$Res, EditPlaylistRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$EditPlaylistResCopyWithImpl<$Res, $Val extends EditPlaylistRes>
    implements $EditPlaylistResCopyWith<$Res> {
  _$EditPlaylistResCopyWithImpl(this._value, this._then);

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
abstract class _$$EditPlaylistResImplCopyWith<$Res>
    implements $EditPlaylistResCopyWith<$Res> {
  factory _$$EditPlaylistResImplCopyWith(_$EditPlaylistResImpl value,
          $Res Function(_$EditPlaylistResImpl) then) =
      __$$EditPlaylistResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$EditPlaylistResImplCopyWithImpl<$Res>
    extends _$EditPlaylistResCopyWithImpl<$Res, _$EditPlaylistResImpl>
    implements _$$EditPlaylistResImplCopyWith<$Res> {
  __$$EditPlaylistResImplCopyWithImpl(
      _$EditPlaylistResImpl _value, $Res Function(_$EditPlaylistResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$EditPlaylistResImpl(
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
class _$EditPlaylistResImpl implements _EditPlaylistRes {
  const _$EditPlaylistResImpl({this.success, this.message, this.body});

  factory _$EditPlaylistResImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditPlaylistResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'EditPlaylistRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPlaylistResImpl &&
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
  _$$EditPlaylistResImplCopyWith<_$EditPlaylistResImpl> get copyWith =>
      __$$EditPlaylistResImplCopyWithImpl<_$EditPlaylistResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditPlaylistResImplToJson(
      this,
    );
  }
}

abstract class _EditPlaylistRes implements EditPlaylistRes {
  const factory _EditPlaylistRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$EditPlaylistResImpl;

  factory _EditPlaylistRes.fromJson(Map<String, dynamic> json) =
      _$EditPlaylistResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$EditPlaylistResImplCopyWith<_$EditPlaylistResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
