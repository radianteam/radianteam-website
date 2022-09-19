import 'package:flutter/material.dart';
import 'package:radianteam_website/pages/components.dart';

import 'dart:html' as html;

enum ComponentsMenu { notifications, headlessCMS, apiGateway }

class ComponentsMenuItem extends StatelessWidget {
  const ComponentsMenuItem({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ComponentsMenu>(
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Text('Components'),
        ),
        onSelected: (value) {
          Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 0),
                pageBuilder: (context, __, ___) => const ComponentsPage()),
          );
          html.window.history
              .pushState(null, 'Components', ComponentsPage.route);
        },
        // Callback that sets the selected popup menu item.
        itemBuilder: (BuildContext context) => <PopupMenuEntry<ComponentsMenu>>[
              const PopupMenuItem<ComponentsMenu>(
                value: ComponentsMenu.notifications,
                child: Text('Notifications'),
              ),
              const PopupMenuItem<ComponentsMenu>(
                value: ComponentsMenu.headlessCMS,
                child: Text('Headless CMS'),
              ),
              const PopupMenuItem<ComponentsMenu>(
                value: ComponentsMenu.apiGateway,
                child: Text('API gateway'),
              ),
            ]);
  }
}
