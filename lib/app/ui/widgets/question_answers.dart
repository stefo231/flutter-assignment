import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/app/models/question.dart';
import 'package:flutter_home_assignment/app/provider/quiz_provider.dart';
import 'package:flutter_home_assignment/app/ui/widgets/answer_button.dart';
import 'package:flutter_home_assignment/theme/dimensions.dart';
import 'package:provider/provider.dart';

class QuestionAnswers extends StatelessWidget {
  const QuestionAnswers({Key? key, required this.question}) : super(key: key);

  final Question question;

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
            height: UIDimensions.defaultPadding,
          ),
          Consumer<QuizProvider>(
            builder: (context, provider, child) {
              return IgnorePointer(
                ignoring: provider.isAnyAnswerSelected,
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: generateButtons(context),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  List<Widget> generateButtons(BuildContext context) {
    List<Widget> buttons = [];

    for (String answerText in question.incorrect) {
      buttons.add(AnswerButton(
        text: answerText,
        onPressed: () => context.read<QuizProvider>().onWrongAnswerSelected(),
        paddingBottom: UIDimensions.answerButtonBottomPadding,
        status: context.read<QuizProvider>().isAnyAnswerSelected ? ButtonStatus.incorrect : ButtonStatus.neutral,
      ));
    }
    buttons.insert(context.read<QuizProvider>().correctAnswerButtonPosition, AnswerButton(
      text: question.correct,
      onPressed: () => context.read<QuizProvider>().onCorrectAnswerSelected(),
      paddingBottom: UIDimensions.answerButtonBottomPadding,
      status: context.read<QuizProvider>().isAnyAnswerSelected ? ButtonStatus.correct : ButtonStatus.neutral,
    ));

    return buttons;
  }
}
