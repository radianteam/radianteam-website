import 'package:radianteam_website/pages/components/components.dart';
import 'package:radianteam_website/pages/contactus/contactus.dart';
import 'package:radianteam_website/pages/framework/framework.dart';
import 'package:radianteam_website/pages/noncommercial/noncommercial.dart';
import 'package:radianteam_website/pages/projects/projects.dart';
import 'package:radianteam_website/pages/roadmap/roadmap.dart';
import 'package:radianteam_website/pages/sourcecode/sourcecode.dart';
import 'package:radianteam_website/pages/team/team.dart';

import '../widgets/mainmenu/mainmenuitem.dart';

List<MainMenuItem> mainMenuContent = [
  MainMenuItem(text: FrameworkPage.title, route: FrameworkPage.route),
  MainMenuItem(text: ComponentsPage.title, route: ComponentsPage.route),
  MainMenuItem(text: ProjectsPage.title, route: ProjectsPage.route),
  MainMenuItem(text: NonCommercialPage.title, route: NonCommercialPage.route),
  MainMenuItem(text: RoadmapPage.title, route: RoadmapPage.route),
  MainMenuItem(text: TeamPage.title, route: TeamPage.route),
  MainMenuItem(text: SourceCodePage.title, route: SourceCodePage.route),
  MainMenuItem(text: ContactUsPage.title, route: ContactUsPage.route),
];
