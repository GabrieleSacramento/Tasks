import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:testando/screens/initial_screen.dart';
=======
import 'package:tasks/screens/form_screen.dart';
import 'package:tasks/screens/initial_screen.dart';
>>>>>>> Stashed changes

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitialScreen(),
    );
  }
}
