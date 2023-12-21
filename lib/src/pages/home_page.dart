import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Image.asset('assets/images/quiz-logo.png', width: 250),
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
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ]),
          )),
    );
  }
}
