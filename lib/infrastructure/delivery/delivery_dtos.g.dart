// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryDtoImpl _$$DeliveryDtoImplFromJson(Map<String, dynamic> json) =>
    _$DeliveryDtoImpl(
      id: json['_id'] as String,
      order: orderFromJson(json['order']),
      pickupAddress:
          AddressDto.fromJson(json['pickupAddress'] as Map<String, dynamic>),
      dropAddress:
          AddressDto.fromJson(json['dropAddress'] as Map<String, dynamic>),
      deliveryStatus: json['deliveryStatus'] as String,
      deliveryCode: json['deliveryCode'] as String,
      active: json['active'] as bool,
      fulfilmentPartner: json['fulfilmentPartner'] as String?,
    );

Map<String, dynamic> _$$DeliveryDtoImplToJson(_$DeliveryDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'order': instance.order,
      'pickupAddress': instance.pickupAddress,
      'dropAddress': instance.dropAddress,
      'deliveryStatus': instance.deliveryStatus,
      'deliveryCode': instance.deliveryCode,
      'active': instance.active,
      'fulfilmentPartner': instance.fulfilmentPartner,
    };

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: json['_id'] as String?,
      buyerAddress: json['buyerAddress'] == null
          ? null
          : AddressDto.fromJson(json['buyerAddress'] as Map<String, dynamic>),
      sellerAddress: json['sellerAddress'] == null
          ? null
          : AddressDto.fromJson(json['sellerAddress'] as Map<String, dynamic>),
      product: json['product'] as String?,
      seller: json['seller'] == null
          ? null
          : UserDto.fromJson(json['seller'] as Map<String, dynamic>),
      buyer: json['buyer'] == null
          ? null
          : UserDto.fromJson(json['buyer'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toInt(),
      status: json['status'] as String?,
      transitLogs: (json['transitLogs'] as List<dynamic>?)
          ?.map((e) => TransitLogDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'buyerAddress': instance.buyerAddress,
      'sellerAddress': instance.sellerAddress,
      'product': instance.product,
      'seller': instance.seller,
      'buyer': instance.buyer,
      'price': instance.price,
      'status': instance.status,
      'transitLogs': instance.transitLogs,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$TransitLogDtoImpl _$$TransitLogDtoImplFromJson(Map<String, dynamic> json) =>
    _$TransitLogDtoImpl(
      message: json['message'] as String,
      id: json['_id'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$TransitLogDtoImplToJson(_$TransitLogDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      '_id': instance.id,
      'time': instance.time.toIso8601String(),
    };
