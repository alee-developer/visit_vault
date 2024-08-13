import 'package:flutter/material.dart';
import 'package:visit_vault/views/utils/themes/dark_theme.dart';
import 'package:visit_vault/views/utils/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      home: Container(),
    );
  }
}
