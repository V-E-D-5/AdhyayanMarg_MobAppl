import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';
import 'home_screen.dart';

class QuizResultScreen extends StatelessWidget {
  static const routeName = '/quiz-result';
  const QuizResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final result = context.watch<AppState>().quizRecommendedStream ?? 'Science';
    return Scaffold(
      appBar: AppBar(title: const Text('Your Result')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('We recommend the $result Stream for you.',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 12),
            Text(
              'Explore recommended careers and colleges aligned to the $result stream within J&K.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName),
              child: const Text('Go to Home'),
            )
          ],
        ),
      ),
    );
  }
}
