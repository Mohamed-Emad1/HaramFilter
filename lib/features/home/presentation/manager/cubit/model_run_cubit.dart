import 'package:bloc/bloc.dart';
import 'package:haram_filter/features/domain/repos/model_repo.dart';
import 'package:meta/meta.dart';

part 'model_run_state.dart';

class ModelRunCubit extends Cubit<ModelRunState> {
  ModelRunCubit({required this.modelRepo}) : super(ModelRunInitial());

  final ModelRepo modelRepo;

  bool isRunning = false;

  Future runModel() async {
    emit(ModelRunLoading());
    // Simulate a model run with a delay
    Future.delayed(Duration(seconds: 2), () {
      // Here you would typically call your model and handle success or failure
      // For now, we will just emit success for demonstration purposes
      if (!isRunning) {
        emit(ModelRunSuccess());
        isRunning = true;
      } else {
        emit(ModelRunStopped());
        isRunning = false;
      }
    });
  }
}
