import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/app/ui/widgets/top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: const <Widget>[
          TopBar(score: 100,)
        ],
      ),
    ));
  }
}
