import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midori/core/error/failure.dart';
import 'package:midori/core/provider/no_params.dart';

import '../../domain/usecase/get_products_usecase.dart';
import 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  final DashboardUseCase dashboardUseCase;
  DashboardCubit(this.dashboardUseCase) : super(DashboardInitialState());

  getProduct() async {
    emit(DashboardLoadingState());
    emit(await _excute());
  }

  _excute() async {
    final response = await dashboardUseCase(NoParams());
    return response.fold(
      (l) => DashboardErrorState(status: (l as ServerFailure).status),
      (r) => DashboardLoadedState(dashboardEntity: r),
    );
  }
}
