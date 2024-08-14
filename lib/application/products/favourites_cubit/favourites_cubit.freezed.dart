// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourites_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function() failed,
    required TResult Function() favLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function()? failed,
    TResult? Function()? favLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function()? failed,
    TResult Function()? favLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavLoading value) favLoading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FavLoaded value) favLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FavLoading value)? favLoading,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FavLoaded value)? favLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavLoading value)? favLoading,
    TResult Function(_Failed value)? failed,
    TResult Function(_FavLoaded value)? favLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouritesStateCopyWith<$Res> {
  factory $FavouritesStateCopyWith(
          FavouritesState value, $Res Function(FavouritesState) then) =
      _$FavouritesStateCopyWithImpl<$Res, FavouritesState>;
}

/// @nodoc
class _$FavouritesStateCopyWithImpl<$Res, $Val extends FavouritesState>
    implements $FavouritesStateCopyWith<$Res> {
  _$FavouritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'FavouritesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function() failed,
    required TResult Function() favLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function()? failed,
    TResult? Function()? favLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function()? failed,
    TResult Function()? favLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavLoading value) favLoading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FavLoaded value) favLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FavLoading value)? favLoading,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FavLoaded value)? favLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavLoading value)? favLoading,
    TResult Function(_Failed value)? failed,
    TResult Function(_FavLoaded value)? favLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavouritesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FavLoadingImplCopyWith<$Res> {
  factory _$$FavLoadingImplCopyWith(
          _$FavLoadingImpl value, $Res Function(_$FavLoadingImpl) then) =
      __$$FavLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavLoadingImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavLoadingImpl>
    implements _$$FavLoadingImplCopyWith<$Res> {
  __$$FavLoadingImplCopyWithImpl(
      _$FavLoadingImpl _value, $Res Function(_$FavLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavLoadingImpl implements _FavLoading {
  const _$FavLoadingImpl();

  @override
  String toString() {
    return 'FavouritesState.favLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function() failed,
    required TResult Function() favLoaded,
  }) {
    return favLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function()? failed,
    TResult? Function()? favLoaded,
  }) {
    return favLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function()? failed,
    TResult Function()? favLoaded,
    required TResult orElse(),
  }) {
    if (favLoading != null) {
      return favLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavLoading value) favLoading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FavLoaded value) favLoaded,
  }) {
    return favLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FavLoading value)? favLoading,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FavLoaded value)? favLoaded,
  }) {
    return favLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavLoading value)? favLoading,
    TResult Function(_Failed value)? failed,
    TResult Function(_FavLoaded value)? favLoaded,
    required TResult orElse(),
  }) {
    if (favLoading != null) {
      return favLoading(this);
    }
    return orElse();
  }
}

abstract class _FavLoading implements FavouritesState {
  const factory _FavLoading() = _$FavLoadingImpl;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'FavouritesState.failed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function() failed,
    required TResult Function() favLoaded,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function()? failed,
    TResult? Function()? favLoaded,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function()? failed,
    TResult Function()? favLoaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavLoading value) favLoading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FavLoaded value) favLoaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FavLoading value)? favLoading,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FavLoaded value)? favLoaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavLoading value)? favLoading,
    TResult Function(_Failed value)? failed,
    TResult Function(_FavLoaded value)? favLoaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements FavouritesState {
  const factory _Failed() = _$FailedImpl;
}

/// @nodoc
abstract class _$$FavLoadedImplCopyWith<$Res> {
  factory _$$FavLoadedImplCopyWith(
          _$FavLoadedImpl value, $Res Function(_$FavLoadedImpl) then) =
      __$$FavLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavLoadedImplCopyWithImpl<$Res>
    extends _$FavouritesStateCopyWithImpl<$Res, _$FavLoadedImpl>
    implements _$$FavLoadedImplCopyWith<$Res> {
  __$$FavLoadedImplCopyWithImpl(
      _$FavLoadedImpl _value, $Res Function(_$FavLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavLoadedImpl implements _FavLoaded {
  const _$FavLoadedImpl();

  @override
  String toString() {
    return 'FavouritesState.favLoaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FavLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() favLoading,
    required TResult Function() failed,
    required TResult Function() favLoaded,
  }) {
    return favLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? favLoading,
    TResult? Function()? failed,
    TResult? Function()? favLoaded,
  }) {
    return favLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? favLoading,
    TResult Function()? failed,
    TResult Function()? favLoaded,
    required TResult orElse(),
  }) {
    if (favLoaded != null) {
      return favLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FavLoading value) favLoading,
    required TResult Function(_Failed value) failed,
    required TResult Function(_FavLoaded value) favLoaded,
  }) {
    return favLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FavLoading value)? favLoading,
    TResult? Function(_Failed value)? failed,
    TResult? Function(_FavLoaded value)? favLoaded,
  }) {
    return favLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FavLoading value)? favLoading,
    TResult Function(_Failed value)? failed,
    TResult Function(_FavLoaded value)? favLoaded,
    required TResult orElse(),
  }) {
    if (favLoaded != null) {
      return favLoaded(this);
    }
    return orElse();
  }
}

abstract class _FavLoaded implements FavouritesState {
  const factory _FavLoaded() = _$FavLoadedImpl;
}
