import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haram_filter/core/services/service_locator.dart';
import 'package:haram_filter/features/home/domain/model_repo.dart';
import 'package:haram_filter/features/home/presentation/manager/cubit/model_run_cubit.dart';
import 'package:haram_filter/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => ModelRunCubit(modelRepo: getIt.get<ModelRepo>()),

          child: HomeViewBody(),
        ),
      ),
    );
  }
}
