// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditSubscriptionReq _$EditSubscriptionReqFromJson(Map<String, dynamic> json) {
  return _EditSubscriptionReq.fromJson(json);
}

/// @nodoc
mixin _$EditSubscriptionReq {
  List<EditSubscriptionDetail>? get editSubscriptionDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSubscriptionReqCopyWith<EditSubscriptionReq> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSubscriptionReqCopyWith<$Res> {
  factory $EditSubscriptionReqCopyWith(
          EditSubscriptionReq value, $Res Function(EditSubscriptionReq) then) =
      _$EditSubscriptionReqCopyWithImpl<$Res, EditSubscriptionReq>;
  @useResult
  $Res call({List<EditSubscriptionDetail>? editSubscriptionDetails});
}

/// @nodoc
class _$EditSubscriptionReqCopyWithImpl<$Res, $Val extends EditSubscriptionReq>
    implements $EditSubscriptionReqCopyWith<$Res> {
  _$EditSubscriptionReqCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editSubscriptionDetails = freezed,
  }) {
    return _then(_value.copyWith(
      editSubscriptionDetails: freezed == editSubscriptionDetails
          ? _value.editSubscriptionDetails
          : editSubscriptionDetails // ignore: cast_nullable_to_non_nullable
              as List<EditSubscriptionDetail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditSubscriptionReqImplCopyWith<$Res>
    implements $EditSubscriptionReqCopyWith<$Res> {
  factory _$$EditSubscriptionReqImplCopyWith(_$EditSubscriptionReqImpl value,
          $Res Function(_$EditSubscriptionReqImpl) then) =
      __$$EditSubscriptionReqImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EditSubscriptionDetail>? editSubscriptionDetails});
}

/// @nodoc
class __$$EditSubscriptionReqImplCopyWithImpl<$Res>
    extends _$EditSubscriptionReqCopyWithImpl<$Res, _$EditSubscriptionReqImpl>
    implements _$$EditSubscriptionReqImplCopyWith<$Res> {
  __$$EditSubscriptionReqImplCopyWithImpl(_$EditSubscriptionReqImpl _value,
      $Res Function(_$EditSubscriptionReqImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editSubscriptionDetails = freezed,
  }) {
    return _then(_$EditSubscriptionReqImpl(
      editSubscriptionDetails: freezed == editSubscriptionDetails
          ? _value._editSubscriptionDetails
          : editSubscriptionDetails // ignore: cast_nullable_to_non_nullable
              as List<EditSubscriptionDetail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditSubscriptionReqImpl implements _EditSubscriptionReq {
  const _$EditSubscriptionReqImpl(
      {final List<EditSubscriptionDetail>? editSubscriptionDetails})
      : _editSubscriptionDetails = editSubscriptionDetails;

  factory _$EditSubscriptionReqImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditSubscriptionReqImplFromJson(json);

  final List<EditSubscriptionDetail>? _editSubscriptionDetails;
  @override
  List<EditSubscriptionDetail>? get editSubscriptionDetails {
    final value = _editSubscriptionDetails;
    if (value == null) return null;
    if (_editSubscriptionDetails is EqualUnmodifiableListView)
      return _editSubscriptionDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EditSubscriptionReq(editSubscriptionDetails: $editSubscriptionDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSubscriptionReqImpl &&
            const DeepCollectionEquality().equals(
                other._editSubscriptionDetails, _editSubscriptionDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_editSubscriptionDetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSubscriptionReqImplCopyWith<_$EditSubscriptionReqImpl> get copyWith =>
      __$$EditSubscriptionReqImplCopyWithImpl<_$EditSubscriptionReqImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditSubscriptionReqImplToJson(
      this,
    );
  }
}

abstract class _EditSubscriptionReq implements EditSubscriptionReq {
  const factory _EditSubscriptionReq(
          {final List<EditSubscriptionDetail>? editSubscriptionDetails}) =
      _$EditSubscriptionReqImpl;

  factory _EditSubscriptionReq.fromJson(Map<String, dynamic> json) =
      _$EditSubscriptionReqImpl.fromJson;

  @override
  List<EditSubscriptionDetail>? get editSubscriptionDetails;
  @override
  @JsonKey(ignore: true)
  _$$EditSubscriptionReqImplCopyWith<_$EditSubscriptionReqImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EditSubscriptionDetail _$EditSubscriptionDetailFromJson(
    Map<String, dynamic> json) {
  return _EditSubscriptionDetail.fromJson(json);
}

/// @nodoc
mixin _$EditSubscriptionDetail {
  String? get subscriptionId => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get planId => throw _privateConstructorUsedError;
  String? get couponId => throw _privateConstructorUsedError;
  int? get totalAmount => throw _privateConstructorUsedError;
  int? get paidAmount => throw _privateConstructorUsedError;
  int? get pendingAmount => throw _privateConstructorUsedError;
  String? get remark => throw _privateConstructorUsedError;
  String? get paymentForm => throw _privateConstructorUsedError;
  String? get membershipStartDate => throw _privateConstructorUsedError;
  String? get membershipEndDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSubscriptionDetailCopyWith<EditSubscriptionDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSubscriptionDetailCopyWith<$Res> {
  factory $EditSubscriptionDetailCopyWith(EditSubscriptionDetail value,
          $Res Function(EditSubscriptionDetail) then) =
      _$EditSubscriptionDetailCopyWithImpl<$Res, EditSubscriptionDetail>;
  @useResult
  $Res call(
      {String? subscriptionId,
      String? userId,
      String? planId,
      String? couponId,
      int? totalAmount,
      int? paidAmount,
      int? pendingAmount,
      String? remark,
      String? paymentForm,
      String? membershipStartDate,
      String? membershipEndDate});
}

/// @nodoc
class _$EditSubscriptionDetailCopyWithImpl<$Res,
        $Val extends EditSubscriptionDetail>
    implements $EditSubscriptionDetailCopyWith<$Res> {
  _$EditSubscriptionDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = freezed,
    Object? userId = freezed,
    Object? planId = freezed,
    Object? couponId = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? pendingAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
  }) {
    return _then(_value.copyWith(
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditSubscriptionDetailImplCopyWith<$Res>
    implements $EditSubscriptionDetailCopyWith<$Res> {
  factory _$$EditSubscriptionDetailImplCopyWith(
          _$EditSubscriptionDetailImpl value,
          $Res Function(_$EditSubscriptionDetailImpl) then) =
      __$$EditSubscriptionDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? subscriptionId,
      String? userId,
      String? planId,
      String? couponId,
      int? totalAmount,
      int? paidAmount,
      int? pendingAmount,
      String? remark,
      String? paymentForm,
      String? membershipStartDate,
      String? membershipEndDate});
}

/// @nodoc
class __$$EditSubscriptionDetailImplCopyWithImpl<$Res>
    extends _$EditSubscriptionDetailCopyWithImpl<$Res,
        _$EditSubscriptionDetailImpl>
    implements _$$EditSubscriptionDetailImplCopyWith<$Res> {
  __$$EditSubscriptionDetailImplCopyWithImpl(
      _$EditSubscriptionDetailImpl _value,
      $Res Function(_$EditSubscriptionDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionId = freezed,
    Object? userId = freezed,
    Object? planId = freezed,
    Object? couponId = freezed,
    Object? totalAmount = freezed,
    Object? paidAmount = freezed,
    Object? pendingAmount = freezed,
    Object? remark = freezed,
    Object? paymentForm = freezed,
    Object? membershipStartDate = freezed,
    Object? membershipEndDate = freezed,
  }) {
    return _then(_$EditSubscriptionDetailImpl(
      subscriptionId: freezed == subscriptionId
          ? _value.subscriptionId
          : subscriptionId // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditSubscriptionDetailImpl implements _EditSubscriptionDetail {
  const _$EditSubscriptionDetailImpl(
      {this.subscriptionId,
      this.userId,
      this.planId,
      this.couponId,
      this.totalAmount,
      this.paidAmount,
      this.pendingAmount,
      this.remark,
      this.paymentForm,
      this.membershipStartDate,
      this.membershipEndDate});

  factory _$EditSubscriptionDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditSubscriptionDetailImplFromJson(json);

  @override
  final String? subscriptionId;
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
  String toString() {
    return 'EditSubscriptionDetail(subscriptionId: $subscriptionId, userId: $userId, planId: $planId, couponId: $couponId, totalAmount: $totalAmount, paidAmount: $paidAmount, pendingAmount: $pendingAmount, remark: $remark, paymentForm: $paymentForm, membershipStartDate: $membershipStartDate, membershipEndDate: $membershipEndDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSubscriptionDetailImpl &&
            (identical(other.subscriptionId, subscriptionId) ||
                other.subscriptionId == subscriptionId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
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
                other.membershipEndDate == membershipEndDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      subscriptionId,
      userId,
      planId,
      couponId,
      totalAmount,
      paidAmount,
      pendingAmount,
      remark,
      paymentForm,
      membershipStartDate,
      membershipEndDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditSubscriptionDetailImplCopyWith<_$EditSubscriptionDetailImpl>
      get copyWith => __$$EditSubscriptionDetailImplCopyWithImpl<
          _$EditSubscriptionDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditSubscriptionDetailImplToJson(
      this,
    );
  }
}

abstract class _EditSubscriptionDetail implements EditSubscriptionDetail {
  const factory _EditSubscriptionDetail(
      {final String? subscriptionId,
      final String? userId,
      final String? planId,
      final String? couponId,
      final int? totalAmount,
      final int? paidAmount,
      final int? pendingAmount,
      final String? remark,
      final String? paymentForm,
      final String? membershipStartDate,
      final String? membershipEndDate}) = _$EditSubscriptionDetailImpl;

  factory _EditSubscriptionDetail.fromJson(Map<String, dynamic> json) =
      _$EditSubscriptionDetailImpl.fromJson;

  @override
  String? get subscriptionId;
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
  @JsonKey(ignore: true)
  _$$EditSubscriptionDetailImplCopyWith<_$EditSubscriptionDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EditSubscriptionRes _$EditSubscriptionResFromJson(Map<String, dynamic> json) {
  return _EditSubscriptionRes.fromJson(json);
}

/// @nodoc
mixin _$EditSubscriptionRes {
  bool? get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditSubscriptionResCopyWith<EditSubscriptionRes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditSubscriptionResCopyWith<$Res> {
  factory $EditSubscriptionResCopyWith(
          EditSubscriptionRes value, $Res Function(EditSubscriptionRes) then) =
      _$EditSubscriptionResCopyWithImpl<$Res, EditSubscriptionRes>;
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class _$EditSubscriptionResCopyWithImpl<$Res, $Val extends EditSubscriptionRes>
    implements $EditSubscriptionResCopyWith<$Res> {
  _$EditSubscriptionResCopyWithImpl(this._value, this._then);

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
abstract class _$$EditSubscriptionResImplCopyWith<$Res>
    implements $EditSubscriptionResCopyWith<$Res> {
  factory _$$EditSubscriptionResImplCopyWith(_$EditSubscriptionResImpl value,
          $Res Function(_$EditSubscriptionResImpl) then) =
      __$$EditSubscriptionResImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, String? message, dynamic body});
}

/// @nodoc
class __$$EditSubscriptionResImplCopyWithImpl<$Res>
    extends _$EditSubscriptionResCopyWithImpl<$Res, _$EditSubscriptionResImpl>
    implements _$$EditSubscriptionResImplCopyWith<$Res> {
  __$$EditSubscriptionResImplCopyWithImpl(_$EditSubscriptionResImpl _value,
      $Res Function(_$EditSubscriptionResImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? message = freezed,
    Object? body = freezed,
  }) {
    return _then(_$EditSubscriptionResImpl(
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
class _$EditSubscriptionResImpl implements _EditSubscriptionRes {
  const _$EditSubscriptionResImpl({this.success, this.message, this.body});

  factory _$EditSubscriptionResImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditSubscriptionResImplFromJson(json);

  @override
  final bool? success;
  @override
  final String? message;
  @override
  final dynamic body;

  @override
  String toString() {
    return 'EditSubscriptionRes(success: $success, message: $message, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditSubscriptionResImpl &&
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
  _$$EditSubscriptionResImplCopyWith<_$EditSubscriptionResImpl> get copyWith =>
      __$$EditSubscriptionResImplCopyWithImpl<_$EditSubscriptionResImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditSubscriptionResImplToJson(
      this,
    );
  }
}

abstract class _EditSubscriptionRes implements EditSubscriptionRes {
  const factory _EditSubscriptionRes(
      {final bool? success,
      final String? message,
      final dynamic body}) = _$EditSubscriptionResImpl;

  factory _EditSubscriptionRes.fromJson(Map<String, dynamic> json) =
      _$EditSubscriptionResImpl.fromJson;

  @override
  bool? get success;
  @override
  String? get message;
  @override
  dynamic get body;
  @override
  @JsonKey(ignore: true)
  _$$EditSubscriptionResImplCopyWith<_$EditSubscriptionResImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
