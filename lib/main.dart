import 'package:flutter/material.dart';
import 'package:shopping/pages/tabs.page.dart';
import 'package:shopping/themes/dark-yellow.theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: darkYellowTheme(),
      // theme: darkTheme(),
      home: const DefaultTabController(
        // Utilizado para trabalhar com tabs
        length: 3, // Quantidade de tabs
        child: TabsPage(), // qual página deve chamar
      ),
    );
  }
}
