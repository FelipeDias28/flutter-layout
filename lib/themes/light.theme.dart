import 'package:flutter/material.dart';

const brightness = Brightness.light; // as cores iram tender para o branco
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData lightTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.white,
    textTheme: const TextTheme(
      // Tema geral
      bodyText1: TextStyle(color: Colors.red),
      button: TextStyle(color: Colors.green),
      // headline5: TextStyle(color: Colors.deepPurple), // Possui valor semântico
    ),
  );
}
