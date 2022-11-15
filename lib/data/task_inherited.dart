import 'package:flutter/material.dart';

import '../components/task.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  final List<Task> taskList = [
    Task('Aprender flutter', 'assets/images/flutter.png', 3),
    Task('Aprender Dart', 'assets/images/dart.png', 4),
    Task('Aprender HTML', 'assets/images/html.png', 3),
    Task('Aprender Figma', 'assets/images/figma.png', 2),
    Task('Criar Interface', 'assets/images/ui_2.png', 2),
    Task('Criando App com flutter', 'assets/images/flutter_2.png', 3),
    Task('Aprender phyton', 'assets/images/Python.png', 4),
    Task('Ux para iniciantes', 'assets/images/ux.png', 3),
    Task('Design system', 'assets/images/design_system_2.png', 4),
  ];

  void newTask(String name, String photo, int difficulty) {
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }
}
