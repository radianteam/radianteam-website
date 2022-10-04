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
      return _getPageRoute(const MainPage());
    case FrameworkPage.route:
      return _getPageRoute(const FrameworkPage());
    case ComponentsPage.route:
      return _getPageRoute(const ComponentsPage());
    case ProjectsPage.route:
      return _getPageRoute(const ProjectsPage());
    case NonCommercialPage.route:
      return _getPageRoute(const NonCommercialPage());
    case RoadmapPage.route:
      return _getPageRoute(const RoadmapPage());
    case TeamPage.route:
      return _getPageRoute(const TeamPage());
    case SourceCodePage.route:
      return _getPageRoute(const SourceCodePage());
    case ContactUsPage.route:
      return _getPageRoute(const ContactUsPage());
    default:
      return _getPageRoute(const MainPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
