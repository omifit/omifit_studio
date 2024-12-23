// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_subscription_byuser_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetallsubscriptionByUserResImpl _$$GetallsubscriptionByUserResImplFromJson(
        Map<String, dynamic> json) =>
    _$GetallsubscriptionByUserResImpl(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      body: json['body'] == null
          ? null
          : Body.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetallsubscriptionByUserResImplToJson(
        _$GetallsubscriptionByUserResImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'body': instance.body,
    };

_$BodyImpl _$$BodyImplFromJson(Map<String, dynamic> json) => _$BodyImpl(
      subscriptions: (json['subscriptions'] as List<dynamic>?)
          ?.map((e) => Subscription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BodyImplToJson(_$BodyImpl instance) =>
    <String, dynamic>{
      'subscriptions': instance.subscriptions,
    };

_$SubscriptionImpl _$$SubscriptionImplFromJson(Map<String, dynamic> json) =>
    _$SubscriptionImpl(
      id: json['_id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      organization: json['organization'] as String?,
      plan: json['plan'] == null
          ? null
          : Plan.fromJson(json['plan'] as Map<String, dynamic>),
      totalAmount: parseInteger(json['totalAmount']),
      paidAmount: parseInteger(json['paidAmount']),
      pendingAmount: parseInteger(json['pendingAmount']),
      remark: json['remark'] as String?,
      paymentForm: json['paymentForm'] as String?,
      membershipStartDate: json['membershipStartDate'] as String?,
      membershipEndDate: json['membershipEndDate'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$SubscriptionImplToJson(_$SubscriptionImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'organization': instance.organization,
      'plan': instance.plan,
      'totalAmount': parseInteger(instance.totalAmount),
      'paidAmount': parseInteger(instance.paidAmount),
      'pendingAmount': parseInteger(instance.pendingAmount),
      'remark': instance.remark,
      'paymentForm': instance.paymentForm,
      'membershipStartDate': instance.membershipStartDate,
      'membershipEndDate': instance.membershipEndDate,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$PlanImpl _$$PlanImplFromJson(Map<String, dynamic> json) => _$PlanImpl(
      duration: json['duration'] == null
          ? null
          : Durationres.fromJson(json['duration'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      organization: json['organization'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: parseInteger(json['price']),
      fakeAmount: parseInteger(json['fakeAmount']),
      isActive: json['isActive'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$PlanImplToJson(_$PlanImpl instance) =>
    <String, dynamic>{
      'duration': instance.duration,
      '_id': instance.id,
      'organization': instance.organization,
      'name': instance.name,
      'description': instance.description,
      'price': parseInteger(instance.price),
      'fakeAmount': parseInteger(instance.fakeAmount),
      'isActive': instance.isActive,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$DurationresImpl _$$DurationresImplFromJson(Map<String, dynamic> json) =>
    _$DurationresImpl(
      value: parseInteger(json['value']),
      unit: json['unit'] as String?,
      numberOfDays: parseInteger(json['numberOfDays']),
    );

Map<String, dynamic> _$$DurationresImplToJson(_$DurationresImpl instance) =>
    <String, dynamic>{
      'value': parseInteger(instance.value),
      'unit': instance.unit,
      'numberOfDays': parseInteger(instance.numberOfDays),
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      gender: json['gender'] as String?,
      profession: json['profession'] as String?,
      address: json['address'] as String?,
      profileImage: json['profileImage'] as String?,
      isVerified: json['isVerified'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'profession': instance.profession,
      'address': instance.address,
      'profileImage': instance.profileImage,
      'isVerified': instance.isVerified,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
