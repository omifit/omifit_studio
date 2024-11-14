// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchasePlanReq _$PurchasePlanReqFromJson(Map<String, dynamic> json) {
  return _PurchasePlanReq.fromJson(json);
}

/// @nodoc
mixin _$PurchasePlanReq {
  List<SubscriptionDetail>? get subscriptionDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasePlanReqCopyWith<PurchasePlanReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePlanReqCopyWith<$Res> {
  factory $PurchasePlanReqCopyWith(
          PurchasePlanReq value, $Res Function(PurchasePlanReq) then) =
      _$PurchasePlanReqCopyWithImpl<$Res, PurchasePlanReq>;
  @useResult
  $Res call({List<SubscriptionDetail>? subscriptionDetails});
}

/// @nodoc
class _$PurchasePlanReqCopyWithImpl<$Res, $Val extends PurchasePlanReq>
    implements $PurchasePlanReqCopyWith<$Res> {
  _$PurchasePlanReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionDetails = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptionDetails: freezed == subscriptionDetails
          ? _value.subscriptionDetails
          : subscriptionDetails // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchasePlanReqImplCopyWith<$Res>
    implements $PurchasePlanReqCopyWith<$Res> {
  factory _$$PurchasePlanReqImplCopyWith(_$PurchasePlanReqImpl value,
          $Res Function(_$PurchasePlanReqImpl) then) =
      __$$PurchasePlanReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubscriptionDetail>? subscriptionDetails});
}

