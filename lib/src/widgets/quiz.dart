import 'package:flutter/material.dart';

import 'package:quiz_app/src/screens/home_screen.dart';
import 'package:quiz_app/src/screens/questions_screen.dart';
import 'package:quiz_app/src/screens/results_screen.dart';
import 'package:quiz_app/src/data/questions_data.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String _activeScreen = 'start-screen';
  List<String> _selectedAnswers = [];

  void switchScreen() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    final bool isFinishedQuiz = _selectedAnswers.length == questionsData.length;

    if (isFinishedQuiz) {
      setState(() {
        _activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(switchScreen);

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onAnswerSelect: chooseAnswer);
    } else if (_activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
          chosenAnswers: _selectedAnswers, onRestartQuiz: restartQuiz);
    }

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
