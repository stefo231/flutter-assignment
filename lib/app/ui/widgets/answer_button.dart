import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/theme/custom_colors.dart';

enum ButtonStatus{
  correct,
  incorrect,
  neutral,
}

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.paddingTop = 0.0,
    this.paddingRight = 0.0,
    this.paddingBottom = 0.0,
    this.paddingLeft = 0.0,
    this.status = ButtonStatus.neutral,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;
  final double paddingLeft;
  final ButtonStatus status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(paddingLeft, paddingTop, paddingRight, paddingBottom),
      child: SizedBox(
        height: 60.0,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(primary:_colorFromStatus()),
          child: Text(text),
        ),
      ),
    );
  }

  Color _colorFromStatus(){
    switch(status){
      case ButtonStatus.neutral:
        return CustomColors.purple.color;
      case ButtonStatus.correct:
        return CustomColors.green.color;
      case ButtonStatus.incorrect:
        return CustomColors.red.color;
    }
  }
}
