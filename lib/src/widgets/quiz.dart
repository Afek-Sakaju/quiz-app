import 'package:flutter/material.dart';

import 'package:quiz_app/src/screens/home_screen.dart';
import 'package:quiz_app/src/screens/questions_screen.dart';
import 'package:quiz_app/src/data/questions_data.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    final bool isFinishedQuiz = selectedAnswers.length == questionsData.length;

    if (isFinishedQuiz) {
      setState(() {
        activeScreen = 'start-screen';
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Widget screenWidget = activeScreen == 'start-screen'
        ? HomeScreen(switchScreen)
        : QuestionsScreen(onAnswerSelect: chooseAnswer);

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 64, 112, 175),
                Color.fromARGB(255, 84, 126, 180),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: screenWidget),
      ),
    );
  }
}
