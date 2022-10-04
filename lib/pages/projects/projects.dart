import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  static const String title = 'Projects';
  static const String route = '/projects';

  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Projects'),
        Expanded(
            child: Container(
          color: Colors.lightBlue,
        ))
      ],
    );
  }
}
