import 'package:flutter/material.dart';

import 'package:quiz_app/src/pages/home_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
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
            child: const HomePage()),
      ),
    );
  }
}
