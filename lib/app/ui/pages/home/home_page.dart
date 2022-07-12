import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/app/models/question.dart';
import 'package:flutter_home_assignment/app/ui/widgets/question_answers.dart';
import 'package:flutter_home_assignment/app/ui/widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  //move it to provider
  final List<Questioni> questions = [
    Questioni(["6", "7", "8"], "4", "2+2"),
    Questioni(["Cow", "Dog", "Tiger"], "Bird", "Which animal can fly?")
  ];

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TopBar(
                score: 100,
              ),
            ),
            Expanded(
              child: PageView(
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: <Widget>[...generatePageViewPages(context)],
              ),
            )
          ],
        ),
      )),
    );
  }

  List<Widget> generatePageViewPages(BuildContext context) {
    List<Widget> pages = [];
    for (Questioni q in questions) {
      pages.add(QuestionAnswers(question: q));
    }

    return pages;
  }
}
