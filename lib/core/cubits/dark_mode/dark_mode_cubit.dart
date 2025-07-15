import 'package:bloc/bloc.dart';
import 'package:haram_filter/core/services/shared_preferences.dart';
import 'package:haram_filter/core/utils/constants.dart';
import 'package:meta/meta.dart';

part 'dark_mode_state.dart';

class DarkModeCubit extends Cubit<DarkModeState> {
  DarkModeCubit() : super(DarkModeOff());

  void turnOnDarkMode() {
    emit(DarkModeOn());
    // Here you can also save the state to shared preferences if needed
    SharedPreferencesSingleton.setBool(kisDarkMode, true);
  }

  void turnOffDarkMode() {
    emit(DarkModeOff());
    // Here you can also save the state to shared preferences if needed
    SharedPreferencesSingleton.setBool(kisDarkMode, false);
  }
}
