import 'package:dartz/dartz.dart';

import '../../../../core/components/error_widget.dart';
import '../../../../core/error/exception.dart';
import '../../../../core/error/failure.dart';
import '../../domain/entity/dashboard_entity.dart';
import '../../domain/repository/dashboard_repo.dart';
import '../datasource/dashboard_remote_ds.dart';

class DashboardRepoImpl extends DashboardRepo {
  final DashboardRemoteDataSource dashboardDatasrc;
  DashboardRepoImpl(this.dashboardDatasrc);

  @override
  Future<Either<Failure, DashboardEntity>> getProduct() async {
    try {
      final getData = await dashboardDatasrc.getData();
      return Right(getData);
    } on ServerException catch (e) {
      return Left(ServerFailure(status: e.status));
    } catch (_) {
      return left(ServerFailure(status: FailureStatus.networkFailure));
    }
  }
}