import 'package:equatable/equatable.dart';

import '../../../../core/components/error_widget.dart';
import '../../domain/entity/dashboard_entity.dart';

abstract class DashboardState extends Equatable {
  const DashboardState();

  @override
  List<Object> get props => [];
}

class DashboardInitialState extends DashboardState {}

class DashboardLoadingState extends DashboardState {}

class DashboardLoadedState extends DashboardState {
  final DashboardEntity dashboardEntity;
  const DashboardLoadedState({required this.dashboardEntity});
}

class DashboardErrorState extends DashboardState {
  final FailureStatus status;

  const DashboardErrorState({required this.status});
}
