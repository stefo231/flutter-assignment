import 'package:flutter/material.dart';
import 'package:flutter_home_assignment/app/provider/quiz_provider.dart';
import 'package:flutter_home_assignment/theme/custom_theme.dart';
import 'package:provider/provider.dart';
import 'ui/pages/home/home_page.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.lightTheme,
      home: ChangeNotifierProvider<QuizProvider>(
        create: (BuildContext context) => QuizProvider(),
        child: const HomePage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}