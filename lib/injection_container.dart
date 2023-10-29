import 'package:get_it/get_it.dart';
import 'package:midori/features/dashboard/data/datasource/dashboard_remote_ds.dart';
import 'package:midori/features/dashboard/data/repository/dashboard_repo_impl.dart';
import 'package:midori/features/dashboard/domain/repository/dashboard_repo.dart';
import 'package:midori/features/dashboard/domain/usecase/get_products_usecase.dart';
import 'package:midori/features/dashboard/presentation/cubit/dashboard_cubit.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {

//cubit
  sl.registerFactory<DashboardCubit>(() => DashboardCubit(sl()));

//usecase
sl.registerFactory<DashboardUseCase>(() => DashboardUseCase(sl()));

//datasrc
sl.registerFactory<DashboardRemoteDataSource>(() => DashboardRemoteDataSourceImpl());

//repository
sl.registerFactory<DashboardRepo>(() => DashboardRepoImpl(sl()));

}

