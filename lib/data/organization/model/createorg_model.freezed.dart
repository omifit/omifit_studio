// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'createorg_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateorgReq _$CreateorgReqFromJson(Map<String, dynamic> json) {
  return _CreateorgReq.fromJson(json);
}

/// @nodoc
mixin _$CreateorgReq {
  String? get name => throw _privateConstructorUsedError;
  String? get establishedDate => throw _privateConstructorUsedError;
  String? get organizationImage => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateorgReqCopyWith<CreateorgReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateorgReqCopyWith<$Res> {
  factory $CreateorgReqCopyWith(
          CreateorgReq value, $Res Function(CreateorgReq) then) =
      _$CreateorgReqCopyWithImpl<$Res, CreateorgReq>;
  @useResult
  $Res call(
      {String? name,
      String? establishedDate,
      String? organizationImage,
      String? address,
      double? latitude,
      double? longitude});
}

/// @nodoc
class _$CreateorgReqCopyWithImpl<$Res, $Val extends CreateorgReq>
    implements $CreateorgReqCopyWith<$Res> {
  _$CreateorgReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? establishedDate = freezed,
    Object? organizationImage = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      establishedDate: freezed == establishedDate
          ? _value.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationImage: freezed == organizationImage
          ? _value.organizationImage
          : organizationImage // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateorgReqImplCopyWith<$Res>
    implements $CreateorgReqCopyWith<$Res> {
  factory _$$CreateorgReqImplCopyWith(
          _$CreateorgReqImpl value, $Res Function(_$CreateorgReqImpl) then) =
      __$$CreateorgReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? establishedDate,
      String? organizationImage,
      String? address,
      double? latitude,
      double? longitude});
}

/// @nodoc
class __$$CreateorgReqImplCopyWithImpl<$Res>
    extends _$CreateorgReqCopyWithImpl<$Res, _$CreateorgReqImpl>
    implements _$$CreateorgReqImplCopyWith<$Res> {
  __$$CreateorgReqImplCopyWithImpl(
      _$CreateorgReqImpl _value, $Res Function(_$CreateorgReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? establishedDate = freezed,
    Object? organizationImage = freezed,
    Object? address = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$CreateorgReqImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      establishedDate: freezed == establishedDate
          ? _value.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      organizationImage: freezed == organizationImage
          ? _value.organizationImage
          : organizationImage // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateorgReqImpl implements _CreateorgReq {
  const _$CreateorgReqImpl(
      {this.name,
      this.establishedDate,
      this.organizationImage,
      this.address,
      this.latitude,
      this.longitude});

  factory _$CreateorgReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateorgReqImplFromJson(json);

  @override
  final String? name;
  @override
  final String? establishedDate;
  @override
  final String? organizationImage;
  @override
  final String? address;
  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'CreateorgReq(name: $name, establishedDate: $establishedDate, organizationImage: $organizationImage, address: $address, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateorgReqImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.establishedDate, establishedDate) ||
                other.establishedDate == establishedDate) &&
            (identical(other.organizationImage, organizationImage) ||
                other.organizationImage == organizationImage) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, establishedDate,
      organizationImage, address, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateorgReqImplCopyWith<_$CreateorgReqImpl> get copyWith =>
      __$$CreateorgReqImplCopyWithImpl<_$CreateorgReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateorgReqImplToJson(
      this,
    );
  }
}

abstract class _CreateorgReq implements CreateorgReq {
  const factory _CreateorgReq(
      {final String? name,
      final String? establishedDate,
      final String? organizationImage,
      final String? address,
      final double? latitude,
      final double? longitude}) = _$CreateorgReqImpl;

  factory _CreateorgReq.fromJson(Map<String, dynamic> json) =
      _$CreateorgReqImpl.fromJson;

