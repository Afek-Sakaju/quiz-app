import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color: Color.fromARGB(157, 255, 255, 255),
        ),
        const SizedBox(
          height: 60,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
            color: Color.fromARGB(255, 236, 236, 236),
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
            icon: const Icon(Icons.play_circle_filled_rounded),
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            label: const Text(
              'Start Quiz',
            ))
      ]),
    );
  }
}
