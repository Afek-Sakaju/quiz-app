import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.label, {super.key, required this.onTap});

  final String? label;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    const defaultLabel = 'Answer Text';

    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: const Color.fromARGB(255, 218, 181, 192),
          foregroundColor: const Color.fromARGB(255, 35, 0, 54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          )),
      child: Text(label ?? defaultLabel),
    );
  }
}
