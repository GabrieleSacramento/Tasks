import 'package:flutter/material.dart';
import 'package:testando/screens/initial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Tarefas - Detalhes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitialScreen(),
    );
  }
}
