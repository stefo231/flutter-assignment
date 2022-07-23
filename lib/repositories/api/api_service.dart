import 'package:flutter_home_assignment/providers/questions.dart';
import 'package:flutter_home_assignment/repositories/models/question_model.dart';

class ApiService {
  ApiService._instantiate();

  static final ApiService instance = ApiService._instantiate();

  Future<List<Questions?>> fetchAllQuestions() async {
    var responseBody = dummy_data;
    List<Questions?> list = [];
    for (var q in responseBody) {
      list.add(Questions.fromJson(q));
    }
    return await Future.delayed(const Duration(seconds: 1)).then((_) => list);
  }
}
