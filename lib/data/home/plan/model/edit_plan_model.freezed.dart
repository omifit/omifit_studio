// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditPlanReq _$EditPlanReqFromJson(Map<String, dynamic> json) {
  return _EditPlanReq.fromJson(json);
}

/// @nodoc
mixin _$EditPlanReq {
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get price => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get fakeAmount => throw _privateConstructorUsedError;
  Duration? get duration => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gst => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gstPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditPlanReqCopyWith<EditPlanReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPlanReqCopyWith<$Res> {
  factory $EditPlanReqCopyWith(
          EditPlanReq value, $Res Function(EditPlanReq) then) =
      _$EditPlanReqCopyWithImpl<$Res, EditPlanReq>;
  @useResult
  $Res call(
      {String? name,
      String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
      Duration? duration,
      bool? isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      double? gstPercentage});

  $DurationCopyWith<$Res>? get duration;
}

/// @nodoc
class _$EditPlanReqCopyWithImpl<$Res, $Val extends EditPlanReq>
    implements $EditPlanReqCopyWith<$Res> {
  _$EditPlanReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? fakeAmount = freezed,
    Object? duration = freezed,
    Object? isActive = freezed,
    Object? gst = freezed,
    Object? gstPercentage = freezed,
  }) {
    return _then(_value.copyWith(
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
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
abstract class _$$EditPlanReqImplCopyWith<$Res>
    implements $EditPlanReqCopyWith<$Res> {
  factory _$$EditPlanReqImplCopyWith(
          _$EditPlanReqImpl value, $Res Function(_$EditPlanReqImpl) then) =
      __$$EditPlanReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
      Duration? duration,
      bool? isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) double? gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      double? gstPercentage});

  @override
  $DurationCopyWith<$Res>? get duration;
}

/// @nodoc
class __$$EditPlanReqImplCopyWithImpl<$Res>
    extends _$EditPlanReqCopyWithImpl<$Res, _$EditPlanReqImpl>
    implements _$$EditPlanReqImplCopyWith<$Res> {
  __$$EditPlanReqImplCopyWithImpl(
      _$EditPlanReqImpl _value, $Res Function(_$EditPlanReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? fakeAmount = freezed,
    Object? duration = freezed,
    Object? isActive = freezed,
    Object? gst = freezed,
    Object? gstPercentage = freezed,
  }) {
    return _then(_$EditPlanReqImpl(
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
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditPlanReqImpl implements _EditPlanReq {
  const _$EditPlanReqImpl(
      {this.name,
      this.description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.fakeAmount,
      this.duration,
      this.isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) this.gstPercentage});

  factory _$EditPlanReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditPlanReqImplFromJson(json);

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
  final Duration? duration;
  @override
  final bool? isActive;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  final double? gst;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  final double? gstPercentage;

  @override
  String toString() {
    return 'EditPlanReq(name: $name, description: $description, price: $price, fakeAmount: $fakeAmount, duration: $duration, isActive: $isActive, gst: $gst, gstPercentage: $gstPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPlanReqImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.fakeAmount, fakeAmount) ||
                other.fakeAmount == fakeAmount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.gst, gst) || other.gst == gst) &&
            (identical(other.gstPercentage, gstPercentage) ||
                other.gstPercentage == gstPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, price,
      fakeAmount, duration, isActive, gst, gstPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditPlanReqImplCopyWith<_$EditPlanReqImpl> get copyWith =>
      __$$EditPlanReqImplCopyWithImpl<_$EditPlanReqImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditPlanReqImplToJson(
      this,
    );
  }
}

abstract class _EditPlanReq implements EditPlanReq {
  const factory _EditPlanReq(
      {final String? name,
      final String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) final int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? fakeAmount,
      final Duration? duration,
      final bool? isActive,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble) final double? gst,
      @JsonKey(toJson: parseDouble, fromJson: parseDouble)
      final double? gstPercentage}) = _$EditPlanReqImpl;

  factory _EditPlanReq.fromJson(Map<String, dynamic> json) =
      _$EditPlanReqImpl.fromJson;

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
  Duration? get duration;
  @override
  bool? get isActive;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gst;
  @override
  @JsonKey(toJson: parseDouble, fromJson: parseDouble)
  double? get gstPercentage;
  @override
  @JsonKey(ignore: true)
  _$$EditPlanReqImplCopyWith<_$EditPlanReqImpl> get copyWith =>
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

EditPlanRes _$EditPlanResFromJson(Map<String, dynamic> json) {
  return _EditPlanRes.fromJson(json);
}

/// @nodoc
mixin _$EditPlanRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditPlanResCopyWith<EditPlanRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPlanResCopyWith<$Res> {
  factory $EditPlanResCopyWith(
          EditPlanRes value, $Res Function(EditPlanRes) then) =
      _$EditPlanResCopyWithImpl<$Res, EditPlanRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$EditPlanResCopyWithImpl<$Res, $Val extends EditPlanRes>
    implements $EditPlanResCopyWith<$Res> {
  _$EditPlanResCopyWithImpl(this._value, this._then);

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
abstract class _$$EditPlanResImplCopyWith<$Res>
    implements $EditPlanResCopyWith<$Res> {
  factory _$$EditPlanResImplCopyWith(
          _$EditPlanResImpl value, $Res Function(_$EditPlanResImpl) then) =
      __$$EditPlanResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$EditPlanResImplCopyWithImpl<$Res>
    extends _$EditPlanResCopyWithImpl<$Res, _$EditPlanResImpl>
    implements _$$EditPlanResImplCopyWith<$Res> {
  __$$EditPlanResImplCopyWithImpl(
      _$EditPlanResImpl _value, $Res Function(_$EditPlanResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$EditPlanResImpl(
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
class _$EditPlanResImpl implements _EditPlanRes {
  const _$EditPlanResImpl({this.success, this.message, this.body});

  factory _$EditPlanResImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditPlanResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'EditPlanRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditPlanResImpl &&
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
  _$$EditPlanResImplCopyWith<_$EditPlanResImpl> get copyWith =>
      __$$EditPlanResImplCopyWithImpl<_$EditPlanResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditPlanResImplToJson(
      this,
    );
  }
}

abstract class _EditPlanRes implements EditPlanRes {
  const factory _EditPlanRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$EditPlanResImpl;

  factory _EditPlanRes.fromJson(Map<String, dynamic> json) =
      _$EditPlanResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$EditPlanResImplCopyWith<_$EditPlanResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
