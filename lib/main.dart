import 'package:flutter/material.dart';
import 'package:radianteam_website/helpers/notransitionbuilder.dart';
import 'package:radianteam_website/pages/components.dart';
import 'package:radianteam_website/pages/contactus.dart';
import 'package:radianteam_website/pages/framework.dart';
import 'package:radianteam_website/pages/ideas.dart';
import 'package:radianteam_website/pages/mainpage.dart';
import 'package:radianteam_website/pages/noncommercial.dart';
import 'package:radianteam_website/pages/projects.dart';
import 'package:radianteam_website/pages/sourcecode.dart';
import 'package:radianteam_website/pages/team.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            pageTransitionsTheme: PageTransitionsTheme(builders: {
          for (final platform in TargetPlatform.values)
            platform: const NoTransitionsBuilder()
        })),
        routes: {
          MainPage.route: (context) => const MainPage(),
          FrameworkPage.route: (context) => const FrameworkPage(),
          ComponentsPage.route: (context) => const ComponentsPage(),
          ProjectsPage.route: (context) => const ProjectsPage(),
          NonCommercialPage.route: (context) => const NonCommercialPage(),
          IdeasPage.route: (context) => const IdeasPage(),
          TeamPage.route: (context) => const TeamPage(),
          SourceCodePage.route: (context) => const SourceCodePage(),
          ContactUsPage.route: (context) => const ContactUsPage()
        });
  }
}
