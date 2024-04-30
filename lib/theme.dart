import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
  ),
  appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black)),
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.black,
    primary: Colors.black,
    secondary: const Color(0xFF5cb85c),
    tertiary: const Color(0xFF818a91),
  ),
  highlightColor: const Color(0xFF373a3c),
);

// ThemeData(
//     useMaterial3: true,
//     primaryColor: const Color(0xFF5cb85c),
//     primaryTextTheme: GoogleFonts.ptSerifTextTheme(
//       const TextTheme(
//           bodyLarge: TextStyle(color: Colors.black),
//           bodyMedium: TextStyle(color: Colors.black),
//           bodySmall: TextStyle(color: Colors.black)),
//     )

//     // textTheme: GoogleFonts.ptSerifTextTheme(),
//     );