  @override
  String? get name;
  @override
  String? get establishedDate;
  @override
  String? get organizationImage;
  @override
  String? get address;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$CreateorgReqImplCopyWith<_$CreateorgReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateorgRes _$CreateorgResFromJson(Map<String, dynamic> json) {
  return _CreateorgRes.fromJson(json);
}

/// @nodoc
mixin _$CreateorgRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateorgResCopyWith<CreateorgRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateorgResCopyWith<$Res> {
  factory $CreateorgResCopyWith(
          CreateorgRes value, $Res Function(CreateorgRes) then) =
      _$CreateorgResCopyWithImpl<$Res, CreateorgRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$CreateorgResCopyWithImpl<$Res, $Val extends CreateorgRes>
    implements $CreateorgResCopyWith<$Res> {
  _$CreateorgResCopyWithImpl(this._value, this._then);

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
              as Body?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BodyCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $BodyCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateorgResImplCopyWith<$Res>
    implements $CreateorgResCopyWith<$Res> {
  factory _$$CreateorgResImplCopyWith(
          _$CreateorgResImpl value, $Res Function(_$CreateorgResImpl) then) =
      __$$CreateorgResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$CreateorgResImplCopyWithImpl<$Res>
    extends _$CreateorgResCopyWithImpl<$Res, _$CreateorgResImpl>
    implements _$$CreateorgResImplCopyWith<$Res> {
  __$$CreateorgResImplCopyWithImpl(
      _$CreateorgResImpl _value, $Res Function(_$CreateorgResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$CreateorgResImpl(
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
              as Body?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateorgResImpl implements _CreateorgRes {
  const _$CreateorgResImpl({this.success, this.message, this.body});

  factory _$CreateorgResImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateorgResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'CreateorgRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateorgResImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateorgResImplCopyWith<_$CreateorgResImpl> get copyWith =>
      __$$CreateorgResImplCopyWithImpl<_$CreateorgResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateorgResImplToJson(
      this,
    );
  }
}

abstract class _CreateorgRes implements CreateorgRes {
  const factory _CreateorgRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$CreateorgResImpl;

  factory _CreateorgRes.fromJson(Map<String, dynamic> json) =
      _$CreateorgResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$CreateorgResImplCopyWith<_$CreateorgResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  String? get name => throw _privateConstructorUsedError;
  String? get orgImage => throw _privateConstructorUsedError;
  String? get establishedDate => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call(
      {String? name,
      String? orgImage,
      String? establishedDate,
      Location? location,
      String? address,
      String? id,
      String? createdAt,
      String? updatedAt});

  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$BodyCopyWithImpl<$Res, $Val extends Body>
    implements $BodyCopyWith<$Res> {
  _$BodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? orgImage = freezed,
    Object? establishedDate = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      orgImage: freezed == orgImage
          ? _value.orgImage
          : orgImage // ignore: cast_nullable_to_non_nullable
              as String?,
      establishedDate: freezed == establishedDate
          ? _value.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodyImplCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$$BodyImplCopyWith(
          _$BodyImpl value, $Res Function(_$BodyImpl) then) =
      __$$BodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? orgImage,
      String? establishedDate,
      Location? location,
      String? address,
      String? id,
      String? createdAt,
      String? updatedAt});

  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$BodyImplCopyWithImpl<$Res>
    extends _$BodyCopyWithImpl<$Res, _$BodyImpl>
    implements _$$BodyImplCopyWith<$Res> {
  __$$BodyImplCopyWithImpl(_$BodyImpl _value, $Res Function(_$BodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? orgImage = freezed,
    Object? establishedDate = freezed,
    Object? location = freezed,
    Object? address = freezed,
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BodyImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      orgImage: freezed == orgImage
          ? _value.orgImage
          : orgImage // ignore: cast_nullable_to_non_nullable
              as String?,
      establishedDate: freezed == establishedDate
          ? _value.establishedDate
          : establishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl(
      {this.name,
      this.orgImage,
      this.establishedDate,
      this.location,
      this.address,
      this.id,
      this.createdAt,
      this.updatedAt});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final String? name;
  @override
  final String? orgImage;
  @override
  final String? establishedDate;
  @override
  final Location? location;
  @override
  final String? address;
  @override
  final String? id;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Body(name: $name, orgImage: $orgImage, establishedDate: $establishedDate, location: $location, address: $address, id: $id, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.orgImage, orgImage) ||
                other.orgImage == orgImage) &&
            (identical(other.establishedDate, establishedDate) ||
                other.establishedDate == establishedDate) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, orgImage, establishedDate,
      location, address, id, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      __$$BodyImplCopyWithImpl<_$BodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyImplToJson(
      this,
    );
  }
}

abstract class _Body implements Body {
  const factory _Body(
      {final String? name,
      final String? orgImage,
      final String? establishedDate,
      final Location? location,
      final String? address,
      final String? id,
      final String? createdAt,
      final String? updatedAt}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  String? get name;
  @override
  String? get orgImage;
  @override
  String? get establishedDate;
  @override
  Location? get location;
  @override
  String? get address;
  @override
  String? get id;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, List<double>? coordinates});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
  }) {
    return _then(_$LocationImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl({this.type, final List<double>? coordinates})
      : _coordinates = coordinates;

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Location(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? type, final List<double>? coordinates}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
