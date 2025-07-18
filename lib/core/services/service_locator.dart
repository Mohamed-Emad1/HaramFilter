import 'package:get_it/get_it.dart';
import 'package:haram_filter/features/home/data/repos/model_repo_imp.dart';
import 'package:haram_filter/features/home/domain/model_repo.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ModelRepo>(ModelRepoImp());
}
