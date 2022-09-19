import 'package:flutter/material.dart';
import 'package:radianteam_website/pages/projects.dart';

import 'dart:html' as html;

enum ProjectsMenu { lms, lxp, supperApp, assistant, cloudDVR, multiagents }

class ProjectsMenuItem extends StatelessWidget {
  const ProjectsMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ProjectsMenu>(
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text('Projects'),
        ),
        onSelected: (value) {
          Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 0),
                pageBuilder: (context, __, ___) => const ProjectsPage()),
          );
          html.window.history.pushState(null, 'Projects', ProjectsPage.route);
        },
        // Callback that sets the selected popup menu item.
        itemBuilder: (BuildContext context) => <PopupMenuEntry<ProjectsMenu>>[
              const PopupMenuItem<ProjectsMenu>(
                value: ProjectsMenu.lms,
                child: Text('Leraning Management System'),
              ),
              const PopupMenuItem<ProjectsMenu>(
                value: ProjectsMenu.lxp,
                child: Text('Learning experience platform'),
              ),
              const PopupMenuItem<ProjectsMenu>(
                value: ProjectsMenu.supperApp,
                child: Text('SuperApp'),
              ),
              const PopupMenuItem<ProjectsMenu>(
                value: ProjectsMenu.assistant,
                child: Text('Smart assistant'),
              ),
              const PopupMenuItem<ProjectsMenu>(
                value: ProjectsMenu.cloudDVR,
                child: Text('Cloud DVR'),
              ),
              const PopupMenuItem<ProjectsMenu>(
                value: ProjectsMenu.multiagents,
                child: Text('Multiagent system'),
              ),
            ]);
  }
}
