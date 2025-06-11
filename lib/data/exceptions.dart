class AppException implements Exception {
  final  _message;
  final  _prefix;

  AppException([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix$_message';	
  }
}

class InternetException extends AppException {
  InternetException([String? message])
      : super(message, 'No Internet Connection: ');
}
class ServerException extends AppException {
  ServerException([String? message])
      : super(message, 'Server Error: ');
}