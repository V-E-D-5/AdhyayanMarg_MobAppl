import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';

class SavedCareersScreen extends StatelessWidget {
  static const routeName = '/saved-careers';
  const SavedCareersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final saved = app.bookmarkedDegrees;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Saved Degrees'),
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFE8F5E8), // Light mint
              const Color(0xFFC8E6C9).withValues(alpha: 0.8), // Lighter mint
            ],
          ),
        ),
        child: saved.isEmpty
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.bookmark_outline,
                      size: 64,
                      color: colorScheme.primary.withValues(alpha: 0.5),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'No saved degrees yet',
                      style: textTheme.headlineSmall?.copyWith(
                        color: colorScheme.primary.withValues(alpha: 0.7),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Bookmark degrees you\'re interested in from the Explore page',
                      style: textTheme.bodyMedium?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.6),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: saved.length,
                itemBuilder: (context, index) {
                  final degree = saved[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: colorScheme.surface.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.primary.withValues(alpha: 0.1),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.all(16),
                      title: Text(
                        degree.name,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          'Tap to view detailed information',
                          style: TextStyle(
                            color: colorScheme.onSurface.withValues(alpha: 0.7),
                          ),
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.bookmark,
                          color: colorScheme.secondary,
                        ),
                        onPressed: () => app.toggleBookmark(degree.name),
                      ),
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          '/course-detail',
                          arguments: degree.name,
                        );
                      },
                    ),
                  );
                },
              ),
      ),
    );
  }
}
