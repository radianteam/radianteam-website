import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';

class ProjectsPage extends StatelessWidget {
  static const String title = 'Projects';
  static const String route = '/projects';

  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Projects",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [Text('Projects'), FooterFull()],
        )));
  }
}
