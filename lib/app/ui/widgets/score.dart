import 'package:flutter/material.dart';
import '../../../theme/custom_colors.dart';
import '../../../theme/dimensions.dart';

class Score extends StatelessWidget {
  const Score({
    Key? key,
    required this.score,
  }) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        const Icon(
          Icons.hexagon,
          color: Colors.amber,
        ),
        Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: CustomColors.grey.color,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(UIDimensions.defaultRadius))),
            child: Text("$score",style: Theme.of(context).textTheme.headline1,)),
      ],
    );
  }
}
