// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_order_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductOrderDto _$ProductOrderDtoFromJson(Map<String, dynamic> json) {
  return _ProductOrderDto.fromJson(json);
}

/// @nodoc
mixin _$ProductOrderDto {
  AddressDto get buyerAddress => throw _privateConstructorUsedError;
  AddressDto get sellerAddress => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: productFromJson)
  ProductDto get product => throw _privateConstructorUsedError;
  @JsonKey(fromJson: sellerFromJson)
  String get seller => throw _privateConstructorUsedError;
  @JsonKey(fromJson: userFromJson)
  UserDto get buyer => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<TransitLogDto> get transitLogs => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductOrderDtoCopyWith<ProductOrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductOrderDtoCopyWith<$Res> {
  factory $ProductOrderDtoCopyWith(
          ProductOrderDto value, $Res Function(ProductOrderDto) then) =
      _$ProductOrderDtoCopyWithImpl<$Res, ProductOrderDto>;
  @useResult
  $Res call(
      {AddressDto buyerAddress,
      AddressDto sellerAddress,
      @JsonKey(name: '_id') String id,
      @JsonKey(fromJson: productFromJson) ProductDto product,
      @JsonKey(fromJson: sellerFromJson) String seller,
      @JsonKey(fromJson: userFromJson) UserDto buyer,
      double price,
      String status,
      List<TransitLogDto> transitLogs,
      DateTime createdAt,
      DateTime updatedAt});

  $AddressDtoCopyWith<$Res> get buyerAddress;
  $AddressDtoCopyWith<$Res> get sellerAddress;
  $ProductDtoCopyWith<$Res> get product;
  $UserDtoCopyWith<$Res> get buyer;
}

