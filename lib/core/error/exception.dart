import '../components/error_widget.dart';

class ServerException implements Exception {
  final FailureStatus status;
  ServerException({required this.status});
}

class CacheException implements Exception {}

class DBException implements Exception {
  String? message;

  DBException({this.message});
}
