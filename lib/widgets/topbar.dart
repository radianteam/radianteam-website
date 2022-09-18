import 'package:flutter/material.dart';
import 'package:radianteam_website/pages/components.dart';
import 'package:radianteam_website/pages/contactus.dart';
import 'package:radianteam_website/pages/framework.dart';
import 'package:radianteam_website/pages/ideas.dart';
import 'package:radianteam_website/pages/noncommercial.dart';
import 'package:radianteam_website/pages/projects.dart';
import 'package:radianteam_website/pages/sourcecode.dart';
import 'package:radianteam_website/pages/team.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(FrameworkPage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Framework"),
                ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ComponentsPage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Components"),
                ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ProjectsPage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Projects"),
                ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(NonCommercialPage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Non-commercial"),
                ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(IdeasPage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Ideas"),
                ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(TeamPage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Team"),
                ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(SourceCodePage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Source code"),
                ])),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ContactUsPage.route);
                },
                child: Row(children: const [
                  Icon(Icons.favorite),
                  Text("Contact us"),
                ]))
          ],
        )
      ],
    );
  }
}
