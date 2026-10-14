/// Base exception for application-specific errors.
///
/// Add more specific exception types when real use cases require them.
class AppException implements Exception {
  const AppException(this.message);

  final String message;

  @override
  String toString() => 'AppException: $message';
}
