import 'package:flutter/material.dart';

class QuestionImage extends StatelessWidget {
  final String imageLocation;

  const QuestionImage({Key? key, required this.imageLocation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          offset: const Offset(-1, -1),
          spreadRadius: 6.0,
          blurRadius: 16.0,
        ),
      ]),
      child: Image.asset(
        imageLocation,
        fit: BoxFit.cover,
      ),
    );
  }
}
