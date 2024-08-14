class UnexpectedValueError<T> extends Error {
  final T valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point!';
    return Error.safeToString(
      '$explanation Terminating. Failure was: $valueFailure',
    );
  }
}
