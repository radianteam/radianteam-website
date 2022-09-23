import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radianteam_website/components/mainmenubutton.dart';
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
    return Material(
        child: Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    'radian_logo.svg',
                    width: 100,
                  )),
            ),
            const Spacer(),
            MainMenuButton(
              text: 'Framework',
              items: const [
                'Concept',
                '4 types of interaction',
                'Architecture',
                'Adapters',
                'Workers'
              ],
              route: FrameworkPage.route,
            ),
            MainMenuButton(
              text: 'Components',
              items: const ['Notifications', 'Headless LMS', 'API Gateway'],
              route: ComponentsPage.route,
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
              route: ProjectsPage.route,
            ),
            MainMenuButton(
              text: 'Non-commercial',
              items: const [
                'Happy bank',
                'Queue management',
                'Wish list',
                'URL shortener'
              ],
              route: NonCommercialPage.route,
            ),
            MainMenuButton(
              text: 'Ideas',
              route: IdeasPage.route,
            ),
            MainMenuButton(
              text: 'Team',
              route: TeamPage.route,
            ),
            MainMenuButton(
              text: 'Source code',
              route: SourceCodePage.route,
            ),
            MainMenuButton(
              text: 'Contact us',
              route: ContactUsPage.route,
            ),
            MainMenuButton(
              icon: 'lang_us.svg',
              text: 'English',
              items: const ['English', 'German'],
              route: NonCommercialPage.route,
            ),
            const SizedBox(
              width: 25,
            )
          ],
        )
      ],
    ));
  }
}
