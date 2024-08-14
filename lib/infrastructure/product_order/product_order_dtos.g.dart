// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_order_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductOrderDtoImpl _$$ProductOrderDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductOrderDtoImpl(
      buyerAddress:
          AddressDto.fromJson(json['buyerAddress'] as Map<String, dynamic>),
      sellerAddress:
          AddressDto.fromJson(json['sellerAddress'] as Map<String, dynamic>),
      id: json['_id'] as String,
      product: productFromJson(json['product']),
      seller: sellerFromJson(json['seller']),
      buyer: userFromJson(json['buyer']),
      price: (json['price'] as num).toDouble(),
      status: json['status'] as String,
      transitLogs: (json['transitLogs'] as List<dynamic>)
          .map((e) => TransitLogDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ProductOrderDtoImplToJson(
        _$ProductOrderDtoImpl instance) =>
    <String, dynamic>{
      'buyerAddress': instance.buyerAddress,
      'sellerAddress': instance.sellerAddress,
      '_id': instance.id,
      'product': instance.product,
      'seller': instance.seller,
      'buyer': instance.buyer,
      'price': instance.price,
      'status': instance.status,
      'transitLogs': instance.transitLogs,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      address: json['address'] as String?,
      type: json['type'] as String,
      coordinates: locationFromJson(json['coordinates']),
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'type': instance.type,
      'coordinates': instance.coordinates,
    };

_$LocationCoordinatesDtoImpl _$$LocationCoordinatesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LocationCoordinatesDtoImpl(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LocationCoordinatesDtoImplToJson(
        _$LocationCoordinatesDtoImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
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
