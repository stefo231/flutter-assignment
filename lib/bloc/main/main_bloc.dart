import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_home_assignment/repositories/data_repository.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final DataRepository dataRepository;
  MainBloc({required this.dataRepository}) : super(PageLoading()) {
    on<MainBloc>(event, emit) async {
      if (event is GetQuestions) {
        List<Questions?> data = await _getQuestionsData();
      }
    }
  }
}

Future<List<Questions?>> _getQuestionsData() async {
  return await dataRepository.fetchAllQuestions();
}
