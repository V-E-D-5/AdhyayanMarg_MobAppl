import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';
import '../providers/theme_provider.dart';
import '../widgets/bottom_nav_scaffold.dart';
import 'saved_careers_screen.dart';
import 'signup_screen.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final app = context.watch<AppState>();
    final user = app.user;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    if (user == null) {
      return const Scaffold(
        body: Center(child: Text('Please sign up first')),
      );
    }

    return BottomNavScaffold(
      currentIndex: 3,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFFFFF9C4), // Light yellow
              const Color(0xFFFFF176).withValues(alpha: 0.8), // Lighter yellow
            ],
          ),
        ),
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Header
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          colorScheme.primary.withValues(alpha: 0.1),
                          colorScheme.tertiary.withValues(alpha: 0.05),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: colorScheme.primary.withValues(alpha: 0.2),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.person,
                          size: 48,
                          color: colorScheme.primary,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Profile',
                          style: textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Manage your account and preferences',
                          style: textTheme.bodyLarge?.copyWith(
                            color: colorScheme.onSurface.withValues(alpha: 0.8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),

                  // User Info Card
                  _buildAnimatedCard(
                    child: Container(
                      padding: const EdgeInsets.all(20),
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
                          Row(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      colorScheme.primary
                                          .withValues(alpha: 0.2),
                                      colorScheme.secondary
                                          .withValues(alpha: 0.1),
                                    ],
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.person,
                                  color: colorScheme.primary,
                                  size: 30,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      user.name,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        _buildInfoChip(
                                          icon: Icons.school,
                                          label: 'Class ${user.classLevel}',
                                          color: colorScheme.primary,
                                        ),
                                        const SizedBox(width: 8),
                                        _buildInfoChip(
                                          icon: Icons.trending_up,
                                          label: user.streamOfInterest,
                                          color: colorScheme.secondary,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      children: [
                                        _buildInfoChip(
                                          icon: Icons.person_outline,
                                          label: user.gender,
                                          color: colorScheme.tertiary,
                                        ),
                                        const SizedBox(width: 8),
                                        _buildInfoChip(
                                          icon: Icons.location_on,
                                          label:
                                              '${user.district}, ${user.location}',
                                          color: colorScheme.primary,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Action Buttons
                  _buildAnimatedCard(
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: colorScheme.primary.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.bookmark,
                              color: colorScheme.primary,
                              size: 20,
                            ),
                          ),
                          title: const Text(
                            'My Saved Degrees',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: colorScheme.primary,
                          ),
                          onTap: () => Navigator.pushNamed(
                            context,
                            SavedCareersScreen.routeName,
                          ),
                        ),
                        const Divider(height: 1),
                        Consumer<ThemeProvider>(
                          builder: (context, themeProvider, child) {
                            return ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 8,
                              ),
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: colorScheme.tertiary
                                      .withValues(alpha: 0.1),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  themeProvider.isDarkMode
                                      ? Icons.light_mode
                                      : Icons.dark_mode,
                                  color: colorScheme.tertiary,
                                  size: 20,
                                ),
                              ),
                              title: Text(
                                themeProvider.isDarkMode
                                    ? 'Light Mode'
                                    : 'Dark Mode',
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              trailing: Switch(
                                value: themeProvider.isDarkMode,
                                onChanged: (value) =>
                                    themeProvider.toggleTheme(),
                                activeThumbColor: colorScheme.primary,
                              ),
                            );
                          },
                        ),
                        const Divider(height: 1),
                        ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color:
                                  colorScheme.secondary.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Icon(
                              Icons.logout,
                              color: colorScheme.secondary,
                              size: 20,
                            ),
                          ),
                          title: const Text(
                            'Logout',
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          trailing: Icon(
                            Icons.chevron_right,
                            color: colorScheme.primary,
                          ),
                          onTap: () {
                            app.logout();
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              SignupScreen.routeName,
                              (route) => false,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedCard({required Widget child}) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, 20 * (1 - _animationController.value)),
          child: Opacity(
            opacity: _animationController.value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  Widget _buildInfoChip({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
