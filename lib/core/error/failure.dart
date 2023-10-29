import 'package:equatable/equatable.dart';

import '../components/error_widget.dart';

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class NetworkConnectionErrorState extends Failure {}


class ServerFailure extends Failure {
  final FailureStatus status;
  ServerFailure({required this.status});
}
