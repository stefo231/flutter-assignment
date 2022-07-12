import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/app/models/question.dart';
import 'package:flutter_home_assignment/app/ui/widgets/answer_button.dart';
import 'package:flutter_home_assignment/theme/dimensions.dart';

class QuestionAnswers extends StatelessWidget {
  const QuestionAnswers({Key? key, required this.question}) : super(key: key);

  final Questioni question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: UIDimensions.defaultPadding),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Image.network(
                "https://thumbs.dreamstime.com/b/happy-cute-brain-lightbulb-character-vector-hand-drawing-flat-style-illustration-icon-design-isolated-white-background-150468272.jpg"),
          ),
          Text(
            question.text,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 20.0,
          ),
          ...generateButtons()
        ],
      ),
    );
  }

  List<Widget> generateButtons() {
    List<Widget> buttons = [];
    for (String answerText in question.incorrect) {
      buttons.add(AnswerButton(
        text: answerText,
        onPressed: () {
          // provider.onWrongSelection
        },
        paddingBottom: 12.0,
      ));
    }
    buttons.add(AnswerButton(
      text: question.correct,
      onPressed: () {
        // provider.onCorrectSelection
      },
      paddingBottom: 12.0,
    ));
    buttons.shuffle();
    return buttons;
  }
}
