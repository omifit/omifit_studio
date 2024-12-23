// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'getall_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetallSubscriptionRes _$GetallSubscriptionResFromJson(
    Map<String, dynamic> json) {
  return _GetallSubscriptionRes.fromJson(json);
}

/// @nodoc
mixin _$GetallSubscriptionRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetallSubscriptionResCopyWith<GetallSubscriptionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetallSubscriptionResCopyWith<$Res> {
  factory $GetallSubscriptionResCopyWith(GetallSubscriptionRes value,
          $Res Function(GetallSubscriptionRes) then) =
      _$GetallSubscriptionResCopyWithImpl<$Res, GetallSubscriptionRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$GetallSubscriptionResCopyWithImpl<$Res,
        $Val extends GetallSubscriptionRes>
    implements $GetallSubscriptionResCopyWith<$Res> {
  _$GetallSubscriptionResCopyWithImpl(this._value, this._then);

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
abstract class _$$GetallSubscriptionResImplCopyWith<$Res>
    implements $GetallSubscriptionResCopyWith<$Res> {
  factory _$$GetallSubscriptionResImplCopyWith(
          _$GetallSubscriptionResImpl value,
          $Res Function(_$GetallSubscriptionResImpl) then) =
      __$$GetallSubscriptionResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$GetallSubscriptionResImplCopyWithImpl<$Res>
    extends _$GetallSubscriptionResCopyWithImpl<$Res,
        _$GetallSubscriptionResImpl>
    implements _$$GetallSubscriptionResImplCopyWith<$Res> {
  __$$GetallSubscriptionResImplCopyWithImpl(_$GetallSubscriptionResImpl _value,
      $Res Function(_$GetallSubscriptionResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$GetallSubscriptionResImpl(
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
class _$GetallSubscriptionResImpl implements _GetallSubscriptionRes {
  const _$GetallSubscriptionResImpl({this.success, this.message, this.body});

  factory _$GetallSubscriptionResImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetallSubscriptionResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'GetallSubscriptionRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetallSubscriptionResImpl &&
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
  _$$GetallSubscriptionResImplCopyWith<_$GetallSubscriptionResImpl>
      get copyWith => __$$GetallSubscriptionResImplCopyWithImpl<
          _$GetallSubscriptionResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetallSubscriptionResImplToJson(
      this,
    );
  }
}

abstract class _GetallSubscriptionRes implements GetallSubscriptionRes {
  const factory _GetallSubscriptionRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$GetallSubscriptionResImpl;

  factory _GetallSubscriptionRes.fromJson(Map<String, dynamic> json) =
      _$GetallSubscriptionResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$GetallSubscriptionResImplCopyWith<_$GetallSubscriptionResImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Body _$BodyFromJson(Map<String, dynamic> json) {
  return _Body.fromJson(json);
}

/// @nodoc
mixin _$Body {
  List<Subscription>? get subscriptions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyCopyWith<Body> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyCopyWith<$Res> {
  factory $BodyCopyWith(Body value, $Res Function(Body) then) =
      _$BodyCopyWithImpl<$Res, Body>;
  @useResult
  $Res call({List<Subscription>? subscriptions});
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
    Object? subscriptions = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptions: freezed == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyImplCopyWith<$Res> implements $BodyCopyWith<$Res> {
  factory _$$BodyImplCopyWith(
          _$BodyImpl value, $Res Function(_$BodyImpl) then) =
      __$$BodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Subscription>? subscriptions});
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
    Object? subscriptions = freezed,
  }) {
    return _then(_$BodyImpl(
      subscriptions: freezed == subscriptions
          ? _value._subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<Subscription>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyImpl implements _Body {
  const _$BodyImpl({final List<Subscription>? subscriptions})
      : _subscriptions = subscriptions;

  factory _$BodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyImplFromJson(json);

  final List<Subscription>? _subscriptions;
  @override
  List<Subscription>? get subscriptions {
    final value = _subscriptions;
    if (value == null) return null;
    if (_subscriptions is EqualUnmodifiableListView) return _subscriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Body(subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyImpl &&
            const DeepCollectionEquality()
                .equals(other._subscriptions, _subscriptions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subscriptions));

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
  const factory _Body({final List<Subscription>? subscriptions}) = _$BodyImpl;

  factory _Body.fromJson(Map<String, dynamic> json) = _$BodyImpl.fromJson;

  @override
  List<Subscription>? get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$BodyImplCopyWith<_$BodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return _Subscription.fromJson(json);
}

/// @nodoc
mixin _$Subscription {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  String? get plan => throw _privateConstructorUsedError;
  dynamic get coupon => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get totalAmount => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get paidAmount => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get pendingAmount => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  String? get paymentForm => throw _privateConstructorUsedError;
  String? get membershipStartDate => throw _privateConstructorUsedError;
  String? get membershipEndDate => throw _privateConstructorUsedError;
  bool? get isActivePlan => throw _privateConstructorUsedError;
  bool? get isPaused => throw _privateConstructorUsedError;
  bool? get isIncoming => throw _privateConstructorUsedError;
  bool? get isExpired => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionCopyWith<Subscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionCopyWith<$Res> {
  factory $SubscriptionCopyWith(
          Subscription value, $Res Function(Subscription) then) =
      _$SubscriptionCopyWithImpl<$Res, Subscription>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? user,
      String? organization,
      String? plan,
      dynamic coupon,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? totalAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? paidAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? pendingAmount,
      String? remark,
      String? paymentForm,
      String? membershipStartDate,
      String? membershipEndDate,
      bool? isActivePlan,
      bool? isPaused,
      bool? isIncoming,
      bool? isExpired,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$SubscriptionCopyWithImpl<$Res, $Val extends Subscription>
    implements $SubscriptionCopyWith<$Res> {
  _$SubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? organization = freezed,
    Object? plan = freezed,
    Object? coupon = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? pendingAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? isActivePlan = freezed,
    Object? isPaused = freezed,
    Object? isIncoming = freezed,
    Object? isExpired = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingAmount: freezed == pendingAmount
          ? _value.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentForm: freezed == paymentForm
          ? _value.paymentForm
          : paymentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStartDate: freezed == membershipStartDate
          ? _value.membershipStartDate
          : membershipStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivePlan: freezed == isActivePlan
          ? _value.isActivePlan
          : isActivePlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaused: freezed == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIncoming: freezed == isIncoming
          ? _value.isIncoming
          : isIncoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
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
}

/// @nodoc
abstract class _$$SubscriptionImplCopyWith<$Res>
    implements $SubscriptionCopyWith<$Res> {
  factory _$$SubscriptionImplCopyWith(
          _$SubscriptionImpl value, $Res Function(_$SubscriptionImpl) then) =
      __$$SubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? user,
      String? organization,
      String? plan,
      dynamic coupon,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? totalAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? paidAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? pendingAmount,
      String? remark,
      String? paymentForm,
      String? membershipStartDate,
      String? membershipEndDate,
      bool? isActivePlan,
      bool? isPaused,
      bool? isIncoming,
      bool? isExpired,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$SubscriptionImplCopyWithImpl<$Res>
    extends _$SubscriptionCopyWithImpl<$Res, _$SubscriptionImpl>
    implements _$$SubscriptionImplCopyWith<$Res> {
  __$$SubscriptionImplCopyWithImpl(
      _$SubscriptionImpl _value, $Res Function(_$SubscriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? user = freezed,
    Object? organization = freezed,
    Object? plan = freezed,
    Object? coupon = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? pendingAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? isActivePlan = freezed,
    Object? isPaused = freezed,
    Object? isIncoming = freezed,
    Object? isExpired = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SubscriptionImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      pendingAmount: freezed == pendingAmount
          ? _value.pendingAmount
          : pendingAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      remark: freezed == remark
          ? _value.remark
          : remark // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentForm: freezed == paymentForm
          ? _value.paymentForm
          : paymentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStartDate: freezed == membershipStartDate
          ? _value.membershipStartDate
          : membershipStartDate // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as String?,
      isActivePlan: freezed == isActivePlan
          ? _value.isActivePlan
          : isActivePlan // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaused: freezed == isPaused
          ? _value.isPaused
          : isPaused // ignore: cast_nullable_to_non_nullable
              as bool?,
      isIncoming: freezed == isIncoming
          ? _value.isIncoming
          : isIncoming // ignore: cast_nullable_to_non_nullable
              as bool?,
      isExpired: freezed == isExpired
          ? _value.isExpired
          : isExpired // ignore: cast_nullable_to_non_nullable
              as bool?,
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
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl(
      {@JsonKey(name: '_id') this.id,
      this.user,
      this.organization,
      this.plan,
      this.coupon,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.totalAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.paidAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.pendingAmount,
      this.remark,
      this.paymentForm,
      this.membershipStartDate,
      this.membershipEndDate,
      this.isActivePlan,
      this.isPaused,
      this.isIncoming,
      this.isExpired,
      this.createdAt,
      this.updatedAt});

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? user;
  @override
  final String? organization;
  @override
  final String? plan;
  @override
  final dynamic coupon;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? totalAmount;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? paidAmount;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? pendingAmount;
  @override
  final String? remark;
  @override
  final String? paymentForm;
  @override
  final String? membershipStartDate;
  @override
  final String? membershipEndDate;
  @override
  final bool? isActivePlan;
  @override
  final bool? isPaused;
  @override
  final bool? isIncoming;
  @override
  final bool? isExpired;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Subscription(id: $id, user: $user, organization: $organization, plan: $plan, coupon: $coupon, totalAmount: $totalAmount, paidAmount: $paidAmount, pendingAmount: $pendingAmount, remark: $remark, paymentForm: $paymentForm, membershipStartDate: $membershipStartDate, membershipEndDate: $membershipEndDate, isActivePlan: $isActivePlan, isPaused: $isPaused, isIncoming: $isIncoming, isExpired: $isExpired, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            const DeepCollectionEquality().equals(other.coupon, coupon) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.pendingAmount, pendingAmount) ||
                other.pendingAmount == pendingAmount) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.paymentForm, paymentForm) ||
                other.paymentForm == paymentForm) &&
            (identical(other.membershipStartDate, membershipStartDate) ||
                other.membershipStartDate == membershipStartDate) &&
            (identical(other.membershipEndDate, membershipEndDate) ||
                other.membershipEndDate == membershipEndDate) &&
            (identical(other.isActivePlan, isActivePlan) ||
                other.isActivePlan == isActivePlan) &&
            (identical(other.isPaused, isPaused) ||
                other.isPaused == isPaused) &&
            (identical(other.isIncoming, isIncoming) ||
                other.isIncoming == isIncoming) &&
            (identical(other.isExpired, isExpired) ||
                other.isExpired == isExpired) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      user,
      organization,
      plan,
      const DeepCollectionEquality().hash(coupon),
      totalAmount,
      paidAmount,
      pendingAmount,
      remark,
      paymentForm,
      membershipStartDate,
      membershipEndDate,
      isActivePlan,
      isPaused,
      isIncoming,
      isExpired,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      __$$SubscriptionImplCopyWithImpl<_$SubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionImplToJson(
      this,
    );
  }
}

abstract class _Subscription implements Subscription {
  const factory _Subscription(
      {@JsonKey(name: '_id') final String? id,
      final String? user,
      final String? organization,
      final String? plan,
      final dynamic coupon,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? totalAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? paidAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? pendingAmount,
      final String? remark,
      final String? paymentForm,
      final String? membershipStartDate,
      final String? membershipEndDate,
      final bool? isActivePlan,
      final bool? isPaused,
      final bool? isIncoming,
      final bool? isExpired,
      final String? createdAt,
      final String? updatedAt}) = _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get user;
  @override
  String? get organization;
  @override
  String? get plan;
  @override
  dynamic get coupon;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get totalAmount;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get paidAmount;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get pendingAmount;
  @override
  String? get remark;
  @override
  String? get paymentForm;
  @override
  String? get membershipStartDate;
  @override
  String? get membershipEndDate;
  @override
  bool? get isActivePlan;
  @override
  bool? get isPaused;
  @override
  bool? get isIncoming;
  @override
  bool? get isExpired;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
