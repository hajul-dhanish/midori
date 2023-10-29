import 'package:dartz/dartz.dart';
import 'package:midori/core/error/failure.dart';

import '../entity/dashboard_entity.dart';

abstract class DashboardRepo {
  Future<Either<Failure, DashboardEntity>> getProduct();
}