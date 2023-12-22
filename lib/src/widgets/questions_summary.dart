import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            final bool isCorrectAnswer =
                data['user_answer'] == data['correct_answer'];

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCorrectAnswer
                          ? const Color.fromARGB(255, 129, 191, 149)
                          : const Color.fromARGB(255, 224, 140, 140),
                      border: Border.all(
                        color: const Color.fromARGB(255, 74, 156, 224),
                        width: 0.8,
                      )),
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['correct_answer'] as String,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 146, 197, 162),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 1),
                      Text(
                        data['user_answer'] as String,
                        style: TextStyle(
                          color: isCorrectAnswer
                              ? Colors.cyan.shade300
                              : const Color.fromARGB(255, 212, 157, 157),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 13),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
