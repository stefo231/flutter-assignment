import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/app/ui/widgets/score.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    this.score = 0,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Icon(Icons.close),
          Score(score: score),
        ],
      ),
    );
  }
}
