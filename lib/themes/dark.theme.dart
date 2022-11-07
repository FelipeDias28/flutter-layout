import 'package:flutter/material.dart';

const brightness = Brightness.dark; // as cores iram tender para o branco
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData darkTheme() {
  return ThemeData(
    // primarySwatch: primaryColor,
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: Colors.black26,
    textTheme: const TextTheme(
      // Tema geral
      bodyText1: TextStyle(color: Colors.red),
      button: TextStyle(color: Colors.green),
      // headline5: TextStyle(color: Colors.deepPurple), // Possui valor semântico
    ),
  );
}
