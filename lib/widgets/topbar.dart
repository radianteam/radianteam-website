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
          children: const [
            MainMenuButton(
              text: 'Framework',
            ),
            MainMenuButton(
              text: 'Components',
            ),
            MainMenuButton(
              text: 'Projects',
            ),
            MainMenuButton(
              text: 'Non-commercial',
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
