import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/app/models/question.dart';
import 'package:flutter_home_assignment/app/provider/quiz_provider.dart';
import 'package:flutter_home_assignment/app/ui/widgets/page_indicator.dart';
import 'package:flutter_home_assignment/app/ui/widgets/question_answers.dart';
import 'package:flutter_home_assignment/app/ui/widgets/top_bar.dart';
import 'package:flutter_home_assignment/theme/custom_colors.dart';
import 'package:flutter_home_assignment/theme/dimensions.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(UIDimensions.topBarPadding),
              child: Selector<QuizProvider, int>(
                selector: (_, provider) => provider.score,
                builder: (_, score, __) {
                  return TopBar(
                    score: score,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: UIDimensions.progressPadding),
              child: LinearProgressIndicator(
                minHeight: UIDimensions.progressHeight,
                backgroundColor: CustomColors.progressGrey.color,
                color: CustomColors.progressGreen.color,
                value: 0.4,
              ),
            ),
            Selector<QuizProvider, int>(
              selector: (_, provider) => provider.currentQuestionIndex,
              builder: (_, pageNumber, __) {
                return  PageIndicator(pageNumber: pageNumber+1);
              },
            ),
            Expanded(child: Consumer<QuizProvider>(
              builder: (context, provider, child) {
                return PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: provider.controller,
                  children: <Widget>[...generatePageViewPages(context)],
                );
              },
            ))
          ],
        ),
      )),
    );
  }

  List<Widget> generatePageViewPages(BuildContext context) {
    List<Widget> pages = [];
    List<Question> questions = context.read<QuizProvider>().questions;

    for (Question q in questions) {
      pages.add(QuestionAnswers(question: q));
    }

    return pages;
  }
}
