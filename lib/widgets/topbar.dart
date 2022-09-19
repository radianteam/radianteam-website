import 'package:flutter/material.dart';
import 'package:radianteam_website/pages/contactus.dart';
import 'package:radianteam_website/widgets/topbaritems/framework.dart';
import 'package:radianteam_website/widgets/topbaritems/components.dart';
import 'package:radianteam_website/widgets/topbaritems/projects.dart';
import 'package:radianteam_website/widgets/topbaritems/noncommercial.dart';
import 'package:radianteam_website/pages/ideas.dart';
import 'package:radianteam_website/pages/sourcecode.dart';
import 'package:radianteam_website/pages/team.dart';

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
            const FrameworkMenuItem(),
            const ComponentsMenuItem(),
            const ProjectsMenuItem(),
            const NonCommercialMenuItem(),
            buildMenuButton(
                context, const IdeasPage(), IdeasPage.route, "Ideas"),
            buildMenuButton(context, const TeamPage(), TeamPage.route, "Team"),
            buildMenuButton(context, const SourceCodePage(),
                SourceCodePage.route, "Source code"),
            buildMenuButton(context, const ContactUsPage(), ContactUsPage.route,
                "Contact us"),
          ],
        )
      ],
    ));
  }
}