/// @nodoc
class __$$PurchasePlanReqImplCopyWithImpl<$Res>
    extends _$PurchasePlanReqCopyWithImpl<$Res, _$PurchasePlanReqImpl>
    implements _$$PurchasePlanReqImplCopyWith<$Res> {
  __$$PurchasePlanReqImplCopyWithImpl(
      _$PurchasePlanReqImpl _value, $Res Function(_$PurchasePlanReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionDetails = freezed,
  }) {
    return _then(_$PurchasePlanReqImpl(
      subscriptionDetails: freezed == subscriptionDetails
          ? _value._subscriptionDetails
          : subscriptionDetails // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchasePlanReqImpl implements _PurchasePlanReq {
  const _$PurchasePlanReqImpl(
      {final List<SubscriptionDetail>? subscriptionDetails})
      : _subscriptionDetails = subscriptionDetails;

  factory _$PurchasePlanReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchasePlanReqImplFromJson(json);

  final List<SubscriptionDetail>? _subscriptionDetails;
  @override
  List<SubscriptionDetail>? get subscriptionDetails {
    final value = _subscriptionDetails;
    if (value == null) return null;
    if (_subscriptionDetails is EqualUnmodifiableListView)
      return _subscriptionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PurchasePlanReq(subscriptionDetails: $subscriptionDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchasePlanReqImpl &&
            const DeepCollectionEquality()
                .equals(other._subscriptionDetails, _subscriptionDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_subscriptionDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchasePlanReqImplCopyWith<_$PurchasePlanReqImpl> get copyWith =>
      __$$PurchasePlanReqImplCopyWithImpl<_$PurchasePlanReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchasePlanReqImplToJson(
      this,
    );
  }
}

abstract class _PurchasePlanReq implements PurchasePlanReq {
  const factory _PurchasePlanReq(
          {final List<SubscriptionDetail>? subscriptionDetails}) =
      _$PurchasePlanReqImpl;

  factory _PurchasePlanReq.fromJson(Map<String, dynamic> json) =
      _$PurchasePlanReqImpl.fromJson;

  @override
  List<SubscriptionDetail>? get subscriptionDetails;
  @override
  @JsonKey(ignore: true)
  _$$PurchasePlanReqImplCopyWith<_$PurchasePlanReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionDetail _$SubscriptionDetailFromJson(Map<String, dynamic> json) {
  return _SubscriptionDetail.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionDetail {
  String? get userId => throw _privateConstructorUsedError;
  String? get planId => throw _privateConstructorUsedError;
  String? get couponId => throw _privateConstructorUsedError;
  int? get totalAmount => throw _privateConstructorUsedError;
  int? get paidAmount => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  String? get paymentForm => throw _privateConstructorUsedError;
  DateTime? get membershipStartDate => throw _privateConstructorUsedError;
  DateTime? get membershipEndDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionDetailCopyWith<SubscriptionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDetailCopyWith<$Res> {
  factory $SubscriptionDetailCopyWith(
          SubscriptionDetail value, $Res Function(SubscriptionDetail) then) =
      _$SubscriptionDetailCopyWithImpl<$Res, SubscriptionDetail>;
  @useResult
  $Res call(
      {String? userId,
      String? planId,
      String? couponId,
      int? totalAmount,
      int? paidAmount,
      String? remark,
      String? paymentForm,
      DateTime? membershipStartDate,
      DateTime? membershipEndDate});
}

/// @nodoc
class _$SubscriptionDetailCopyWithImpl<$Res, $Val extends SubscriptionDetail>
    implements $SubscriptionDetailCopyWith<$Res> {
  _$SubscriptionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? planId = freezed,
    Object? couponId = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionDetailImplCopyWith<$Res>
    implements $SubscriptionDetailCopyWith<$Res> {
  factory _$$SubscriptionDetailImplCopyWith(_$SubscriptionDetailImpl value,
          $Res Function(_$SubscriptionDetailImpl) then) =
      __$$SubscriptionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? planId,
      String? couponId,
      int? totalAmount,
      int? paidAmount,
      String? remark,
      String? paymentForm,
      DateTime? membershipStartDate,
      DateTime? membershipEndDate});
}

/// @nodoc
class __$$SubscriptionDetailImplCopyWithImpl<$Res>
    extends _$SubscriptionDetailCopyWithImpl<$Res, _$SubscriptionDetailImpl>
    implements _$$SubscriptionDetailImplCopyWith<$Res> {
  __$$SubscriptionDetailImplCopyWithImpl(_$SubscriptionDetailImpl _value,
      $Res Function(_$SubscriptionDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? planId = freezed,
    Object? couponId = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
  }) {
    return _then(_$SubscriptionDetailImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
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
              as DateTime?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionDetailImpl implements _SubscriptionDetail {
  const _$SubscriptionDetailImpl(
      {this.userId,
      this.planId,
      this.couponId,
      this.totalAmount,
      this.paidAmount,
      this.remark,
      this.paymentForm,
      this.membershipStartDate,
      this.membershipEndDate});

  factory _$SubscriptionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionDetailImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? planId;
  @override
  final String? couponId;
  @override
  final int? totalAmount;
  @override
  final int? paidAmount;
  @override
  final String? remark;
  @override
  final String? paymentForm;
  @override
  final DateTime? membershipStartDate;
  @override
  final DateTime? membershipEndDate;

  @override
  String toString() {
    return 'SubscriptionDetail(userId: $userId, planId: $planId, couponId: $couponId, totalAmount: $totalAmount, paidAmount: $paidAmount, remark: $remark, paymentForm: $paymentForm, membershipStartDate: $membershipStartDate, membershipEndDate: $membershipEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionDetailImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.remark, remark) || other.remark == remark) &&
            (identical(other.paymentForm, paymentForm) ||
                other.paymentForm == paymentForm) &&
            (identical(other.membershipStartDate, membershipStartDate) ||
                other.membershipStartDate == membershipStartDate) &&
            (identical(other.membershipEndDate, membershipEndDate) ||
                other.membershipEndDate == membershipEndDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      planId,
      couponId,
      totalAmount,
      paidAmount,
      remark,
      paymentForm,
      membershipStartDate,
      membershipEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionDetailImplCopyWith<_$SubscriptionDetailImpl> get copyWith =>
      __$$SubscriptionDetailImplCopyWithImpl<_$SubscriptionDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionDetailImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionDetail implements SubscriptionDetail {
  const factory _SubscriptionDetail(
      {final String? userId,
      final String? planId,
      final String? couponId,
      final int? totalAmount,
      final int? paidAmount,
      final String? remark,
      final String? paymentForm,
      final DateTime? membershipStartDate,
      final DateTime? membershipEndDate}) = _$SubscriptionDetailImpl;

  factory _SubscriptionDetail.fromJson(Map<String, dynamic> json) =
      _$SubscriptionDetailImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get planId;
  @override
  String? get couponId;
  @override
  int? get totalAmount;
  @override
  int? get paidAmount;
  @override
  String? get remark;
  @override
  String? get paymentForm;
  @override
  DateTime? get membershipStartDate;
  @override
  DateTime? get membershipEndDate;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionDetailImplCopyWith<_$SubscriptionDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PurchasePlanRes _$PurchasePlanResFromJson(Map<String, dynamic> json) {
  return _PurchasePlanRes.fromJson(json);
}

/// @nodoc
mixin _$PurchasePlanRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchasePlanResCopyWith<PurchasePlanRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchasePlanResCopyWith<$Res> {
  factory $PurchasePlanResCopyWith(
          PurchasePlanRes value, $Res Function(PurchasePlanRes) then) =
      _$PurchasePlanResCopyWithImpl<$Res, PurchasePlanRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$PurchasePlanResCopyWithImpl<$Res, $Val extends PurchasePlanRes>
    implements $PurchasePlanResCopyWith<$Res> {
  _$PurchasePlanResCopyWithImpl(this._value, this._then);

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
abstract class _$$PurchasePlanResImplCopyWith<$Res>
    implements $PurchasePlanResCopyWith<$Res> {
  factory _$$PurchasePlanResImplCopyWith(_$PurchasePlanResImpl value,
          $Res Function(_$PurchasePlanResImpl) then) =
      __$$PurchasePlanResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$PurchasePlanResImplCopyWithImpl<$Res>
    extends _$PurchasePlanResCopyWithImpl<$Res, _$PurchasePlanResImpl>
    implements _$$PurchasePlanResImplCopyWith<$Res> {
  __$$PurchasePlanResImplCopyWithImpl(
      _$PurchasePlanResImpl _value, $Res Function(_$PurchasePlanResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$PurchasePlanResImpl(
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
class _$PurchasePlanResImpl implements _PurchasePlanRes {
  const _$PurchasePlanResImpl({this.success, this.message, this.body});

  factory _$PurchasePlanResImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchasePlanResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'PurchasePlanRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchasePlanResImpl &&
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
  _$$PurchasePlanResImplCopyWith<_$PurchasePlanResImpl> get copyWith =>
      __$$PurchasePlanResImplCopyWithImpl<_$PurchasePlanResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchasePlanResImplToJson(
      this,
    );
  }
}

abstract class _PurchasePlanRes implements PurchasePlanRes {
  const factory _PurchasePlanRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$PurchasePlanResImpl;

  factory _PurchasePlanRes.fromJson(Map<String, dynamic> json) =
      _$PurchasePlanResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$PurchasePlanResImplCopyWith<_$PurchasePlanResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedPlan _$SelectedPlanFromJson(Map<String, dynamic> json) {
  return _SelectedPlan.fromJson(json);
}

/// @nodoc
mixin _$SelectedPlan {
  String? get userId => throw _privateConstructorUsedError;
  String? get planId => throw _privateConstructorUsedError;
  String? get planName => throw _privateConstructorUsedError;
  String? get couponId => throw _privateConstructorUsedError;
  int? get totalAmount => throw _privateConstructorUsedError;
  int? get paidAmount => throw _privateConstructorUsedError;
  int? get dueAmount => throw _privateConstructorUsedError;
  String? get paymentForm => throw _privateConstructorUsedError;
  DateTime? get membershipStartDate => throw _privateConstructorUsedError;
  DateTime? get membershipEndDate => throw _privateConstructorUsedError;
  int? get durationValue => throw _privateConstructorUsedError;
  String? get durationUnit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedPlanCopyWith<SelectedPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPlanCopyWith<$Res> {
  factory $SelectedPlanCopyWith(
          SelectedPlan value, $Res Function(SelectedPlan) then) =
      _$SelectedPlanCopyWithImpl<$Res, SelectedPlan>;
  @useResult
  $Res call(
      {String? userId,
      String? planId,
      String? planName,
      String? couponId,
      int? totalAmount,
      int? paidAmount,
      int? dueAmount,
      String? paymentForm,
      DateTime? membershipStartDate,
      DateTime? membershipEndDate,
      int? durationValue,
      String? durationUnit});
}

/// @nodoc
class _$SelectedPlanCopyWithImpl<$Res, $Val extends SelectedPlan>
    implements $SelectedPlanCopyWith<$Res> {
  _$SelectedPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? planId = freezed,
    Object? planName = freezed,
    Object? couponId = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? dueAmount = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? durationValue = freezed,
    Object? durationUnit = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dueAmount: freezed == dueAmount
          ? _value.dueAmount
          : dueAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentForm: freezed == paymentForm
          ? _value.paymentForm
          : paymentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStartDate: freezed == membershipStartDate
          ? _value.membershipStartDate
          : membershipStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      durationValue: freezed == durationValue
          ? _value.durationValue
          : durationValue // ignore: cast_nullable_to_non_nullable
              as int?,
      durationUnit: freezed == durationUnit
          ? _value.durationUnit
          : durationUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedPlanImplCopyWith<$Res>
    implements $SelectedPlanCopyWith<$Res> {
  factory _$$SelectedPlanImplCopyWith(
          _$SelectedPlanImpl value, $Res Function(_$SelectedPlanImpl) then) =
      __$$SelectedPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? planId,
      String? planName,
      String? couponId,
      int? totalAmount,
      int? paidAmount,
      int? dueAmount,
      String? paymentForm,
      DateTime? membershipStartDate,
      DateTime? membershipEndDate,
      int? durationValue,
      String? durationUnit});
}

/// @nodoc
class __$$SelectedPlanImplCopyWithImpl<$Res>
    extends _$SelectedPlanCopyWithImpl<$Res, _$SelectedPlanImpl>
    implements _$$SelectedPlanImplCopyWith<$Res> {
  __$$SelectedPlanImplCopyWithImpl(
      _$SelectedPlanImpl _value, $Res Function(_$SelectedPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? planId = freezed,
    Object? planName = freezed,
    Object? couponId = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? dueAmount = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
    Object? durationValue = freezed,
    Object? durationUnit = freezed,
  }) {
    return _then(_$SelectedPlanImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      planId: freezed == planId
          ? _value.planId
          : planId // ignore: cast_nullable_to_non_nullable
              as String?,
      planName: freezed == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponId: freezed == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String?,
      totalAmount: freezed == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paidAmount: freezed == paidAmount
          ? _value.paidAmount
          : paidAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      dueAmount: freezed == dueAmount
          ? _value.dueAmount
          : dueAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentForm: freezed == paymentForm
          ? _value.paymentForm
          : paymentForm // ignore: cast_nullable_to_non_nullable
              as String?,
      membershipStartDate: freezed == membershipStartDate
          ? _value.membershipStartDate
          : membershipStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      membershipEndDate: freezed == membershipEndDate
          ? _value.membershipEndDate
          : membershipEndDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      durationValue: freezed == durationValue
          ? _value.durationValue
          : durationValue // ignore: cast_nullable_to_non_nullable
              as int?,
      durationUnit: freezed == durationUnit
          ? _value.durationUnit
          : durationUnit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedPlanImpl implements _SelectedPlan {
  const _$SelectedPlanImpl(
      {this.userId,
      this.planId,
      this.planName,
      this.couponId,
      this.totalAmount,
      this.paidAmount,
      this.dueAmount,
      this.paymentForm,
      this.membershipStartDate,
      this.membershipEndDate,
      this.durationValue,
      this.durationUnit});

  factory _$SelectedPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedPlanImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? planId;
  @override
  final String? planName;
  @override
  final String? couponId;
  @override
  final int? totalAmount;
  @override
  final int? paidAmount;
  @override
  final int? dueAmount;
  @override
  final String? paymentForm;
  @override
  final DateTime? membershipStartDate;
  @override
  final DateTime? membershipEndDate;
  @override
  final int? durationValue;
  @override
  final String? durationUnit;

  @override
  String toString() {
    return 'SelectedPlan(userId: $userId, planId: $planId, planName: $planName, couponId: $couponId, totalAmount: $totalAmount, paidAmount: $paidAmount, dueAmount: $dueAmount, paymentForm: $paymentForm, membershipStartDate: $membershipStartDate, membershipEndDate: $membershipEndDate, durationValue: $durationValue, durationUnit: $durationUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPlanImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.paidAmount, paidAmount) ||
                other.paidAmount == paidAmount) &&
            (identical(other.dueAmount, dueAmount) ||
                other.dueAmount == dueAmount) &&
            (identical(other.paymentForm, paymentForm) ||
                other.paymentForm == paymentForm) &&
            (identical(other.membershipStartDate, membershipStartDate) ||
                other.membershipStartDate == membershipStartDate) &&
            (identical(other.membershipEndDate, membershipEndDate) ||
                other.membershipEndDate == membershipEndDate) &&
            (identical(other.durationValue, durationValue) ||
                other.durationValue == durationValue) &&
            (identical(other.durationUnit, durationUnit) ||
                other.durationUnit == durationUnit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      planId,
      planName,
      couponId,
      totalAmount,
      paidAmount,
      dueAmount,
      paymentForm,
      membershipStartDate,
      membershipEndDate,
      durationValue,
      durationUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPlanImplCopyWith<_$SelectedPlanImpl> get copyWith =>
      __$$SelectedPlanImplCopyWithImpl<_$SelectedPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedPlanImplToJson(
      this,
    );
  }
}

abstract class _SelectedPlan implements SelectedPlan {
  const factory _SelectedPlan(
      {final String? userId,
      final String? planId,
      final String? planName,
      final String? couponId,
      final int? totalAmount,
      final int? paidAmount,
      final int? dueAmount,
      final String? paymentForm,
      final DateTime? membershipStartDate,
      final DateTime? membershipEndDate,
      final int? durationValue,
      final String? durationUnit}) = _$SelectedPlanImpl;

  factory _SelectedPlan.fromJson(Map<String, dynamic> json) =
      _$SelectedPlanImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get planId;
  @override
  String? get planName;
  @override
  String? get couponId;
  @override
  int? get totalAmount;
  @override
  int? get paidAmount;
  @override
  int? get dueAmount;
  @override
  String? get paymentForm;
  @override
  DateTime? get membershipStartDate;
  @override
  DateTime? get membershipEndDate;
  @override
  int? get durationValue;
  @override
  String? get durationUnit;
  @override
  @JsonKey(ignore: true)
  _$$SelectedPlanImplCopyWith<_$SelectedPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
