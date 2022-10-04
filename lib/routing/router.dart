import 'package:flutter/material.dart';
import 'package:radianteam_website/pages/components/components.dart';
import 'package:radianteam_website/pages/contactus/contactus.dart';
import 'package:radianteam_website/pages/framework/framework.dart';
import 'package:radianteam_website/pages/main/main.dart';
import 'package:radianteam_website/pages/noncommercial/noncommercial.dart';
import 'package:radianteam_website/pages/projects/projects.dart';
import 'package:radianteam_website/pages/roadmap/roadmap.dart';
import 'package:radianteam_website/pages/sourcecode/sourcecode.dart';
import 'package:radianteam_website/pages/team/team.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case MainPage.route:
      return _getPageRoute(const MainPage(), settings);
    case FrameworkPage.route:
      return _getPageRoute(const FrameworkPage(), settings);
    case ComponentsPage.route:
      return _getPageRoute(const ComponentsPage(), settings);
    case ProjectsPage.route:
      return _getPageRoute(const ProjectsPage(), settings);
    case NonCommercialPage.route:
      return _getPageRoute(const NonCommercialPage(), settings);
    case RoadmapPage.route:
      return _getPageRoute(const RoadmapPage(), settings);
    case TeamPage.route:
      return _getPageRoute(const TeamPage(), settings);
    case SourceCodePage.route:
      return _getPageRoute(const SourceCodePage(), settings);
    case ContactUsPage.route:
      return _getPageRoute(const ContactUsPage(), settings);
    default:
      return _getPageRoute(const MainPage(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return MaterialPageRoute(builder: (context) => child, settings: settings);
}
