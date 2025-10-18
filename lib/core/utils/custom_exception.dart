class CustomFailureException implements Exception {
  final int statusCode;
  final String status;
  final String message;

  CustomFailureException({
    this.statusCode = 0,
    this.status = '',
    this.message = ''
  });
}