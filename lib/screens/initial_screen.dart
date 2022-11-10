import 'package:flutter/material.dart';
<<<<<<< Updated upstream
import 'package:testando/components/task.dart';
=======
import 'package:tasks/components/task.dart';
import 'package:tasks/screens/form_screen.dart';
>>>>>>> Stashed changes

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
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
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
