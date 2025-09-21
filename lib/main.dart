import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/app_state.dart';
import 'providers/theme_provider.dart';
import 'screens/onboarding_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/home_screen.dart';
import 'screens/explore_screen.dart';
import 'screens/colleges_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/college_detail_screen.dart';
import 'screens/saved_careers_screen.dart';
import 'screens/quiz_screen.dart';
import 'screens/quiz_result_screen.dart';
import 'screens/course_detail_screen.dart';
import 'theme.dart';

void main() {
  runApp(const AdhyayanMargApp());
}

class AdhyayanMargApp extends StatelessWidget {
  const AdhyayanMargApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppState()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'AdhyayanMarg',
            debugShowCheckedModeBanner: false,
            theme: buildAppTheme(),
            darkTheme: _buildDarkTheme(),
            themeMode: themeProvider.themeMode,
            initialRoute: OnboardingScreen.routeName,
            routes: {
              OnboardingScreen.routeName: (_) => const OnboardingScreen(),
              SignupScreen.routeName: (_) => const SignupScreen(),
              HomeScreen.routeName: (_) => const HomeScreen(),
              ExploreScreen.routeName: (_) => const ExploreScreen(),
              CollegesScreen.routeName: (_) => const CollegesScreen(),
              ProfileScreen.routeName: (_) => const ProfileScreen(),
              CollegeDetailScreen.routeName: (_) => const CollegeDetailScreen(),
              SavedCareersScreen.routeName: (_) => const SavedCareersScreen(),
              QuizScreen.routeName: (_) => const QuizScreen(),
              QuizResultScreen.routeName: (_) => const QuizResultScreen(),
              CourseDetailScreen.routeName: (context) {
                final args =
                    ModalRoute.of(context)!.settings.arguments as String;
                return CourseDetailScreen(courseName: args);
              },
            },
          );
        },
      ),
    );
  }

  ThemeData _buildDarkTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF1E88E5), // Kashmir Blue
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: const Color(0xFF121212),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF1E1E1E),
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFF7043), // Sunset Orange
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          elevation: 3,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: const Color(0xFF1E88E5),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF1E88E5),
          side: const BorderSide(color: Color(0xFF1E88E5), width: 1.5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
