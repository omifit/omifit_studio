// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_subscription_byuser_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetallsubscriptionByUserRes _$GetallsubscriptionByUserResFromJson(
    Map<String, dynamic> json) {
  return _GetallsubscriptionByUserRes.fromJson(json);
}

/// @nodoc
mixin _$GetallsubscriptionByUserRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Body? get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetallsubscriptionByUserResCopyWith<GetallsubscriptionByUserRes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetallsubscriptionByUserResCopyWith<$Res> {
  factory $GetallsubscriptionByUserResCopyWith(
          GetallsubscriptionByUserRes value,
          $Res Function(GetallsubscriptionByUserRes) then) =
      _$GetallsubscriptionByUserResCopyWithImpl<$Res,
          GetallsubscriptionByUserRes>;
  @useResult
  $Res call({bool? success, String? message, Body? body});

  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class _$GetallsubscriptionByUserResCopyWithImpl<$Res,
        $Val extends GetallsubscriptionByUserRes>
    implements $GetallsubscriptionByUserResCopyWith<$Res> {
  _$GetallsubscriptionByUserResCopyWithImpl(this._value, this._then);

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
abstract class _$$GetallsubscriptionByUserResImplCopyWith<$Res>
    implements $GetallsubscriptionByUserResCopyWith<$Res> {
  factory _$$GetallsubscriptionByUserResImplCopyWith(
          _$GetallsubscriptionByUserResImpl value,
          $Res Function(_$GetallsubscriptionByUserResImpl) then) =
      __$$GetallsubscriptionByUserResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, Body? body});

  @override
  $BodyCopyWith<$Res>? get body;
}

