// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlanDetailsRes _$PlanDetailsResFromJson(Map<String, dynamic> json) {
  return _PlanDetailsRes.fromJson(json);
}

/// @nodoc
mixin _$PlanDetailsRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanDetailsResCopyWith<PlanDetailsRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanDetailsResCopyWith<$Res> {
  factory $PlanDetailsResCopyWith(
          PlanDetailsRes value, $Res Function(PlanDetailsRes) then) =
      _$PlanDetailsResCopyWithImpl<$Res, PlanDetailsRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$PlanDetailsResCopyWithImpl<$Res, $Val extends PlanDetailsRes>
    implements $PlanDetailsResCopyWith<$Res> {
  _$PlanDetailsResCopyWithImpl(this._value, this._then);

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
abstract class _$$PlanDetailsResImplCopyWith<$Res>
    implements $PlanDetailsResCopyWith<$Res> {
  factory _$$PlanDetailsResImplCopyWith(_$PlanDetailsResImpl value,
          $Res Function(_$PlanDetailsResImpl) then) =
      __$$PlanDetailsResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$PlanDetailsResImplCopyWithImpl<$Res>
    extends _$PlanDetailsResCopyWithImpl<$Res, _$PlanDetailsResImpl>
    implements _$$PlanDetailsResImplCopyWith<$Res> {
  __$$PlanDetailsResImplCopyWithImpl(
      _$PlanDetailsResImpl _value, $Res Function(_$PlanDetailsResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$PlanDetailsResImpl(
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
class _$PlanDetailsResImpl implements _PlanDetailsRes {
  const _$PlanDetailsResImpl({this.success, this.message, this.body});

  factory _$PlanDetailsResImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanDetailsResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'PlanDetailsRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanDetailsResImpl &&
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
  _$$PlanDetailsResImplCopyWith<_$PlanDetailsResImpl> get copyWith =>
      __$$PlanDetailsResImplCopyWithImpl<_$PlanDetailsResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanDetailsResImplToJson(
      this,
    );
  }
}

abstract class _PlanDetailsRes implements PlanDetailsRes {
  const factory _PlanDetailsRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$PlanDetailsResImpl;

  factory _PlanDetailsRes.fromJson(Map<String, dynamic> json) =
      _$PlanDetailsResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$PlanDetailsResImplCopyWith<_$PlanDetailsResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  OrganizationPlan? get organizationPlan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({OrganizationPlan? organizationPlan});

  $OrganizationPlanCopyWith<$Res>? get organizationPlan;
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
    Object? organizationPlan = freezed,
  }) {
    return _then(_value.copyWith(
      organizationPlan: freezed == organizationPlan
          ? _value.organizationPlan
          : organizationPlan // ignore: cast_nullable_to_non_nullable
              as OrganizationPlan?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrganizationPlanCopyWith<$Res>? get organizationPlan {
    if (_value.organizationPlan == null) {
      return null;
    }

    return $OrganizationPlanCopyWith<$Res>(_value.organizationPlan!, (value) {
      return _then(_value.copyWith(organizationPlan: value) as $Val);
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
  $Res call({OrganizationPlan? organizationPlan});

  @override
  $OrganizationPlanCopyWith<$Res>? get organizationPlan;
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
    Object? organizationPlan = freezed,
  }) {
    return _then(_$BodyImpl(
      organizationPlan: freezed == organizationPlan
          ? _value.organizationPlan
          : organizationPlan // ignore: cast_nullable_to_non_nullable
              as OrganizationPlan?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({this.organizationPlan});

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  @override
  final OrganizationPlan? organizationPlan;

  @override
  String toString() {
    return 'Body(organizationPlan: $organizationPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            (identical(other.organizationPlan, organizationPlan) ||
                other.organizationPlan == organizationPlan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, organizationPlan);

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
  const factory _Body({final OrganizationPlan? organizationPlan}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  OrganizationPlan? get organizationPlan;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrganizationPlan _$OrganizationPlanFromJson(Map<String, dynamic> json) {
  return _OrganizationPlan.fromJson(json);
}

/// @nodoc
mixin _$OrganizationPlan {
  Duration? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get fakeAmount => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gst => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gstPercentage => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  int? get v => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrganizationPlanCopyWith<OrganizationPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationPlanCopyWith<$Res> {
  factory $OrganizationPlanCopyWith(
          OrganizationPlan value, $Res Function(OrganizationPlan) then) =
      _$OrganizationPlanCopyWithImpl<$Res, OrganizationPlan>;
  @useResult
  $Res call(
      {Duration? duration,
      @JsonKey(name: '_id') String? id,
      String? organization,
      String? name,
      String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
      bool? isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      double? gstPercentage,
      String? createdAt,
      String? updatedAt,
      int? v});

  $DurationCopyWith<$Res>? get duration;
}

/// @nodoc
class _$OrganizationPlanCopyWithImpl<$Res, $Val extends OrganizationPlan>
    implements $OrganizationPlanCopyWith<$Res> {
  _$OrganizationPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? id = freezed,
    Object? organization = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? fakeAmount = freezed,
    Object? isActive = freezed,
    Object? gst = freezed,
    Object? gstPercentage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_value.copyWith(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      fakeAmount: freezed == fakeAmount
          ? _value.fakeAmount
          : fakeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as double?,
      gstPercentage: freezed == gstPercentage
          ? _value.gstPercentage
          : gstPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DurationCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $DurationCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrganizationPlanImplCopyWith<$Res>
    implements $OrganizationPlanCopyWith<$Res> {
  factory _$$OrganizationPlanImplCopyWith(_$OrganizationPlanImpl value,
          $Res Function(_$OrganizationPlanImpl) then) =
      __$$OrganizationPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration? duration,
      @JsonKey(name: '_id') String? id,
      String? organization,
      String? name,
      String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
      bool? isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      double? gstPercentage,
      String? createdAt,
      String? updatedAt,
      int? v});

  @override
  $DurationCopyWith<$Res>? get duration;
}

/// @nodoc
class __$$OrganizationPlanImplCopyWithImpl<$Res>
    extends _$OrganizationPlanCopyWithImpl<$Res, _$OrganizationPlanImpl>
    implements _$$OrganizationPlanImplCopyWith<$Res> {
  __$$OrganizationPlanImplCopyWithImpl(_$OrganizationPlanImpl _value,
      $Res Function(_$OrganizationPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
    Object? id = freezed,
    Object? organization = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? fakeAmount = freezed,
    Object? isActive = freezed,
    Object? gst = freezed,
    Object? gstPercentage = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? v = freezed,
  }) {
    return _then(_$OrganizationPlanImpl(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      fakeAmount: freezed == fakeAmount
          ? _value.fakeAmount
          : fakeAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      gst: freezed == gst
          ? _value.gst
          : gst // ignore: cast_nullable_to_non_nullable
              as double?,
      gstPercentage: freezed == gstPercentage
          ? _value.gstPercentage
          : gstPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrganizationPlanImpl implements _OrganizationPlan {
  const _$OrganizationPlanImpl(
      {this.duration,
      @JsonKey(name: '_id') this.id,
      this.organization,
      this.name,
      this.description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.fakeAmount,
      this.isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.gstPercentage,
      this.createdAt,
      this.updatedAt,
      this.v});

  factory _$OrganizationPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrganizationPlanImplFromJson(json);

  @override
  final Duration? duration;
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? organization;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? price;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? fakeAmount;
  @override
  final bool? isActive;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  final double? gst;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  final double? gstPercentage;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final int? v;

  @override
  String toString() {
    return 'OrganizationPlan(duration: $duration, id: $id, organization: $organization, name: $name, description: $description, price: $price, fakeAmount: $fakeAmount, isActive: $isActive, gst: $gst, gstPercentage: $gstPercentage, createdAt: $createdAt, updatedAt: $updatedAt, v: $v)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrganizationPlanImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.fakeAmount, fakeAmount) ||
                other.fakeAmount == fakeAmount) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.gstPercentage, gstPercentage) ||
                other.gstPercentage == gstPercentage) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.v, v) || other.v == v));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      duration,
      id,
      organization,
      name,
      description,
      price,
      fakeAmount,
      isActive,
      gst,
      gstPercentage,
      createdAt,
      updatedAt,
      v);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrganizationPlanImplCopyWith<_$OrganizationPlanImpl> get copyWith =>
      __$$OrganizationPlanImplCopyWithImpl<_$OrganizationPlanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrganizationPlanImplToJson(
      this,
    );
  }
}

abstract class _OrganizationPlan implements OrganizationPlan {
  const factory _OrganizationPlan(
      {final Duration? duration,
      @JsonKey(name: '_id') final String? id,
      final String? organization,
      final String? name,
      final String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) final int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? fakeAmount,
      final bool? isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) final double? gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      final double? gstPercentage,
      final String? createdAt,
      final String? updatedAt,
      final int? v}) = _$OrganizationPlanImpl;

  factory _OrganizationPlan.fromJson(Map<String, dynamic> json) =
      _$OrganizationPlanImpl.fromJson;

  @override
  Duration? get duration;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get organization;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get price;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get fakeAmount;
  @override
  bool? get isActive;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gst;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gstPercentage;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  int? get v;
  @override
  @JsonKey(ignore: true)
  _$$OrganizationPlanImplCopyWith<_$OrganizationPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Duration _$DurationFromJson(Map<String, dynamic> json) {
  return _Duration.fromJson(json);
}

/// @nodoc
mixin _$Duration {
  int? get value => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  int? get numberOfDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DurationCopyWith<Duration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationCopyWith<$Res> {
  factory $DurationCopyWith(Duration value, $Res Function(Duration) then) =
      _$DurationCopyWithImpl<$Res, Duration>;
  @useResult
  $Res call({int? value, String? unit, int? numberOfDays});
}

/// @nodoc
class _$DurationCopyWithImpl<$Res, $Val extends Duration>
    implements $DurationCopyWith<$Res> {
  _$DurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = freezed,
    Object? numberOfDays = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: freezed == numberOfDays
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DurationImplCopyWith<$Res>
    implements $DurationCopyWith<$Res> {
  factory _$$DurationImplCopyWith(
          _$DurationImpl value, $Res Function(_$DurationImpl) then) =
      __$$DurationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? value, String? unit, int? numberOfDays});
}

/// @nodoc
class __$$DurationImplCopyWithImpl<$Res>
    extends _$DurationCopyWithImpl<$Res, _$DurationImpl>
    implements _$$DurationImplCopyWith<$Res> {
  __$$DurationImplCopyWithImpl(
      _$DurationImpl _value, $Res Function(_$DurationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = freezed,
    Object? numberOfDays = freezed,
  }) {
    return _then(_$DurationImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      numberOfDays: freezed == numberOfDays
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DurationImpl implements _Duration {
  const _$DurationImpl({this.value, this.unit, this.numberOfDays});

  factory _$DurationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationImplFromJson(json);

  @override
  final int? value;
  @override
  final String? unit;
  @override
  final int? numberOfDays;

  @override
  String toString() {
    return 'Duration(value: $value, unit: $unit, numberOfDays: $numberOfDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.numberOfDays, numberOfDays) ||
                other.numberOfDays == numberOfDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, unit, numberOfDays);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationImplCopyWith<_$DurationImpl> get copyWith =>
      __$$DurationImplCopyWithImpl<_$DurationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationImplToJson(
      this,
    );
  }
}

abstract class _Duration implements Duration {
  const factory _Duration(
      {final int? value,
      final String? unit,
      final int? numberOfDays}) = _$DurationImpl;

  factory _Duration.fromJson(Map<String, dynamic> json) =
      _$DurationImpl.fromJson;

  @override
  int? get value;
  @override
  String? get unit;
  @override
  int? get numberOfDays;
  @override
  @JsonKey(ignore: true)
  _$$DurationImplCopyWith<_$DurationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
