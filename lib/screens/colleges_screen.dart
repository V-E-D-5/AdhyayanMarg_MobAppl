import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';
import '../widgets/bottom_nav_scaffold.dart';
import 'college_detail_screen.dart';

class CollegesScreen extends StatefulWidget {
  static const routeName = '/colleges';
  const CollegesScreen({super.key});

  @override
  State<CollegesScreen> createState() => _CollegesScreenState();
}

class _CollegesScreenState extends State<CollegesScreen> {
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final filtered = app.colleges.where((c) {
      final q = _query.toLowerCase();
      return c.name.toLowerCase().contains(q) ||
          c.city.toLowerCase().contains(q);
    }).toList();

    return BottomNavScaffold(
      currentIndex: 2,
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
                      'Colleges & Universities',
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Discover premier institutions in Jammu & Kashmir',
                      style: textTheme.bodyLarge?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.8),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Search Bar
              Container(
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
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search colleges by name or city',
                    hintStyle: TextStyle(
                      color: colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: colorScheme.primary,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.all(16),
                  ),
                  onChanged: (v) => setState(() => _query = v),
                ),
              ),
              const SizedBox(height: 16),
              // Results count
              Text(
                '${filtered.length} institutions found',
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 12),
              // Colleges List
              Expanded(
                child: ListView.builder(
                  itemCount: filtered.length,
                  itemBuilder: (context, index) {
                    final college = filtered[index];
                    final isPremier = college.id.contains('iit') ||
                        college.id.contains('nit') ||
                        college.id.contains('university') ||
                        college.id.contains('smvdu') ||
                        college.id.contains('aiims');

                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: colorScheme.surface,
                        borderRadius: BorderRadius.circular(16),
                        border: isPremier
                            ? Border.all(
                                color: colorScheme.secondary
                                    .withValues(alpha: 0.3),
                                width: 1,
                              )
                            : null,
                        boxShadow: [
                          BoxShadow(
                            color: colorScheme.primary.withValues(alpha: 0.1),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Card(
                        elevation: 0,
                        color: Colors.transparent,
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(16),
                          leading: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: isPremier
                                    ? [
                                        colorScheme.secondary
                                            .withValues(alpha: 0.2),
                                        colorScheme.primary
                                            .withValues(alpha: 0.1),
                                      ]
                                    : [
                                        colorScheme.primary
                                            .withValues(alpha: 0.1),
                                        colorScheme.tertiary
                                            .withValues(alpha: 0.05),
                                      ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(
                              isPremier ? Icons.school : Icons.account_balance,
                              color: isPremier
                                  ? colorScheme.secondary
                                  : colorScheme.primary,
                              size: 24,
                            ),
                          ),
                          title: Text(
                            college.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: isPremier
                                  ? colorScheme.secondary
                                  : colorScheme.onSurface,
                            ),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 16,
                                  color: colorScheme.primary
                                      .withValues(alpha: 0.7),
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  '${college.city}, ${college.state}',
                                  style: TextStyle(
                                    color: colorScheme.onSurface
                                        .withValues(alpha: 0.7),
                                  ),
                                ),
                                if (isPremier) ...[
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: colorScheme.secondary
                                          .withValues(alpha: 0.2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Text(
                                      'Premier',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: colorScheme.secondary,
                                      ),
                                    ),
                                  ),
                                ],
                              ],
                            ),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: colorScheme.primary,
                          ),
                          onTap: () => Navigator.pushNamed(
                            context,
                            CollegeDetailScreen.routeName,
                            arguments: college.id,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
