import 'package:flutter/material.dart';
import 'package:quiz_app/src/data/questions_data.dart';
import 'package:quiz_app/src/widgets/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestartQuiz});

  final void Function() onRestartQuiz;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summaryData = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      final Map<String, Object> currentAnsSummary = {
        'question_index': i,
        'question': questionsData[i].question,
        'correct_answer': questionsData[i].answers[0],
        'user_answer': chosenAnswers[i],
      };

      summaryData.add(currentAnsSummary);
    }

    return summaryData;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryData = getSummaryData();
    final int totalQuestions = questionsData.length;
    final int correctQuestions = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have answered $correctQuestions out of $totalQuestions questions correctly!',
              style: TextStyle(
                color: Colors.indigo.shade50,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(height: 30),
            SizedBox(
              height: 40,
              child: FloatingActionButton.extended(
                icon: Icon(
                  Icons.restart_alt,
                  color: Colors.indigo.shade50,
                  size: 24,
                ),
                onPressed: onRestartQuiz,
                label: Text(
                  'Restart Quiz!',
                  style: TextStyle(
                    color: Colors.indigo.shade50,
                    fontSize: 16,
                  ),
                ),
                backgroundColor: const Color.fromARGB(255, 126, 156, 198),
                extendedPadding: const EdgeInsets.all(11),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
