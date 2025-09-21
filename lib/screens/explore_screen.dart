import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';
import '../data/mock_data.dart';
import '../widgets/bottom_nav_scaffold.dart';
import 'course_detail_screen.dart';

class ExploreScreen extends StatelessWidget {
  static const routeName = '/explore';
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return BottomNavScaffold(
      currentIndex: 1,
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
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Header
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
                    'Explore Careers',
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: colorScheme.primary,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Discover career paths based on your degree',
                    style: textTheme.bodyLarge?.copyWith(
                      color: colorScheme.onSurface.withValues(alpha: 0.8),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Degrees List
            ...degrees.map((d) => Container(
                  margin: const EdgeInsets.only(bottom: 12),
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
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      dividerColor: Colors.transparent,
                    ),
                    child: ExpansionTile(
                      tilePadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      childrenPadding: const EdgeInsets.only(bottom: 8),
                      title: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            CourseDetailScreen.routeName,
                            arguments: d.name,
                          );
                        },
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                d.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Icon(
                              Icons.info_outline,
                              color: colorScheme.primary.withValues(alpha: 0.7),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      iconColor: colorScheme.primary,
                      collapsedIconColor:
                          colorScheme.primary.withValues(alpha: 0.7),
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: colorScheme.surface.withValues(alpha: 0.5),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: colorScheme.primary.withValues(alpha: 0.1),
                              width: 1,
                            ),
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            title: Text(
                              d.name,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                'Tap to view detailed information about this degree',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: colorScheme.onSurface
                                      .withValues(alpha: 0.7),
                                ),
                              ),
                            ),
                            trailing: IconButton(
                              icon: Icon(
                                app.isBookmarked(d.name)
                                    ? Icons.bookmark
                                    : Icons.bookmark_outline,
                                color: app.isBookmarked(d.name)
                                    ? colorScheme.secondary
                                    : colorScheme.primary
                                        .withValues(alpha: 0.6),
                                size: 20,
                              ),
                              onPressed: () => app.toggleBookmark(d.name),
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
    );
  }
}
