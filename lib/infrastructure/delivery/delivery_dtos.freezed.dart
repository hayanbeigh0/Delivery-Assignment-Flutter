// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeliveryDto _$DeliveryDtoFromJson(Map<String, dynamic> json) {
  return _DeliveryDto.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: orderFromJson)
  OrderDto get order => throw _privateConstructorUsedError;
  @JsonKey(name: 'pickupAddress')
  AddressDto get pickupAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'dropAddress')
  AddressDto get dropAddress => throw _privateConstructorUsedError;
  String get deliveryStatus => throw _privateConstructorUsedError;
  String get deliveryCode => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String? get fulfilmentPartner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDtoCopyWith<DeliveryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDtoCopyWith<$Res> {
  factory $DeliveryDtoCopyWith(
          DeliveryDto value, $Res Function(DeliveryDto) then) =
      _$DeliveryDtoCopyWithImpl<$Res, DeliveryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(fromJson: orderFromJson) OrderDto order,
      @JsonKey(name: 'pickupAddress') AddressDto pickupAddress,
      @JsonKey(name: 'dropAddress') AddressDto dropAddress,
      String deliveryStatus,
      String deliveryCode,
      bool active,
      String? fulfilmentPartner});

  $OrderDtoCopyWith<$Res> get order;
  $AddressDtoCopyWith<$Res> get pickupAddress;
  $AddressDtoCopyWith<$Res> get dropAddress;
}

