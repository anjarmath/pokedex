class Failure {
  final int statusCode;
  final String message;

  const Failure({
    required this.statusCode,
    required this.message,
  });

  String getMessage() {
    return 'Kesalahan: $message (code: $statusCode)';
  }
}
