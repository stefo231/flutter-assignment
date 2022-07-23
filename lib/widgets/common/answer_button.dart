import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  final String title;
  const AnswerButton({Key? key, required this.title}) : super(key: key);

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade600,
        borderRadius: BorderRadius.circular(15),
      ),
      width: size.width * 0.9,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 8),
      alignment: Alignment.center,
      child: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
