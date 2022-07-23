import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/widgets/common/stroke_text.dart';

class QuestionNumber extends StatelessWidget {
  final int questionNumber;
  const QuestionNumber({Key? key, required this.questionNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: StrokeText(
        "Question $questionNumber",
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: Colors.white,
        strokeColor: Colors.black,
        strokeWidth: 1,
      ),
    );
  }
}
