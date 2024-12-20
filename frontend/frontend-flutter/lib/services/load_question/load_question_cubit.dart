import 'package:bloc/bloc.dart';
import 'package:ttmd/services/load_question/load_question_state.dart';
import 'package:http/http.dart' as http;

class LoadQuestionCubit extends Cubit<LoadQuestionState> {

  LoadQuestionCubit()
      : super(LoadQuestionState(
      status: LoadQuestionStatus.initial, question: ""));

  Future<void> loadQuestionToChat({String? question, String ? time}) async {
    print(
        'LoadQuestionCubit : loadQuestionToChat() : DEBUT ');

      emit(state.copyWith(
          status: LoadQuestionStatus.loaded, question: question, time: time));
  }
}
