import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_home_assignment/bloc/main/main_bloc.dart';
import 'package:flutter_home_assignment/widgets/common/answer_button.dart';
import 'package:flutter_home_assignment/widgets/common/question_image.dart';
import 'package:flutter_home_assignment/widgets/common/question_number.dart';
import 'package:flutter_home_assignment/widgets/common/time_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainBloc, MainState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: const Icon(
              Icons.close_rounded,
              color: Colors.grey,
              size: 40,
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 12),
                child: Row(
                  children: [
                    const RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        Icons.hexagon_rounded,
                        color: Colors.amber,
                        size: 50,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(0),
                      padding: const EdgeInsets.all(4),
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Text(
                        "100",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          body: Column(
            children: [
              const TimeIndicator(),
              const QuestionNumber(questionNumber: 2),
              const Flexible(
                flex: 1,
                child:
                    QuestionImage(imageLocation: "assets/images/brain_img.png"),
              ),
              Container(
                margin: const EdgeInsets.all(16),
                child: Text(
                  "How much of your brain do you use?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700,
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Column(
                  children: const [
                    AnswerButton(title: "Answer 1"),
                    AnswerButton(title: "Answer 2"),
                    AnswerButton(title: "Answer 3"),
                    AnswerButton(title: "Answer 4"),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
