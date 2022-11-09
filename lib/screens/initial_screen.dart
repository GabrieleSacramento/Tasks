import 'package:flutter/material.dart';
import 'package:tasks/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: ListView(
          children: const [
            Task('Aprender flutter', 'assets/images/flutter.png', 3),
            Task('Aprender Dart', 'assets/images/dart.png', 4),
            Task('Aprender HTML', 'assets/images/html.png', 3),
            Task('Aprender Figma', 'assets/images/figma.png', 2),
            Task('Criar Interface', 'assets/images/ui_2.png', 2),
            Task('Criando App com flutter', 'assets/images/flutter_2.png', 3),
            Task('Aprender phyton', 'assets/images/Python.png', 4),
            Task('Ux para iniciantes', 'assets/images/ux.png', 3),
            Task('Design system', 'assets/images/design_system_2.png', 4),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: const Icon(Icons.remove_red_eye),
      ),
    );
  }
}
