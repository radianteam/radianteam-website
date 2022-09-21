import 'package:flutter/material.dart';
import 'package:radianteam_website/components/mainmenubutton.dart';

import 'dart:html' as html;

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  Widget buildMenuButton(
      BuildContext context, Widget page, String route, String text) {
    return TextButton(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(text),
        ),
        onPressed: () {
          Navigator.push(
            context,
            PageRouteBuilder(
                transitionDuration: const Duration(milliseconds: 0),
                pageBuilder: (context, __, ___) => page),
          );
          html.window.history.pushState(null, text, route);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Row(
          children: [
            MainMenuButton(
              text: 'Framework',
              items: const [
                'Concept',
                '4 types of interaction',
                'Architecture',
                'Adapters',
                'Workers'
              ],
            ),
            MainMenuButton(
              text: 'Components',
              items: const ['Notifications', 'Headless LMS', 'API Gateway'],
            ),
            MainMenuButton(
              text: 'Projects',
              items: const [
                'Learning management System',
                'Learning Experience Platform',
                'SupperApp',
                'Smart Assistant',
                'Open DVR',
                'Multiagent system'
              ],
            ),
            MainMenuButton(
              text: 'Non-commercial',
              items: const [
                'Happy bank',
                'Queue management',
                'Wish list',
                'URL shortener'
              ],
            ),
            MainMenuButton(
              text: 'Ideas',
            ),
            MainMenuButton(
              text: 'Team',
            ),
            MainMenuButton(
              text: 'Source code',
            ),
            MainMenuButton(
              text: 'Contact us',
            ),
          ],
        )
      ],
    ));
  }
}
