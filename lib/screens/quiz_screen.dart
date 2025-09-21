import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';
import 'quiz_result_screen.dart';

class QuizScreen extends StatefulWidget {
  static const routeName = '/quiz';
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int step = 0;
  int science = 0;
  int arts = 0;
  int commerce = 0;

  void _answer(String choice) {
    switch (choice) {
      case 'Science':
        science++;
        break;
      case 'Arts':
        arts++;
        break;
      case 'Commerce':
        commerce++;
        break;
    }
    if (step < _questions.length - 1) {
      setState(() => step++);
    } else {
      String result;
      if (science >= arts && science >= commerce) {
        result = 'Science';
      } else if (commerce >= science && commerce >= arts) {
        result = 'Commerce';
      } else {
        result = 'Arts';
      }
      context.read<AppState>().setQuizRecommendation(result);
      Navigator.pushReplacementNamed(context, QuizResultScreen.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    final q = _questions[step];
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aptitude Quiz'),
        backgroundColor: colorScheme.surface,
        elevation: 2,
        shadowColor: colorScheme.primary.withValues(alpha: 0.3),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colorScheme.surface,
              colorScheme.surface.withValues(alpha: 0.8),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Progress Section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      colorScheme.primary.withValues(alpha: 0.1),
                      colorScheme.tertiary.withValues(alpha: 0.05),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: colorScheme.primary.withValues(alpha: 0.2),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Question ${step + 1} of ${_questions.length}',
                      style: textTheme.titleMedium?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    LinearProgressIndicator(
                      value: (step + 1) / _questions.length,
                      backgroundColor:
                          colorScheme.primary.withValues(alpha: 0.2),
                      valueColor: AlwaysStoppedAnimation<Color>(
                        colorScheme.primary,
                      ),
                      minHeight: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              // Question Section
              Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      q.prompt,
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ...q.options.map((o) => Container(
                          margin: const EdgeInsets.only(bottom: 12),
                          child: ElevatedButton(
                            onPressed: () => _answer(o.stream),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: colorScheme.surface,
                              foregroundColor: colorScheme.onSurface,
                              elevation: 2,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 16,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: BorderSide(
                                  color: colorScheme.primary
                                      .withValues(alpha: 0.3),
                                  width: 1,
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: colorScheme.primary,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Text(
                                    o.text,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizQuestion {
  final String prompt;
  final List<QuizOption> options;
  const QuizQuestion(this.prompt, this.options);
}

class QuizOption {
  final String text;
  final String stream; // Science/Arts/Commerce
  const QuizOption(this.text, this.stream);
}

const _questions = [
  QuizQuestion(
    'Which activity do you enjoy the most?',
    [
      QuizOption('Solving puzzles and experiments', 'Science'),
      QuizOption('Analyzing markets and money matters', 'Commerce'),
      QuizOption('Writing, drawing, or social initiatives', 'Arts'),
    ],
  ),
  QuizQuestion(
    'Which subject appeals to you most?',
    [
      QuizOption('Physics/Chemistry/Math/Biology', 'Science'),
      QuizOption('Economics/Business/Accounts', 'Commerce'),
      QuizOption('History/Political Science/Literature', 'Arts'),
    ],
  ),
  QuizQuestion(
    'What kind of career do you see yourself in?',
    [
      QuizOption('Engineer/Doctor/Technologist', 'Science'),
      QuizOption('Entrepreneur/Banker/Analyst', 'Commerce'),
      QuizOption('Administrator/Designer/Journalist', 'Arts'),
    ],
  ),
];
