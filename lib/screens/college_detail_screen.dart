import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';

class CollegeDetailScreen extends StatelessWidget {
  static const routeName = '/college-detail';
  const CollegeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final collegeId = ModalRoute.of(context)!.settings.arguments as String?;
    final app = context.watch<AppState>();
    final college = app.colleges.firstWhere((c) => c.id == collegeId);

    return Scaffold(
      appBar: AppBar(title: const Text('College Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (college.imageAsset != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  college.imageAsset!,
                  height: 160,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    height: 160,
                    color: const Color(0xFFE0E0E0),
                    child: const Center(child: Icon(Icons.image_not_supported)),
                  ),
                ),
              ),
            const SizedBox(height: 12),
            Text(college.name,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.w700)),
            const SizedBox(height: 6),
            Text('${college.city}, ${college.state}',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.black54)),
            if (college.nirfRank != null) ...[
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context)
                      .colorScheme
                      .primary
                      .withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withValues(alpha: 0.3),
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.emoji_events,
                      size: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      college.nirfRank!,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Theme.of(context)
                    .colorScheme
                    .secondary
                    .withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context)
                      .colorScheme
                      .secondary
                      .withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.attach_money,
                    size: 16,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Estimated Fees: ${college.estimatedFees}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text('Courses Offered',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.separated(
                itemCount: college.coursesOffered.length,
                itemBuilder: (context, i) => ListTile(
                  leading: const Icon(Icons.check_circle_outline,
                      color: Color(0xFF2E7D32)),
                  title: Text(college.coursesOffered[i]),
                ),
                separatorBuilder: (_, __) => const Divider(height: 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
