// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Delivery {
  String get id => throw _privateConstructorUsedError;
  Order get order => throw _privateConstructorUsedError;
  Address get pickupAddress => throw _privateConstructorUsedError;
  Address get dropAddress => throw _privateConstructorUsedError;
  String get deliveryStatus => throw _privateConstructorUsedError;
  String get deliveryCode => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  String? get fulfilmentPartner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryCopyWith<Delivery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryCopyWith<$Res> {
  factory $DeliveryCopyWith(Delivery value, $Res Function(Delivery) then) =
      _$DeliveryCopyWithImpl<$Res, Delivery>;
  @useResult
  $Res call(
      {String id,
      Order order,
      Address pickupAddress,
      Address dropAddress,
      String deliveryStatus,
      String deliveryCode,
      bool active,
      String? fulfilmentPartner});

  $OrderCopyWith<$Res> get order;
  $AddressCopyWith<$Res> get pickupAddress;
  $AddressCopyWith<$Res> get dropAddress;
}

/// @nodoc
class _$DeliveryCopyWithImpl<$Res, $Val extends Delivery>
    implements $DeliveryCopyWith<$Res> {
  _$DeliveryCopyWithImpl(this._value, this._then);

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
              as Order,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      dropAddress: null == dropAddress
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as Address,
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
  $OrderCopyWith<$Res> get order {
    return $OrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get pickupAddress {
    return $AddressCopyWith<$Res>(_value.pickupAddress, (value) {
      return _then(_value.copyWith(pickupAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get dropAddress {
    return $AddressCopyWith<$Res>(_value.dropAddress, (value) {
      return _then(_value.copyWith(dropAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeliveryImplCopyWith<$Res>
    implements $DeliveryCopyWith<$Res> {
  factory _$$DeliveryImplCopyWith(
          _$DeliveryImpl value, $Res Function(_$DeliveryImpl) then) =
      __$$DeliveryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Order order,
      Address pickupAddress,
      Address dropAddress,
      String deliveryStatus,
      String deliveryCode,
      bool active,
      String? fulfilmentPartner});

  @override
  $OrderCopyWith<$Res> get order;
  @override
  $AddressCopyWith<$Res> get pickupAddress;
  @override
  $AddressCopyWith<$Res> get dropAddress;
}

/// @nodoc
class __$$DeliveryImplCopyWithImpl<$Res>
    extends _$DeliveryCopyWithImpl<$Res, _$DeliveryImpl>
    implements _$$DeliveryImplCopyWith<$Res> {
  __$$DeliveryImplCopyWithImpl(
      _$DeliveryImpl _value, $Res Function(_$DeliveryImpl) _then)
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
    return _then(_$DeliveryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
      pickupAddress: null == pickupAddress
          ? _value.pickupAddress
          : pickupAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      dropAddress: null == dropAddress
          ? _value.dropAddress
          : dropAddress // ignore: cast_nullable_to_non_nullable
              as Address,
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

class _$DeliveryImpl implements _Delivery {
  const _$DeliveryImpl(
      {required this.id,
      required this.order,
      required this.pickupAddress,
      required this.dropAddress,
      required this.deliveryStatus,
      required this.deliveryCode,
      required this.active,
      required this.fulfilmentPartner});

  @override
  final String id;
  @override
  final Order order;
  @override
  final Address pickupAddress;
  @override
  final Address dropAddress;
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
    return 'Delivery(id: $id, order: $order, pickupAddress: $pickupAddress, dropAddress: $dropAddress, deliveryStatus: $deliveryStatus, deliveryCode: $deliveryCode, active: $active, fulfilmentPartner: $fulfilmentPartner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryImpl &&
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

  @override
  int get hashCode => Object.hash(runtimeType, id, order, pickupAddress,
      dropAddress, deliveryStatus, deliveryCode, active, fulfilmentPartner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryImplCopyWith<_$DeliveryImpl> get copyWith =>
      __$$DeliveryImplCopyWithImpl<_$DeliveryImpl>(this, _$identity);
}

abstract class _Delivery implements Delivery {
  const factory _Delivery(
      {required final String id,
      required final Order order,
      required final Address pickupAddress,
      required final Address dropAddress,
      required final String deliveryStatus,
      required final String deliveryCode,
      required final bool active,
      required final String? fulfilmentPartner}) = _$DeliveryImpl;

  @override
  String get id;
  @override
  Order get order;
  @override
  Address get pickupAddress;
  @override
  Address get dropAddress;
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
  _$$DeliveryImplCopyWith<_$DeliveryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Order {
  String? get id => throw _privateConstructorUsedError;
  Address? get buyerAddress => throw _privateConstructorUsedError;
  Address? get sellerAddress => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;
  User? get seller => throw _privateConstructorUsedError;
  User? get buyer => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  List<TransitLog>? get transitLogs => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {String? id,
      Address? buyerAddress,
      Address? sellerAddress,
      String? product,
      User? seller,
      User? buyer,
      int? price,
      String? status,
      List<TransitLog>? transitLogs,
      DateTime? createdAt,
      DateTime? updatedAt});

  $AddressCopyWith<$Res>? get buyerAddress;
  $AddressCopyWith<$Res>? get sellerAddress;
  $UserCopyWith<$Res>? get seller;
  $UserCopyWith<$Res>? get buyer;
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

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
              as Address?,
      sellerAddress: freezed == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as User?,
      buyer: freezed == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as User?,
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
              as List<TransitLog>?,
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
  $AddressCopyWith<$Res>? get buyerAddress {
    if (_value.buyerAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.buyerAddress!, (value) {
      return _then(_value.copyWith(buyerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get sellerAddress {
    if (_value.sellerAddress == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.sellerAddress!, (value) {
      return _then(_value.copyWith(sellerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get buyer {
    if (_value.buyer == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.buyer!, (value) {
      return _then(_value.copyWith(buyer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      Address? buyerAddress,
      Address? sellerAddress,
      String? product,
      User? seller,
      User? buyer,
      int? price,
      String? status,
      List<TransitLog>? transitLogs,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $AddressCopyWith<$Res>? get buyerAddress;
  @override
  $AddressCopyWith<$Res>? get sellerAddress;
  @override
  $UserCopyWith<$Res>? get seller;
  @override
  $UserCopyWith<$Res>? get buyer;
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
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
    return _then(_$OrderImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      buyerAddress: freezed == buyerAddress
          ? _value.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      sellerAddress: freezed == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as Address?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
      seller: freezed == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as User?,
      buyer: freezed == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as User?,
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
              as List<TransitLog>?,
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

class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {this.id,
      this.buyerAddress,
      this.sellerAddress,
      this.product,
      this.seller,
      this.buyer,
      this.price,
      this.status,
      final List<TransitLog>? transitLogs,
      this.createdAt,
      this.updatedAt})
      : _transitLogs = transitLogs;

  @override
  final String? id;
  @override
  final Address? buyerAddress;
  @override
  final Address? sellerAddress;
  @override
  final String? product;
  @override
  final User? seller;
  @override
  final User? buyer;
  @override
  final int? price;
  @override
  final String? status;
  final List<TransitLog>? _transitLogs;
  @override
  List<TransitLog>? get transitLogs {
    final value = _transitLogs;
    if (value == null) return null;
    if (_transitLogs is EqualUnmodifiableListView) return _transitLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Order(id: $id, buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, product: $product, seller: $seller, buyer: $buyer, price: $price, status: $status, transitLogs: $transitLogs, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
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
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);
}

abstract class _Order implements Order {
  const factory _Order(
      {final String? id,
      final Address? buyerAddress,
      final Address? sellerAddress,
      final String? product,
      final User? seller,
      final User? buyer,
      final int? price,
      final String? status,
      final List<TransitLog>? transitLogs,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$OrderImpl;

  @override
  String? get id;
  @override
  Address? get buyerAddress;
  @override
  Address? get sellerAddress;
  @override
  String? get product;
  @override
  User? get seller;
  @override
  User? get buyer;
  @override
  int? get price;
  @override
  String? get status;
  @override
  List<TransitLog>? get transitLogs;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
