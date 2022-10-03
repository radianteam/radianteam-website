import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar/topbar.dart';

class ProjectsPage extends StatelessWidget {
  static const String route = '/projects';

  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Projects'),
        Expanded(
            child: Container(
          color: Colors.lightBlue,
        ))
      ],
    );
  }
}
