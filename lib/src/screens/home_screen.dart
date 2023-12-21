import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 250,
          color: const Color.fromARGB(157, 255, 255, 255),
        ),
        const SizedBox(
          height: 60,
        ),
        Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.ubuntuMono(
            color: const Color.fromARGB(255, 236, 236, 236),
            fontSize: 25,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
            icon: const Icon(Icons.play_circle_filled_rounded),
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            label: Text(
              'Start Quiz',
              style: GoogleFonts.ubuntuMono(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ))
      ]),
    );
  }
}
