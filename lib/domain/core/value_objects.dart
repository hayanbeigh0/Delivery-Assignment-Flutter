import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/domain/core/errors.dart';

// The generic type T refers to the type of value and the generic type I refers to the type of ValueFailure (ValueFailure, OrganisationValueFailure, UserValueFailure, etc)
@immutable
abstract class ValueObject<T, I> {
  const ValueObject();
  Either<I, T> get value;

  T getOrCrash() {
    return value.fold(
      (f) => throw UnexpectedValueError<I>(f),
      (r) => r,
    );
  }

  Either<I, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(covariant ValueObject other) {
    if (identical(this, other)) return true;

    return other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}