/// @nodoc
class __$$GetallsubscriptionByUserResImplCopyWithImpl<$Res>
    extends _$GetallsubscriptionByUserResCopyWithImpl<$Res,
        _$GetallsubscriptionByUserResImpl>
    implements _$$GetallsubscriptionByUserResImplCopyWith<$Res> {
  __$$GetallsubscriptionByUserResImplCopyWithImpl(
      _$GetallsubscriptionByUserResImpl _value,
      $Res Function(_$GetallsubscriptionByUserResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$GetallsubscriptionByUserResImpl(
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
class _$GetallsubscriptionByUserResImpl
    implements _GetallsubscriptionByUserRes {
  const _$GetallsubscriptionByUserResImpl(
      {this.success, this.message, this.body});

  factory _$GetallsubscriptionByUserResImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetallsubscriptionByUserResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final Body? body;

  @override
  String toString() {
    return 'GetallsubscriptionByUserRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetallsubscriptionByUserResImpl &&
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
  _$$GetallsubscriptionByUserResImplCopyWith<_$GetallsubscriptionByUserResImpl>
      get copyWith => __$$GetallsubscriptionByUserResImplCopyWithImpl<
          _$GetallsubscriptionByUserResImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetallsubscriptionByUserResImplToJson(
      this,
    );
  }
}

abstract class _GetallsubscriptionByUserRes
    implements GetallsubscriptionByUserRes {
  const factory _GetallsubscriptionByUserRes(
      {final bool? success,
      final String? message,
      final Body? body}) = _$GetallsubscriptionByUserResImpl;

  factory _GetallsubscriptionByUserRes.fromJson(Map<String, dynamic> json) =
      _$GetallsubscriptionByUserResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  Body? get body;
  @override
  @JsonKey(ignore: true)
  _$$GetallsubscriptionByUserResImplCopyWith<_$GetallsubscriptionByUserResImpl>
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
  User? get user => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  Plan? get plan => throw _privateConstructorUsedError;
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
  String? get status => throw _privateConstructorUsedError;
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
      User? user,
      String? organization,
      Plan? plan,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? totalAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? paidAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? pendingAmount,
      String? remark,
      String? paymentForm,
      String? membershipStartDate,
      String? membershipEndDate,
      String? status,
      String? createdAt,
      String? updatedAt});

  $UserCopyWith<$Res>? get user;
  $PlanCopyWith<$Res>? get plan;
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
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? pendingAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? status = freezed,
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
              as User?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res>? get plan {
    if (_value.plan == null) {
      return null;
    }

    return $PlanCopyWith<$Res>(_value.plan!, (value) {
      return _then(_value.copyWith(plan: value) as $Val);
    });
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
      User? user,
      String? organization,
      Plan? plan,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? totalAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? paidAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? pendingAmount,
      String? remark,
      String? paymentForm,
      String? membershipStartDate,
      String? membershipEndDate,
      String? status,
      String? createdAt,
      String? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $PlanCopyWith<$Res>? get plan;
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
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? pendingAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? status = freezed,
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
              as User?,
      organization: freezed == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as String?,
      plan: freezed == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$SubscriptionImpl implements _Subscription {
  const _$SubscriptionImpl(
      {@JsonKey(name: '_id') this.id,
      this.user,
      this.organization,
      this.plan,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.totalAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.paidAmount,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.pendingAmount,
      this.remark,
      this.paymentForm,
      this.membershipStartDate,
      this.membershipEndDate,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory _$SubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final User? user;
  @override
  final String? organization;
  @override
  final Plan? plan;
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
  final String? status;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Subscription(id: $id, user: $user, organization: $organization, plan: $plan, totalAmount: $totalAmount, paidAmount: $paidAmount, pendingAmount: $pendingAmount, remark: $remark, paymentForm: $paymentForm, membershipStartDate: $membershipStartDate, membershipEndDate: $membershipEndDate, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.status, status) || other.status == status) &&
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
      totalAmount,
      paidAmount,
      pendingAmount,
      remark,
      paymentForm,
      membershipStartDate,
      membershipEndDate,
      status,
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
      final User? user,
      final String? organization,
      final Plan? plan,
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
      final String? status,
      final String? createdAt,
      final String? updatedAt}) = _$SubscriptionImpl;

  factory _Subscription.fromJson(Map<String, dynamic> json) =
      _$SubscriptionImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  User? get user;
  @override
  String? get organization;
  @override
  Plan? get plan;
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
  String? get status;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionImplCopyWith<_$SubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Plan _$PlanFromJson(Map<String, dynamic> json) {
  return _Plan.fromJson(json);
}

/// @nodoc
mixin _$Plan {
  Durationres? get duration => throw _privateConstructorUsedError;
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
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlanCopyWith<Plan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanCopyWith<$Res> {
  factory $PlanCopyWith(Plan value, $Res Function(Plan) then) =
      _$PlanCopyWithImpl<$Res, Plan>;
  @useResult
  $Res call(
      {Durationres? duration,
      @JsonKey(name: '_id') String? id,
      String? organization,
      String? name,
      String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
      bool? isActive,
      String? createdAt,
      String? updatedAt});

  $DurationresCopyWith<$Res>? get duration;
}

/// @nodoc
class _$PlanCopyWithImpl<$Res, $Val extends Plan>
    implements $PlanCopyWith<$Res> {
  _$PlanCopyWithImpl(this._value, this._then);

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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Durationres?,
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
  $DurationresCopyWith<$Res>? get duration {
    if (_value.duration == null) {
      return null;
    }

    return $DurationresCopyWith<$Res>(_value.duration!, (value) {
      return _then(_value.copyWith(duration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanImplCopyWith<$Res> implements $PlanCopyWith<$Res> {
  factory _$$PlanImplCopyWith(
          _$PlanImpl value, $Res Function(_$PlanImpl) then) =
      __$$PlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Durationres? duration,
      @JsonKey(name: '_id') String? id,
      String? organization,
      String? name,
      String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) int? fakeAmount,
      bool? isActive,
      String? createdAt,
      String? updatedAt});

  @override
  $DurationresCopyWith<$Res>? get duration;
}

/// @nodoc
class __$$PlanImplCopyWithImpl<$Res>
    extends _$PlanCopyWithImpl<$Res, _$PlanImpl>
    implements _$$PlanImplCopyWith<$Res> {
  __$$PlanImplCopyWithImpl(_$PlanImpl _value, $Res Function(_$PlanImpl) _then)
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
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PlanImpl(
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Durationres?,
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
class _$PlanImpl implements _Plan {
  const _$PlanImpl(
      {this.duration,
      @JsonKey(name: '_id') this.id,
      this.organization,
      this.name,
      this.description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) this.fakeAmount,
      this.isActive,
      this.createdAt,
      this.updatedAt});

  factory _$PlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanImplFromJson(json);

  @override
  final Durationres? duration;
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
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'Plan(duration: $duration, id: $id, organization: $organization, name: $name, description: $description, price: $price, fakeAmount: $fakeAmount, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanImpl &&
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
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, duration, id, organization, name,
      description, price, fakeAmount, isActive, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      __$$PlanImplCopyWithImpl<_$PlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanImplToJson(
      this,
    );
  }
}

abstract class _Plan implements Plan {
  const factory _Plan(
      {final Durationres? duration,
      @JsonKey(name: '_id') final String? id,
      final String? organization,
      final String? name,
      final String? description,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger) final int? price,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? fakeAmount,
      final bool? isActive,
      final String? createdAt,
      final String? updatedAt}) = _$PlanImpl;

  factory _Plan.fromJson(Map<String, dynamic> json) = _$PlanImpl.fromJson;

  @override
  Durationres? get duration;
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
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$PlanImplCopyWith<_$PlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Durationres _$DurationresFromJson(Map<String, dynamic> json) {
  return _Durationres.fromJson(json);
}

/// @nodoc
mixin _$Durationres {
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get value => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get numberOfDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DurationresCopyWith<Durationres> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationresCopyWith<$Res> {
  factory $DurationresCopyWith(
          Durationres value, $Res Function(Durationres) then) =
      _$DurationresCopyWithImpl<$Res, Durationres>;
  @useResult
  $Res call(
      {@JsonKey(toJson: parseInteger, fromJson: parseInteger) int? value,
      String? unit,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      int? numberOfDays});
}

/// @nodoc
class _$DurationresCopyWithImpl<$Res, $Val extends Durationres>
    implements $DurationresCopyWith<$Res> {
  _$DurationresCopyWithImpl(this._value, this._then);

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
abstract class _$$DurationresImplCopyWith<$Res>
    implements $DurationresCopyWith<$Res> {
  factory _$$DurationresImplCopyWith(
          _$DurationresImpl value, $Res Function(_$DurationresImpl) then) =
      __$$DurationresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(toJson: parseInteger, fromJson: parseInteger) int? value,
      String? unit,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      int? numberOfDays});
}

/// @nodoc
class __$$DurationresImplCopyWithImpl<$Res>
    extends _$DurationresCopyWithImpl<$Res, _$DurationresImpl>
    implements _$$DurationresImplCopyWith<$Res> {
  __$$DurationresImplCopyWithImpl(
      _$DurationresImpl _value, $Res Function(_$DurationresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = freezed,
    Object? numberOfDays = freezed,
  }) {
    return _then(_$DurationresImpl(
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
class _$DurationresImpl implements _Durationres {
  const _$DurationresImpl(
      {@JsonKey(toJson: parseInteger, fromJson: parseInteger) this.value,
      this.unit,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      this.numberOfDays});

  factory _$DurationresImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationresImplFromJson(json);

  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? value;
  @override
  final String? unit;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  final int? numberOfDays;

  @override
  String toString() {
    return 'Durationres(value: $value, unit: $unit, numberOfDays: $numberOfDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationresImpl &&
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
  _$$DurationresImplCopyWith<_$DurationresImpl> get copyWith =>
      __$$DurationresImplCopyWithImpl<_$DurationresImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationresImplToJson(
      this,
    );
  }
}

abstract class _Durationres implements Durationres {
  const factory _Durationres(
      {@JsonKey(toJson: parseInteger, fromJson: parseInteger) final int? value,
      final String? unit,
      @JsonKey(toJson: parseInteger, fromJson: parseInteger)
      final int? numberOfDays}) = _$DurationresImpl;

  factory _Durationres.fromJson(Map<String, dynamic> json) =
      _$DurationresImpl.fromJson;

  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get value;
  @override
  String? get unit;
  @override
  @JsonKey(toJson: parseInteger, fromJson: parseInteger)
  int? get numberOfDays;
  @override
  @JsonKey(ignore: true)
  _$$DurationresImplCopyWith<_$DurationresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get dateOfBirth => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  bool? get isVerified => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      bool? isVerified,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? profession = freezed,
    Object? address = freezed,
    Object? profileImage = freezed,
    Object? isVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      String? name,
      String? phoneNumber,
      String? dateOfBirth,
      String? gender,
      String? profession,
      String? address,
      String? profileImage,
      bool? isVerified,
      String? createdAt,
      String? updatedAt});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? profession = freezed,
    Object? address = freezed,
    Object? profileImage = freezed,
    Object? isVerified = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      profession: freezed == profession
          ? _value.profession
          : profession // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
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
class _$UserImpl implements _User {
  const _$UserImpl(
      {@JsonKey(name: '_id') this.id,
      this.name,
      this.phoneNumber,
      this.dateOfBirth,
      this.gender,
      this.profession,
      this.address,
      this.profileImage,
      this.isVerified,
      this.createdAt,
      this.updatedAt});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? dateOfBirth;
  @override
  final String? gender;
  @override
  final String? profession;
  @override
  final String? address;
  @override
  final String? profileImage;
  @override
  final bool? isVerified;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'User(id: $id, name: $name, phoneNumber: $phoneNumber, dateOfBirth: $dateOfBirth, gender: $gender, profession: $profession, address: $address, profileImage: $profileImage, isVerified: $isVerified, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
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
      name,
      phoneNumber,
      dateOfBirth,
      gender,
      profession,
      address,
      profileImage,
      isVerified,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@JsonKey(name: '_id') final String? id,
      final String? name,
      final String? phoneNumber,
      final String? dateOfBirth,
      final String? gender,
      final String? profession,
      final String? address,
      final String? profileImage,
      final bool? isVerified,
      final String? createdAt,
      final String? updatedAt}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get name;
  @override
  String? get phoneNumber;
  @override
  String? get dateOfBirth;
  @override
  String? get gender;
  @override
  String? get profession;
  @override
  String? get address;
  @override
  String? get profileImage;
  @override
  bool? get isVerified;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
