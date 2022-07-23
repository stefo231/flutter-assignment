import 'dart:convert';

class Answers {
  final String answerOption;
  final bool isCorrect;
  Answers({
    required this.answerOption,
    required this.isCorrect,
  });

  Map<String, dynamic> toMap() {
    return {
      'answerOption': answerOption,
      'isCorrect': isCorrect,
    };
  }

  factory Answers.fromMap(Map<String, dynamic> map) {
    return Answers(
      answerOption: map['answerOption'] ?? '',
      isCorrect: map['isCorrect'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Answers.fromJson(String source) =>
      Answers.fromMap(json.decode(source));
}
