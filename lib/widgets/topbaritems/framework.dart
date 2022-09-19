import 'package:flutter/material.dart';
import 'package:radianteam_website/pages/framework.dart';

import 'dart:html' as html;

enum FrameworkMenu {
  concept,
  fourInteractions,
  architecture,
  techImpl,
  golangImpl
}

class FrameworkMenuItem extends StatelessWidget {
  const FrameworkMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<FrameworkMenu>(
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text('Framework'),
        ),
        onSelected: (value) {
          Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 0),
                pageBuilder: (context, __, ___) => const FrameworkPage()),
          );
          html.window.history.pushState(null, 'Framework', FrameworkPage.route);
        },
        // Callback that sets the selected popup menu item.
        itemBuilder: (BuildContext context) => <PopupMenuEntry<FrameworkMenu>>[
              const PopupMenuItem<FrameworkMenu>(
                value: FrameworkMenu.concept,
                child: Text('Concept'),
              ),
              const PopupMenuItem<FrameworkMenu>(
                value: FrameworkMenu.fourInteractions,
                child: Text('Four interactions'),
              ),
              const PopupMenuItem<FrameworkMenu>(
                value: FrameworkMenu.architecture,
                child: Text('Architecture'),
              ),
              const PopupMenuItem<FrameworkMenu>(
                value: FrameworkMenu.techImpl,
                child: Text('Tech implementation'),
              ),
              const PopupMenuItem<FrameworkMenu>(
                value: FrameworkMenu.golangImpl,
                child: Text('Golang implementation'),
              ),
            ]);
  }
}
