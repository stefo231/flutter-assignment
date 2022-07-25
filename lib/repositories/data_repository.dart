import 'package:flutter_home_assignment/repositories/api/api_service.dart';
import 'package:flutter_home_assignment/repositories/models/question_model.dart';

class DataRepository {
  Future<List<Questions?>> fetchAllQuestions() async {
    return await ApiService.instance.fetchAllQuestions();
  }
}
