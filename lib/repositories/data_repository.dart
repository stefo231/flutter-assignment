import 'package:flutter_home_assignment/repositories/api/api_service.dart';
import 'package:flutter_home_assignment/repositories/models/question_model.dart';

class DataRepository {
  Future<List<Question?>> fetchAllQuestions() async {
    return await ApiService.instance.fetchAllQuestions();
  }
}
