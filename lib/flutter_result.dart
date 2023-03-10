library flutter_result;

class Result<T, E> {
  final T? value;
  final E? errorMessage;
  final bool isSuccess;

  Result.success(this.value)
      : isSuccess = true,
        errorMessage = null;

  Result.error(this.errorMessage)
      : isSuccess = false,
        value = null;

  R open<R>(R Function(T?) onSuccess, R Function(E?) onError) {
    return isSuccess ? onSuccess(value) : onError(errorMessage);
  }
}
