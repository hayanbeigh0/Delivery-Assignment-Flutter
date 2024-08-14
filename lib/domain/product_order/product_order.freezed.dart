// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductOrder {
  Address get buyerAddress => throw _privateConstructorUsedError;
  Address get sellerAddress => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Product get product => throw _privateConstructorUsedError;
  String get seller => throw _privateConstructorUsedError;
  User get buyer => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<TransitLog> get transitLogs => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductOrderCopyWith<ProductOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOrderCopyWith<$Res> {
  factory $ProductOrderCopyWith(
          ProductOrder value, $Res Function(ProductOrder) then) =
      _$ProductOrderCopyWithImpl<$Res, ProductOrder>;
  @useResult
  $Res call(
      {Address buyerAddress,
      Address sellerAddress,
      String id,
      Product product,
      String seller,
      User buyer,
      double price,
      String status,
      List<TransitLog> transitLogs,
      DateTime createdAt,
      DateTime updatedAt});

  $AddressCopyWith<$Res> get buyerAddress;
  $AddressCopyWith<$Res> get sellerAddress;
  $ProductCopyWith<$Res> get product;
  $UserCopyWith<$Res> get buyer;
}

/// @nodoc
class _$ProductOrderCopyWithImpl<$Res, $Val extends ProductOrder>
    implements $ProductOrderCopyWith<$Res> {
  _$ProductOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyerAddress = null,
    Object? sellerAddress = null,
    Object? id = null,
    Object? product = null,
    Object? seller = null,
    Object? buyer = null,
    Object? price = null,
    Object? status = null,
    Object? transitLogs = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      buyerAddress: null == buyerAddress
          ? _value.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      sellerAddress: null == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String,
      buyer: null == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as User,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transitLogs: null == transitLogs
          ? _value.transitLogs
          : transitLogs // ignore: cast_nullable_to_non_nullable
              as List<TransitLog>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get buyerAddress {
    return $AddressCopyWith<$Res>(_value.buyerAddress, (value) {
      return _then(_value.copyWith(buyerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get sellerAddress {
    return $AddressCopyWith<$Res>(_value.sellerAddress, (value) {
      return _then(_value.copyWith(sellerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get buyer {
    return $UserCopyWith<$Res>(_value.buyer, (value) {
      return _then(_value.copyWith(buyer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductOrderImplCopyWith<$Res>
    implements $ProductOrderCopyWith<$Res> {
  factory _$$ProductOrderImplCopyWith(
          _$ProductOrderImpl value, $Res Function(_$ProductOrderImpl) then) =
      __$$ProductOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address buyerAddress,
      Address sellerAddress,
      String id,
      Product product,
      String seller,
      User buyer,
      double price,
      String status,
      List<TransitLog> transitLogs,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $AddressCopyWith<$Res> get buyerAddress;
  @override
  $AddressCopyWith<$Res> get sellerAddress;
  @override
  $ProductCopyWith<$Res> get product;
  @override
  $UserCopyWith<$Res> get buyer;
}

/// @nodoc
class __$$ProductOrderImplCopyWithImpl<$Res>
    extends _$ProductOrderCopyWithImpl<$Res, _$ProductOrderImpl>
    implements _$$ProductOrderImplCopyWith<$Res> {
  __$$ProductOrderImplCopyWithImpl(
      _$ProductOrderImpl _value, $Res Function(_$ProductOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyerAddress = null,
    Object? sellerAddress = null,
    Object? id = null,
    Object? product = null,
    Object? seller = null,
    Object? buyer = null,
    Object? price = null,
    Object? status = null,
    Object? transitLogs = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ProductOrderImpl(
      buyerAddress: null == buyerAddress
          ? _value.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      sellerAddress: null == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String,
      buyer: null == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as User,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      transitLogs: null == transitLogs
          ? _value._transitLogs
          : transitLogs // ignore: cast_nullable_to_non_nullable
              as List<TransitLog>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ProductOrderImpl implements _ProductOrder {
  const _$ProductOrderImpl(
      {required this.buyerAddress,
      required this.sellerAddress,
      required this.id,
      required this.product,
      required this.seller,
      required this.buyer,
      required this.price,
      required this.status,
      required final List<TransitLog> transitLogs,
      required this.createdAt,
      required this.updatedAt})
      : _transitLogs = transitLogs;

  @override
  final Address buyerAddress;
  @override
  final Address sellerAddress;
  @override
  final String id;
  @override
  final Product product;
  @override
  final String seller;
  @override
  final User buyer;
  @override
  final double price;
  @override
  final String status;
  final List<TransitLog> _transitLogs;
  @override
  List<TransitLog> get transitLogs {
    if (_transitLogs is EqualUnmodifiableListView) return _transitLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transitLogs);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'ProductOrder(buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, id: $id, product: $product, seller: $seller, buyer: $buyer, price: $price, status: $status, transitLogs: $transitLogs, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOrderImpl &&
            (identical(other.buyerAddress, buyerAddress) ||
                other.buyerAddress == buyerAddress) &&
            (identical(other.sellerAddress, sellerAddress) ||
                other.sellerAddress == sellerAddress) &&
            (identical(other.id, id) || other.id == id) &&
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
      buyerAddress,
      sellerAddress,
      id,
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
  _$$ProductOrderImplCopyWith<_$ProductOrderImpl> get copyWith =>
      __$$ProductOrderImplCopyWithImpl<_$ProductOrderImpl>(this, _$identity);
}

abstract class _ProductOrder implements ProductOrder {
  const factory _ProductOrder(
      {required final Address buyerAddress,
      required final Address sellerAddress,
      required final String id,
      required final Product product,
      required final String seller,
      required final User buyer,
      required final double price,
      required final String status,
      required final List<TransitLog> transitLogs,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ProductOrderImpl;

  @override
  Address get buyerAddress;
  @override
  Address get sellerAddress;
  @override
  String get id;
  @override
  Product get product;
  @override
  String get seller;
  @override
  User get buyer;
  @override
  double get price;
  @override
  String get status;
  @override
  List<TransitLog> get transitLogs;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductOrderImplCopyWith<_$ProductOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Address {
  String? get address => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  LocationCoordinates get coordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String? address, String type, LocationCoordinates coordinates});

  $LocationCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCoordinatesCopyWith<$Res> get coordinates {
    return $LocationCoordinatesCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? address, String type, LocationCoordinates coordinates});

  @override
  $LocationCoordinatesCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$AddressImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as LocationCoordinates,
    ));
  }
}

/// @nodoc

class _$AddressImpl implements _Address {
  const _$AddressImpl(
      {required this.address, required this.type, required this.coordinates});

  @override
  final String? address;
  @override
  final String type;
  @override
  final LocationCoordinates coordinates;

  @override
  String toString() {
    return 'Address(address: $address, type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, type, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);
}

abstract class _Address implements Address {
  const factory _Address(
      {required final String? address,
      required final String type,
      required final LocationCoordinates coordinates}) = _$AddressImpl;

  @override
  String? get address;
  @override
  String get type;
  @override
  LocationCoordinates get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LocationCoordinates {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationCoordinatesCopyWith<LocationCoordinates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCoordinatesCopyWith<$Res> {
  factory $LocationCoordinatesCopyWith(
          LocationCoordinates value, $Res Function(LocationCoordinates) then) =
      _$LocationCoordinatesCopyWithImpl<$Res, LocationCoordinates>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$LocationCoordinatesCopyWithImpl<$Res, $Val extends LocationCoordinates>
    implements $LocationCoordinatesCopyWith<$Res> {
  _$LocationCoordinatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationCoordinatesImplCopyWith<$Res>
    implements $LocationCoordinatesCopyWith<$Res> {
  factory _$$LocationCoordinatesImplCopyWith(_$LocationCoordinatesImpl value,
          $Res Function(_$LocationCoordinatesImpl) then) =
      __$$LocationCoordinatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$LocationCoordinatesImplCopyWithImpl<$Res>
    extends _$LocationCoordinatesCopyWithImpl<$Res, _$LocationCoordinatesImpl>
    implements _$$LocationCoordinatesImplCopyWith<$Res> {
  __$$LocationCoordinatesImplCopyWithImpl(_$LocationCoordinatesImpl _value,
      $Res Function(_$LocationCoordinatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationCoordinatesImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$LocationCoordinatesImpl implements _LocationCoordinates {
  const _$LocationCoordinatesImpl(
      {required this.latitude, required this.longitude});

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LocationCoordinates(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationCoordinatesImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationCoordinatesImplCopyWith<_$LocationCoordinatesImpl> get copyWith =>
      __$$LocationCoordinatesImplCopyWithImpl<_$LocationCoordinatesImpl>(
          this, _$identity);
}

abstract class _LocationCoordinates implements LocationCoordinates {
  const factory _LocationCoordinates(
      {required final double? latitude,
      required final double? longitude}) = _$LocationCoordinatesImpl;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationCoordinatesImplCopyWith<_$LocationCoordinatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransitLog {
  String get message => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransitLogCopyWith<TransitLog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitLogCopyWith<$Res> {
  factory $TransitLogCopyWith(
          TransitLog value, $Res Function(TransitLog) then) =
      _$TransitLogCopyWithImpl<$Res, TransitLog>;
  @useResult
  $Res call({String message, String id, DateTime time});
}

/// @nodoc
class _$TransitLogCopyWithImpl<$Res, $Val extends TransitLog>
    implements $TransitLogCopyWith<$Res> {
  _$TransitLogCopyWithImpl(this._value, this._then);

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
abstract class _$$TransitLogImplCopyWith<$Res>
    implements $TransitLogCopyWith<$Res> {
  factory _$$TransitLogImplCopyWith(
          _$TransitLogImpl value, $Res Function(_$TransitLogImpl) then) =
      __$$TransitLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, String id, DateTime time});
}

/// @nodoc
class __$$TransitLogImplCopyWithImpl<$Res>
    extends _$TransitLogCopyWithImpl<$Res, _$TransitLogImpl>
    implements _$$TransitLogImplCopyWith<$Res> {
  __$$TransitLogImplCopyWithImpl(
      _$TransitLogImpl _value, $Res Function(_$TransitLogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? id = null,
    Object? time = null,
  }) {
    return _then(_$TransitLogImpl(
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

class _$TransitLogImpl implements _TransitLog {
  const _$TransitLogImpl(
      {required this.message, required this.id, required this.time});

  @override
  final String message;
  @override
  final String id;
  @override
  final DateTime time;

  @override
  String toString() {
    return 'TransitLog(message: $message, id: $id, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransitLogImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, id, time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransitLogImplCopyWith<_$TransitLogImpl> get copyWith =>
      __$$TransitLogImplCopyWithImpl<_$TransitLogImpl>(this, _$identity);
}

abstract class _TransitLog implements TransitLog {
  const factory _TransitLog(
      {required final String message,
      required final String id,
      required final DateTime time}) = _$TransitLogImpl;

  @override
  String get message;
  @override
  String get id;
  @override
  DateTime get time;
  @override
  @JsonKey(ignore: true)
  _$$TransitLogImplCopyWith<_$TransitLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
