import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';
import '../../injection_container.dart' as di;
import '../../features/dashboard/presentation/cubit/dashboard_cubit.dart';

List<SingleChildWidget> providers = [
  BlocProvider(create: (context) => di.sl<DashboardCubit>()),
];
