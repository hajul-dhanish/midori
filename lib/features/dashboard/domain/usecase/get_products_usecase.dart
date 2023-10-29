import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/provider/no_params.dart';
import '../../../../core/provider/use_case.dart';
import '../entity/dashboard_entity.dart';
import '../repository/dashboard_repo.dart';

class DashboardUseCase extends UseCase<DashboardEntity, NoParams> {
  final DashboardRepo dashboardRepo;

  DashboardUseCase(this.dashboardRepo);

  @override
  Future<Either<Failure, DashboardEntity>> call(NoParams params) async =>
      dashboardRepo.getProduct();
}