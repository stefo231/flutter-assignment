import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/theme/custom_colors.dart';
import 'package:flutter_home_assignment/theme/dimensions.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    Key? key,
    required this.pageNumber,
  }) : super(key: key);

  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomColors.pageIndicatorColor.color,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(UIDimensions.pageIndicatorRadius),
          bottomRight: Radius.circular(UIDimensions.pageIndicatorRadius),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(UIDimensions.pageIndicatorPadding),
        child: Text(
          "Question $pageNumber",
          style: Theme.of(context).textTheme.headline2,
        ),
      ),
    );
  }
}