/// @nodoc
class _$ProductOrderDtoCopyWithImpl<$Res, $Val extends ProductOrderDto>
    implements $ProductOrderDtoCopyWith<$Res> {
  _$ProductOrderDtoCopyWithImpl(this._value, this._then);

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
              as AddressDto,
      sellerAddress: null == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String,
      buyer: null == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserDto,
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
              as List<TransitLogDto>,
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
  $AddressDtoCopyWith<$Res> get buyerAddress {
    return $AddressDtoCopyWith<$Res>(_value.buyerAddress, (value) {
      return _then(_value.copyWith(buyerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get sellerAddress {
    return $AddressDtoCopyWith<$Res>(_value.sellerAddress, (value) {
      return _then(_value.copyWith(sellerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get buyer {
    return $UserDtoCopyWith<$Res>(_value.buyer, (value) {
      return _then(_value.copyWith(buyer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductOrderDtoImplCopyWith<$Res>
    implements $ProductOrderDtoCopyWith<$Res> {
  factory _$$ProductOrderDtoImplCopyWith(_$ProductOrderDtoImpl value,
          $Res Function(_$ProductOrderDtoImpl) then) =
      __$$ProductOrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AddressDto buyerAddress,
      AddressDto sellerAddress,
      @JsonKey(name: '_id') String id,
      @JsonKey(fromJson: productFromJson) ProductDto product,
      @JsonKey(fromJson: sellerFromJson) String seller,
      @JsonKey(fromJson: userFromJson) UserDto buyer,
      double price,
      String status,
      List<TransitLogDto> transitLogs,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $AddressDtoCopyWith<$Res> get buyerAddress;
  @override
  $AddressDtoCopyWith<$Res> get sellerAddress;
  @override
  $ProductDtoCopyWith<$Res> get product;
  @override
  $UserDtoCopyWith<$Res> get buyer;
}

/// @nodoc
class __$$ProductOrderDtoImplCopyWithImpl<$Res>
    extends _$ProductOrderDtoCopyWithImpl<$Res, _$ProductOrderDtoImpl>
    implements _$$ProductOrderDtoImplCopyWith<$Res> {
  __$$ProductOrderDtoImplCopyWithImpl(
      _$ProductOrderDtoImpl _value, $Res Function(_$ProductOrderDtoImpl) _then)
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
    return _then(_$ProductOrderDtoImpl(
      buyerAddress: null == buyerAddress
          ? _value.buyerAddress
          : buyerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      sellerAddress: null == sellerAddress
          ? _value.sellerAddress
          : sellerAddress // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      seller: null == seller
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as String,
      buyer: null == buyer
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserDto,
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
              as List<TransitLogDto>,
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
@JsonSerializable()
class _$ProductOrderDtoImpl extends _ProductOrderDto {
  const _$ProductOrderDtoImpl(
      {required this.buyerAddress,
      required this.sellerAddress,
      @JsonKey(name: '_id') required this.id,
      @JsonKey(fromJson: productFromJson) required this.product,
      @JsonKey(fromJson: sellerFromJson) required this.seller,
      @JsonKey(fromJson: userFromJson) required this.buyer,
      required this.price,
      required this.status,
      required final List<TransitLogDto> transitLogs,
      required this.createdAt,
      required this.updatedAt})
      : _transitLogs = transitLogs,
        super._();

  factory _$ProductOrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductOrderDtoImplFromJson(json);

  @override
  final AddressDto buyerAddress;
  @override
  final AddressDto sellerAddress;
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(fromJson: productFromJson)
  final ProductDto product;
  @override
  @JsonKey(fromJson: sellerFromJson)
  final String seller;
  @override
  @JsonKey(fromJson: userFromJson)
  final UserDto buyer;
  @override
  final double price;
  @override
  final String status;
  final List<TransitLogDto> _transitLogs;
  @override
  List<TransitLogDto> get transitLogs {
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
    return 'ProductOrderDto(buyerAddress: $buyerAddress, sellerAddress: $sellerAddress, id: $id, product: $product, seller: $seller, buyer: $buyer, price: $price, status: $status, transitLogs: $transitLogs, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOrderDtoImpl &&
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

  @JsonKey(ignore: true)
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
  _$$ProductOrderDtoImplCopyWith<_$ProductOrderDtoImpl> get copyWith =>
      __$$ProductOrderDtoImplCopyWithImpl<_$ProductOrderDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOrderDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductOrderDto extends ProductOrderDto {
  const factory _ProductOrderDto(
      {required final AddressDto buyerAddress,
      required final AddressDto sellerAddress,
      @JsonKey(name: '_id') required final String id,
      @JsonKey(fromJson: productFromJson) required final ProductDto product,
      @JsonKey(fromJson: sellerFromJson) required final String seller,
      @JsonKey(fromJson: userFromJson) required final UserDto buyer,
      required final double price,
      required final String status,
      required final List<TransitLogDto> transitLogs,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ProductOrderDtoImpl;
  const _ProductOrderDto._() : super._();

  factory _ProductOrderDto.fromJson(Map<String, dynamic> json) =
      _$ProductOrderDtoImpl.fromJson;

  @override
  AddressDto get buyerAddress;
  @override
  AddressDto get sellerAddress;
  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  @JsonKey(fromJson: productFromJson)
  ProductDto get product;
  @override
  @JsonKey(fromJson: sellerFromJson)
  String get seller;
  @override
  @JsonKey(fromJson: userFromJson)
  UserDto get buyer;
  @override
  double get price;
  @override
  String get status;
  @override
  List<TransitLogDto> get transitLogs;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$ProductOrderDtoImplCopyWith<_$ProductOrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return _AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  String? get address => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(fromJson: locationFromJson)
  LocationCoordinatesDto get coordinates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call(
      {String? address,
      String type,
      @JsonKey(fromJson: locationFromJson) LocationCoordinatesDto coordinates});

  $LocationCoordinatesDtoCopyWith<$Res> get coordinates;
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

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
              as LocationCoordinatesDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCoordinatesDtoCopyWith<$Res> get coordinates {
    return $LocationCoordinatesDtoCopyWith<$Res>(_value.coordinates, (value) {
      return _then(_value.copyWith(coordinates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddressDtoImplCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$AddressDtoImplCopyWith(
          _$AddressDtoImpl value, $Res Function(_$AddressDtoImpl) then) =
      __$$AddressDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? address,
      String type,
      @JsonKey(fromJson: locationFromJson) LocationCoordinatesDto coordinates});

  @override
  $LocationCoordinatesDtoCopyWith<$Res> get coordinates;
}

/// @nodoc
class __$$AddressDtoImplCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$AddressDtoImpl>
    implements _$$AddressDtoImplCopyWith<$Res> {
  __$$AddressDtoImplCopyWithImpl(
      _$AddressDtoImpl _value, $Res Function(_$AddressDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$AddressDtoImpl(
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
              as LocationCoordinatesDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddressDtoImpl extends _AddressDto {
  const _$AddressDtoImpl(
      {required this.address,
      required this.type,
      @JsonKey(fromJson: locationFromJson) required this.coordinates})
      : super._();

  factory _$AddressDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddressDtoImplFromJson(json);

  @override
  final String? address;
  @override
  final String type;
  @override
  @JsonKey(fromJson: locationFromJson)
  final LocationCoordinatesDto coordinates;

  @override
  String toString() {
    return 'AddressDto(address: $address, type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressDtoImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, type, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      __$$AddressDtoImplCopyWithImpl<_$AddressDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddressDtoImplToJson(
      this,
    );
  }
}

abstract class _AddressDto extends AddressDto {
  const factory _AddressDto(
      {required final String? address,
      required final String type,
      @JsonKey(fromJson: locationFromJson)
      required final LocationCoordinatesDto coordinates}) = _$AddressDtoImpl;
  const _AddressDto._() : super._();

  factory _AddressDto.fromJson(Map<String, dynamic> json) =
      _$AddressDtoImpl.fromJson;

  @override
  String? get address;
  @override
  String get type;
  @override
  @JsonKey(fromJson: locationFromJson)
  LocationCoordinatesDto get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$AddressDtoImplCopyWith<_$AddressDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationCoordinatesDto _$LocationCoordinatesDtoFromJson(
    Map<String, dynamic> json) {
  return _LocationCoordinatesDto.fromJson(json);
}

/// @nodoc
mixin _$LocationCoordinatesDto {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCoordinatesDtoCopyWith<LocationCoordinatesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCoordinatesDtoCopyWith<$Res> {
  factory $LocationCoordinatesDtoCopyWith(LocationCoordinatesDto value,
          $Res Function(LocationCoordinatesDto) then) =
      _$LocationCoordinatesDtoCopyWithImpl<$Res, LocationCoordinatesDto>;
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$LocationCoordinatesDtoCopyWithImpl<$Res,
        $Val extends LocationCoordinatesDto>
    implements $LocationCoordinatesDtoCopyWith<$Res> {
  _$LocationCoordinatesDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$LocationCoordinatesDtoImplCopyWith<$Res>
    implements $LocationCoordinatesDtoCopyWith<$Res> {
  factory _$$LocationCoordinatesDtoImplCopyWith(
          _$LocationCoordinatesDtoImpl value,
          $Res Function(_$LocationCoordinatesDtoImpl) then) =
      __$$LocationCoordinatesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class __$$LocationCoordinatesDtoImplCopyWithImpl<$Res>
    extends _$LocationCoordinatesDtoCopyWithImpl<$Res,
        _$LocationCoordinatesDtoImpl>
    implements _$$LocationCoordinatesDtoImplCopyWith<$Res> {
  __$$LocationCoordinatesDtoImplCopyWithImpl(
      _$LocationCoordinatesDtoImpl _value,
      $Res Function(_$LocationCoordinatesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$LocationCoordinatesDtoImpl(
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
@JsonSerializable()
class _$LocationCoordinatesDtoImpl extends _LocationCoordinatesDto {
  const _$LocationCoordinatesDtoImpl(
      {required this.latitude, required this.longitude})
      : super._();

  factory _$LocationCoordinatesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationCoordinatesDtoImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'LocationCoordinatesDto(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationCoordinatesDtoImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationCoordinatesDtoImplCopyWith<_$LocationCoordinatesDtoImpl>
      get copyWith => __$$LocationCoordinatesDtoImplCopyWithImpl<
          _$LocationCoordinatesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationCoordinatesDtoImplToJson(
      this,
    );
  }
}

abstract class _LocationCoordinatesDto extends LocationCoordinatesDto {
  const factory _LocationCoordinatesDto(
      {required final double? latitude,
      required final double? longitude}) = _$LocationCoordinatesDtoImpl;
  const _LocationCoordinatesDto._() : super._();

  factory _LocationCoordinatesDto.fromJson(Map<String, dynamic> json) =
      _$LocationCoordinatesDtoImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$LocationCoordinatesDtoImplCopyWith<_$LocationCoordinatesDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
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
