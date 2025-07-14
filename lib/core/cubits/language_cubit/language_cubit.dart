import 'package:bloc/bloc.dart';
import 'package:haram_filter/core/services/shared_preferences.dart';
import 'package:haram_filter/core/utils/constants.dart';
import 'package:meta/meta.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(EnglishLanguage());

  void setEnglishLanguage() {
    emit(EnglishLanguage());
    SharedPreferencesSingleton.setBool(kisEnglishLanguage, true);

  }

  void setArabicLanguage() {
    emit(ArabicLanguage());
    SharedPreferencesSingleton.setBool(kisEnglishLanguage, false);
  }

}
