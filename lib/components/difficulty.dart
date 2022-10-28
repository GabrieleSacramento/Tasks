// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class difficulty extends StatefulWidget {
  final int difficultyLevel;

  const difficulty({
    required this.difficultyLevel,
    Key? key,
  }) : super(key: key);

  @override
  State<difficulty> createState() => _difficultyState();
}

class _difficultyState extends State<difficulty> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: (widget.difficultyLevel >= 1 ? Colors.blue : Colors.blue[100]),
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.difficultyLevel >= 2 ? Colors.blue : Colors.blue[100]),
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.difficultyLevel >= 3 ? Colors.blue : Colors.blue[100]),
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.difficultyLevel >= 4 ? Colors.blue : Colors.blue[100]),
        ),
        Icon(
          Icons.star,
          size: 15,
          color: (widget.difficultyLevel >= 5 ? Colors.blue : Colors.blue[100]),
        ),
      ],
    );
  }
}
