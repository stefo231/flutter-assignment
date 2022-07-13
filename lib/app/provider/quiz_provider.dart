import 'dart:math';

import 'package:flutter/material.dart';

import '../../utils/dummy_data.dart';
import '../models/question.dart';

class QuizProvider extends ChangeNotifier{

  final List<Question> _questions = DummyData.questions;
  List<Question> get questions => _questions;
  int currentQuestionIndex = 0;
  bool isAnyAnswerSelected = false;
  final PageController controller = PageController();
  int correctAnswerButtonPosition = Random().nextInt(3);
  int score = 0;

  Future<void> onWrongAnswerSelected() async {
    isAnyAnswerSelected = true;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    //move to next question
    _moveToNextQuestion();
  }

  Future<void> onCorrectAnswerSelected() async {
    isAnyAnswerSelected = true;
    score+=50;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    //move to next question
    _moveToNextQuestion();
  }

  void _moveToNextQuestion(){
    if (currentQuestionIndex < questions.length - 1){
      currentQuestionIndex++;
      isAnyAnswerSelected = false;
      controller.jumpToPage(currentQuestionIndex);
      correctAnswerButtonPosition = Random().nextInt(3);
      notifyListeners();
    }
  }
}