import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class CourseDetailScreen extends StatelessWidget {
  static const routeName = '/course-detail';
  final String courseName;

  const CourseDetailScreen({
    super.key,
    required this.courseName,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final courseInfo = courseDetails[courseName];

    if (courseInfo == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Course Details')),
        body: const Center(
          child: Text('Course information not found'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
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
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course Header
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courseName,
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      courseInfo['description'] ?? '',
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.8),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Course Information Cards
              _buildInfoCard(
                context,
                'Duration',
                courseInfo['duration'] ?? '',
                Icons.schedule,
                colorScheme,
                textTheme,
              ),
              _buildInfoCard(
                context,
                'Eligibility',
                courseInfo['eligibility'] ?? '',
                Icons.school,
                colorScheme,
                textTheme,
              ),
              _buildInfoCard(
                context,
                'Entrance Exams',
                courseInfo['entrance'] ?? '',
                Icons.quiz,
                colorScheme,
                textTheme,
              ),
              _buildInfoCard(
                context,
                'Subjects',
                courseInfo['subjects'] ?? '',
                Icons.menu_book,
                colorScheme,
                textTheme,
              ),
              _buildInfoCard(
                context,
                'Career Prospects',
                courseInfo['career_prospects'] ?? '',
                Icons.work,
                colorScheme,
                textTheme,
              ),
              _buildInfoCard(
                context,
                'Top Companies',
                courseInfo['top_companies'] ?? '',
                Icons.business,
                colorScheme,
                textTheme,
              ),
              _buildInfoCard(
                context,
                'Average Salary',
                courseInfo['average_salary'] ?? '',
                Icons.attach_money,
                colorScheme,
                textTheme,
              ),
              _buildInfoCard(
                context,
                'Further Studies',
                courseInfo['further_studies'] ?? '',
                Icons.trending_up,
                colorScheme,
                textTheme,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoCard(
    BuildContext context,
    String title,
    String content,
    IconData icon,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
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
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    icon,
                    color: colorScheme.primary,
                    size: 20,
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.8),
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

