import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildAppTheme() {
  // Jammu & Kashmir inspired color palette
  const kashmirBlue = Color(0xFF576d8e); // Deep blue of clear skies
  const pineGreen = Color(0xFF2E7D32); // Deep forest green
  const mountainGray = Color(0xFF8B9DC3); // Misty mountain gray
  const forestBrown = Color(0xFF8D6E63); // Earthy brown of forest floor
  const snowWhite = Color(0xFFF8F9FA); // Snow-capped peaks white
  const sunsetOrange = Color(0xFFFF8A65); // Warm sunset over mountains
  const natureTrail = Color(0xFFE6D7BB); // Soft beige of mountain trails
  const lightLavender = Color(0xFFE1BEE7); // Light lavender for widgets

  final colorScheme = ColorScheme.fromSeed(
    seedColor: kashmirBlue,
    primary: kashmirBlue,
    secondary: sunsetOrange,
    tertiary: pineGreen,
    surface: snowWhite,
  );

  return ThemeData(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: natureTrail,
    appBarTheme: AppBarTheme(
      backgroundColor: snowWhite,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: GoogleFonts.poppins(
        color: kashmirBlue,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
      iconTheme: const IconThemeData(color: kashmirBlue),
      shadowColor: mountainGray.withValues(alpha: 0.3),
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: sunsetOrange,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
        elevation: 3,
        shadowColor: forestBrown.withValues(alpha: 0.3),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: kashmirBlue,
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: kashmirBlue,
        side: BorderSide(color: kashmirBlue, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        textStyle: const TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
    cardTheme: CardThemeData(
      color: lightLavender.withValues(alpha: 0.3),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: kashmirBlue.withValues(alpha: 0.1),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: mountainGray.withValues(alpha: 0.3)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: mountainGray.withValues(alpha: 0.3)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: kashmirBlue, width: 2),
      ),
    ),
    chipTheme: ChipThemeData(
      labelStyle:
          const TextStyle(color: kashmirBlue, fontWeight: FontWeight.w500),
      secondaryLabelStyle:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    useMaterial3: true,
  );
}
