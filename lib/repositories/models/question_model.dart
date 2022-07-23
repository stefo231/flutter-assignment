import 'package:flutter_home_assignment/repositories/models/answers_model.dart';

class Questions {
  final String image;
  final String question;
  final List<Answers> answers;

  Questions({
    required this.image,
    required this.question,
    required this.answers,
  });

  factory Questions.fromJson(Map<String, dynamic> map) {
    return Questions(
      image: map['image'] ?? '',
      question: map['question'] ?? '',
      answers:
          List<Answers>.from(map['answers']?.map((x) => Answers.fromMap(x))),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'question': question,
      'answers': answers.map((x) => x.toMap()).toList(),
    };
  }

  // String toJson() => json.encode(toMap());

  // factory Question.fromJson(String source) =>
  //     Question.fromMap(json.decode(source));
}
