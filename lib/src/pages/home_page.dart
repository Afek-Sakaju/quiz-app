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
          child: ),
    );
  }
}
