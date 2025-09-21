import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/app_state.dart';
import '../data/mock_data.dart';
import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>
    with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  String _classLevel = '12';
  String _stream = 'Science(PCM)';
  String _gender = 'Male';
  String _location = 'Jammu';
  String _district = 'Jammu';

  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 800),
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
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    ));

    _animationController.forward();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
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
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _slideAnimation,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              Icons.person_add,
                              size: 48,
                              color: colorScheme.primary,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              'Create Your Profile',
                              style: textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: colorScheme.primary,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Tell us about yourself to get personalized recommendations',
                              style: textTheme.bodyLarge?.copyWith(
                                color: colorScheme.onSurface
                                    .withValues(alpha: 0.8),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Form Fields
                      _buildAnimatedField(
                        child: TextFormField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            prefixIcon:
                                Icon(Icons.person, color: colorScheme.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: colorScheme.primary, width: 2),
                            ),
                          ),
                          validator: (v) => (v == null || v.trim().isEmpty)
                              ? 'Please enter your name'
                              : null,
                        ),
                      ),

                      const SizedBox(height: 20),

                      _buildAnimatedField(
                        child: DropdownButtonFormField<String>(
                          initialValue: _classLevel,
                          decoration: InputDecoration(
                            labelText: 'Class Level',
                            prefixIcon:
                                Icon(Icons.school, color: colorScheme.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: colorScheme.primary, width: 2),
                            ),
                          ),
                          items: const [
                            DropdownMenuItem(
                                value: '12', child: Text('Class 12')),
                            DropdownMenuItem(
                                value: '11', child: Text('Class 11')),
                          ],
                          onChanged: (v) =>
                              setState(() => _classLevel = v ?? '12'),
                        ),
                      ),

                      const SizedBox(height: 20),

                      _buildAnimatedField(
                        child: DropdownButtonFormField<String>(
                          initialValue: _stream,
                          decoration: InputDecoration(
                            labelText: 'Stream of Interest',
                            prefixIcon: Icon(Icons.trending_up,
                                color: colorScheme.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: colorScheme.primary, width: 2),
                            ),
                          ),
                          items: const [
                            DropdownMenuItem(
                                value: 'Science(PCM)',
                                child: Text('Science(PCM)')),
                            DropdownMenuItem(
                                value: 'Science(PCB)',
                                child: Text('Science(PCB)')),
                            DropdownMenuItem(
                                value: 'Science(PCMB)',
                                child: Text('Science(PCMB)')),
                            DropdownMenuItem(
                                value: 'Commerce', child: Text('Commerce')),
                            DropdownMenuItem(
                                value: 'Arts', child: Text('Arts')),
                            DropdownMenuItem(
                                value: 'Others', child: Text('Others')),
                          ],
                          onChanged: (v) =>
                              setState(() => _stream = v ?? 'Science(PCM)'),
                        ),
                      ),

                      const SizedBox(height: 20),

                      _buildAnimatedField(
                        child: DropdownButtonFormField<String>(
                          initialValue: _gender,
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            prefixIcon: Icon(Icons.person_outline,
                                color: colorScheme.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: colorScheme.primary, width: 2),
                            ),
                          ),
                          items: const [
                            DropdownMenuItem(
                                value: 'Male', child: Text('Male')),
                            DropdownMenuItem(
                                value: 'Female', child: Text('Female')),
                            DropdownMenuItem(
                                value: 'Other', child: Text('Other')),
                          ],
                          onChanged: (v) =>
                              setState(() => _gender = v ?? 'Male'),
                        ),
                      ),

                      const SizedBox(height: 20),

                      _buildAnimatedField(
                        child: DropdownButtonFormField<String>(
                          initialValue: _location,
                          decoration: InputDecoration(
                            labelText: 'Location',
                            prefixIcon: Icon(Icons.location_on,
                                color: colorScheme.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: colorScheme.primary, width: 2),
                            ),
                          ),
                          items: const [
                            DropdownMenuItem(
                                value: 'Jammu', child: Text('Jammu')),
                            DropdownMenuItem(
                                value: 'Kashmir', child: Text('Kashmir')),
                          ],
                          onChanged: (v) {
                            setState(() {
                              _location = v ?? 'Jammu';
                              _district =
                                  districts[_location]?.first ?? 'Jammu';
                            });
                          },
                        ),
                      ),

                      const SizedBox(height: 20),

                      _buildAnimatedField(
                        child: DropdownButtonFormField<String>(
                          initialValue: _district,
                          decoration: InputDecoration(
                            labelText: 'District',
                            prefixIcon:
                                Icon(Icons.map, color: colorScheme.primary),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                  color: colorScheme.primary, width: 2),
                            ),
                          ),
                          items: (districts[_location] ?? [])
                              .map((district) => DropdownMenuItem(
                                    value: district,
                                    child: Text(district),
                                  ))
                              .toList(),
                          onChanged: (v) => setState(() => _district =
                              v ?? districts[_location]?.first ?? 'Jammu'),
                        ),
                      ),

                      const SizedBox(height: 40),

                      // Submit Button
                      _buildAnimatedField(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AppState>().saveUser(
                                    _nameController.text.trim(),
                                    _classLevel,
                                    _stream,
                                    _gender,
                                    _location,
                                    _district,
                                  );
                              Navigator.pushReplacementNamed(
                                context,
                                HomeScreen.routeName,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Create Profile',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAnimatedField({required Widget child}) {
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
}