/// @nodoc
class _$DeliveryDtoCopyWithImpl<$Res, $Val extends DeliveryDto>
    implements $DeliveryDtoCopyWith<$Res> {
  _$DeliveryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? pickupAddress = null,
    Object? dropAddress = null,
    Object? deliveryStatus = null,
    Object? deliveryCode = null,
    Object? active = null,
    Object? fulfilmentPartner = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      dropAddress: null == dropAddress
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCode: null == deliveryCode
          ? _value.deliveryCode
          : deliveryCode // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfilmentPartner: freezed == fulfilmentPartner
          ? _value.fulfilmentPartner
          : fulfilmentPartner // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDtoCopyWith<$Res> get order {
    return $OrderDtoCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get pickupAddress {
    return $AddressDtoCopyWith<$Res>(_value.pickupAddress, (value) {
      return _then(_value.copyWith(pickupAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get dropAddress {
    return $AddressDtoCopyWith<$Res>(_value.dropAddress, (value) {
      return _then(_value.copyWith(dropAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryDtoImplCopyWith<$Res>
    implements $DeliveryDtoCopyWith<$Res> {
  factory _$$DeliveryDtoImplCopyWith(
          _$DeliveryDtoImpl value, $Res Function(_$DeliveryDtoImpl) then) =
      __$$DeliveryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(fromJson: orderFromJson) OrderDto order,
      @JsonKey(name: 'pickupAddress') AddressDto pickupAddress,
      @JsonKey(name: 'dropAddress') AddressDto dropAddress,
      String deliveryStatus,
      String deliveryCode,
      bool active,
      String? fulfilmentPartner});

  @override
  $OrderDtoCopyWith<$Res> get order;
  @override
  $AddressDtoCopyWith<$Res> get pickupAddress;
  @override
  $AddressDtoCopyWith<$Res> get dropAddress;
}

/// @nodoc
class __$$DeliveryDtoImplCopyWithImpl<$Res>
    extends _$DeliveryDtoCopyWithImpl<$Res, _$DeliveryDtoImpl>
    implements _$$DeliveryDtoImplCopyWith<$Res> {
  __$$DeliveryDtoImplCopyWithImpl(
      _$DeliveryDtoImpl _value, $Res Function(_$DeliveryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? pickupAddress = null,
    Object? dropAddress = null,
    Object? deliveryStatus = null,
    Object? deliveryCode = null,
    Object? active = null,
    Object? fulfilmentPartner = freezed,
  }) {
    return _then(_$DeliveryDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderDto,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      dropAddress: null == dropAddress
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      deliveryStatus: null == deliveryStatus
          ? _value.deliveryStatus
          : deliveryStatus // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryCode: null == deliveryCode
          ? _value.deliveryCode
          : deliveryCode // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      fulfilmentPartner: freezed == fulfilmentPartner
          ? _value.fulfilmentPartner
          : fulfilmentPartner // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryDtoImpl extends _DeliveryDto {
  const _$DeliveryDtoImpl(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(fromJson: orderFromJson) required this.order,
      @JsonKey(name: 'pickupAddress') required this.pickupAddress,
      @JsonKey(name: 'dropAddress') required this.dropAddress,
      required this.deliveryStatus,
      required this.deliveryCode,
      required this.active,
      required this.fulfilmentPartner})
      : super._();

  factory _$DeliveryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(fromJson: orderFromJson)
  final OrderDto order;
  @override
  @JsonKey(name: 'pickupAddress')
  final AddressDto pickupAddress;
  @override
  @JsonKey(name: 'dropAddress')
  final AddressDto dropAddress;
  @override
  final String deliveryStatus;
  @override
  final String deliveryCode;
  @override
  final bool active;
  @override
  final String? fulfilmentPartner;

  @override
  String toString() {
    return 'DeliveryDto(id: $id, order: $order, pickupAddress: $pickupAddress, dropAddress: $dropAddress, deliveryStatus: $deliveryStatus, deliveryCode: $deliveryCode, active: $active, fulfilmentPartner: $fulfilmentPartner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.pickupAddress, pickupAddress) ||
                other.pickupAddress == pickupAddress) &&
            (identical(other.dropAddress, dropAddress) ||
                other.dropAddress == dropAddress) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                other.deliveryStatus == deliveryStatus) &&
            (identical(other.deliveryCode, deliveryCode) ||
                other.deliveryCode == deliveryCode) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.fulfilmentPartner, fulfilmentPartner) ||
                other.fulfilmentPartner == fulfilmentPartner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, pickupAddress,
      dropAddress, deliveryStatus, deliveryCode, active, fulfilmentPartner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryDtoImplCopyWith<_$DeliveryDtoImpl> get copyWith =>
      __$$DeliveryDtoImplCopyWithImpl<_$DeliveryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryDtoImplToJson(
      this,
    );
  }
}

abstract class _DeliveryDto extends DeliveryDto {
  const factory _DeliveryDto(
      {@JsonKey(name: '_id') required final String id,
      @JsonKey(fromJson: orderFromJson) required final OrderDto order,
      @JsonKey(name: 'pickupAddress') required final AddressDto pickupAddress,
      @JsonKey(name: 'dropAddress') required final AddressDto dropAddress,
      required final String deliveryStatus,
      required final String deliveryCode,
      required final bool active,
      required final String? fulfilmentPartner}) = _$DeliveryDtoImpl;
  const _DeliveryDto._() : super._();

  factory _DeliveryDto.fromJson(Map<String, dynamic> json) =
      _$DeliveryDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(fromJson: orderFromJson)
  OrderDto get order;
  @override
  @JsonKey(name: 'pickupAddress')
  AddressDto get pickupAddress;
  @override
  @JsonKey(name: 'dropAddress')
  AddressDto get dropAddress;
  @override
  String get deliveryStatus;
  @override
  String get deliveryCode;
  @override
  bool get active;
  @override
  String? get fulfilmentPartner;
  @override
  @JsonKey(ignore: true)
  _$$DeliveryDtoImplCopyWith<_$DeliveryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  AddressDto? get buyerAddress => throw _privateConstructorUsedError;
  AddressDto? get sellerAddress => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;
  UserDto? get seller => throw _privateConstructorUsedError;
  UserDto? get buyer => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<TransitLogDto>? get transitLogs => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      AddressDto? buyerAddress,
      AddressDto? sellerAddress,
      String? product,
      UserDto? seller,
      UserDto? buyer,
      int? price,
      String? status,
      List<TransitLogDto>? transitLogs,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt});

  $AddressDtoCopyWith<$Res>? get buyerAddress;
  $AddressDtoCopyWith<$Res>? get sellerAddress;
  $UserDtoCopyWith<$Res>? get seller;
  $UserDtoCopyWith<$Res>? get buyer;
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? buyerAddress = freezed,
    Object? sellerAddress = freezed,
    Object? product = freezed,
    Object? seller = freezed,
    Object? buyer = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? transitLogs = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAddress: freezed == buyerAddress
          ? _value.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
      sellerAddress: freezed == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      buyer: freezed == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      transitLogs: freezed == transitLogs
          ? _value.transitLogs
          : transitLogs // ignore: cast_nullable_to_non_nullable
              as List<TransitLogDto>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get buyerAddress {
    if (_value.buyerAddress == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_value.buyerAddress!, (value) {
      return _then(_value.copyWith(buyerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get sellerAddress {
    if (_value.sellerAddress == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_value.sellerAddress!, (value) {
      return _then(_value.copyWith(sellerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res>? get buyer {
    if (_value.buyer == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.buyer!, (value) {
      return _then(_value.copyWith(buyer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderDtoImplCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$$OrderDtoImplCopyWith(
          _$OrderDtoImpl value, $Res Function(_$OrderDtoImpl) then) =
      __$$OrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      AddressDto? buyerAddress,
      AddressDto? sellerAddress,
      String? product,
      UserDto? seller,
      UserDto? buyer,
      int? price,
      String? status,
      List<TransitLogDto>? transitLogs,
      @JsonKey(name: 'createdAt') DateTime? createdAt,
      @JsonKey(name: 'updatedAt') DateTime? updatedAt});

  @override
  $AddressDtoCopyWith<$Res>? get buyerAddress;
  @override
  $AddressDtoCopyWith<$Res>? get sellerAddress;
  @override
  $UserDtoCopyWith<$Res>? get seller;
  @override
  $UserDtoCopyWith<$Res>? get buyer;
}

/// @nodoc
class __$$OrderDtoImplCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$OrderDtoImpl>
    implements _$$OrderDtoImplCopyWith<$Res> {
  __$$OrderDtoImplCopyWithImpl(
      _$OrderDtoImpl _value, $Res Function(_$OrderDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? buyerAddress = freezed,
    Object? sellerAddress = freezed,
    Object? product = freezed,
    Object? seller = freezed,
    Object? buyer = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? transitLogs = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrderDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAddress: freezed == buyerAddress
          ? _value.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
      sellerAddress: freezed == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      buyer: freezed == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      transitLogs: freezed == transitLogs
          ? _value._transitLogs
          : transitLogs // ignore: cast_nullable_to_non_nullable
              as List<TransitLogDto>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDtoImpl extends _OrderDto {
  const _$OrderDtoImpl(
      {@JsonKey(name: '_id') this.id,
      this.buyerAddress,
      this.sellerAddress,
      this.product,
      this.seller,
      this.buyer,
      this.price,
      this.status,
      final List<TransitLogDto>? transitLogs,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt})
      : _transitLogs = transitLogs,
        super._();

  factory _$OrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final AddressDto? buyerAddress;
  @override
  final AddressDto? sellerAddress;
  @override
  final String? product;
  @override
  final UserDto? seller;
  @override
  final UserDto? buyer;
  @override
  final int? price;
  @override
  final String? status;
  final List<TransitLogDto>? _transitLogs;
  @override
  List<TransitLogDto>? get transitLogs {
    final value = _transitLogs;
    if (value == null) return null;
    if (_transitLogs is EqualUnmodifiableListView) return _transitLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'createdAt')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'OrderDto(id: $id, buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, product: $product, seller: $seller, buyer: $buyer, price: $price, status: $status, transitLogs: $transitLogs, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.buyerAddress, buyerAddress) ||
                other.buyerAddress == buyerAddress) &&
            (identical(other.sellerAddress, sellerAddress) ||
                other.sellerAddress == sellerAddress) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.seller, seller) || other.seller == seller) &&
            (identical(other.buyer, buyer) || other.buyer == buyer) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._transitLogs, _transitLogs) &&
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
      buyerAddress,
      sellerAddress,
      product,
      seller,
      buyer,
      price,
      status,
      const DeepCollectionEquality().hash(_transitLogs),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      __$$OrderDtoImplCopyWithImpl<_$OrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderDto extends OrderDto {
  const factory _OrderDto(
      {@JsonKey(name: '_id') final String? id,
      final AddressDto? buyerAddress,
      final AddressDto? sellerAddress,
      final String? product,
      final UserDto? seller,
      final UserDto? buyer,
      final int? price,
      final String? status,
      final List<TransitLogDto>? transitLogs,
      @JsonKey(name: 'createdAt') final DateTime? createdAt,
      @JsonKey(name: 'updatedAt') final DateTime? updatedAt}) = _$OrderDtoImpl;
  const _OrderDto._() : super._();

  factory _OrderDto.fromJson(Map<String, dynamic> json) =
      _$OrderDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  AddressDto? get buyerAddress;
  @override
  AddressDto? get sellerAddress;
  @override
  String? get product;
  @override
  UserDto? get seller;
  @override
  UserDto? get buyer;
  @override
  int? get price;
  @override
  String? get status;
  @override
  List<TransitLogDto>? get transitLogs;
  @override
  @JsonKey(name: 'createdAt')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransitLogDto _$TransitLogDtoFromJson(Map<String, dynamic> json) {
  return _TransitLogDto.fromJson(json);
}

/// @nodoc
mixin _$TransitLogDto {
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitLogDtoCopyWith<TransitLogDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitLogDtoCopyWith<$Res> {
  factory $TransitLogDtoCopyWith(
          TransitLogDto value, $Res Function(TransitLogDto) then) =
      _$TransitLogDtoCopyWithImpl<$Res, TransitLogDto>;
  @useResult
  $Res call({String message, @JsonKey(name: '_id') String id, DateTime time});
}

/// @nodoc
class _$TransitLogDtoCopyWithImpl<$Res, $Val extends TransitLogDto>
    implements $TransitLogDtoCopyWith<$Res> {
  _$TransitLogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? id = null,
    Object? time = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransitLogDtoImplCopyWith<$Res>
    implements $TransitLogDtoCopyWith<$Res> {
  factory _$$TransitLogDtoImplCopyWith(
          _$TransitLogDtoImpl value, $Res Function(_$TransitLogDtoImpl) then) =
      __$$TransitLogDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, @JsonKey(name: '_id') String id, DateTime time});
}

/// @nodoc
class __$$TransitLogDtoImplCopyWithImpl<$Res>
    extends _$TransitLogDtoCopyWithImpl<$Res, _$TransitLogDtoImpl>
    implements _$$TransitLogDtoImplCopyWith<$Res> {
  __$$TransitLogDtoImplCopyWithImpl(
      _$TransitLogDtoImpl _value, $Res Function(_$TransitLogDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? id = null,
    Object? time = null,
  }) {
    return _then(_$TransitLogDtoImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransitLogDtoImpl extends _TransitLogDto {
  const _$TransitLogDtoImpl(
      {required this.message,
      @JsonKey(name: '_id') required this.id,
      required this.time})
      : super._();

  factory _$TransitLogDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransitLogDtoImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'TransitLogDto(message: $message, id: $id, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransitLogDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, id, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransitLogDtoImplCopyWith<_$TransitLogDtoImpl> get copyWith =>
      __$$TransitLogDtoImplCopyWithImpl<_$TransitLogDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransitLogDtoImplToJson(
      this,
    );
  }
}

abstract class _TransitLogDto extends TransitLogDto {
  const factory _TransitLogDto(
      {required final String message,
      @JsonKey(name: '_id') required final String id,
      required final DateTime time}) = _$TransitLogDtoImpl;
  const _TransitLogDto._() : super._();

  factory _TransitLogDto.fromJson(Map<String, dynamic> json) =
      _$TransitLogDtoImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$TransitLogDtoImplCopyWith<_$TransitLogDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
