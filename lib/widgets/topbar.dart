import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radianteam_website/components/mainmenubutton.dart';
import 'package:radianteam_website/pages/components.dart';
import 'package:radianteam_website/pages/contactus.dart';

import 'package:radianteam_website/pages/framework.dart';
import 'package:radianteam_website/pages/noncommercial.dart';
import 'package:radianteam_website/pages/projects.dart';
import 'package:radianteam_website/pages/sourcecode.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  Widget _buildFullBar(BuildContext context) {
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
                    'images/radian_logo.svg',
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
              text: 'Source code',
              route: SourceCodePage.route,
            ),
            MainMenuButton(
              text: 'Contact us',
              route: ContactUsPage.route,
            ),
            MainMenuButton(
              icon: 'images/lang_us.svg',
              text: 'English',
              items: const ['English', 'German'],
              route: NonCommercialPage.route,
            )
          ],
        )
      ],
    ));
  }

  Widget _buildHiddenBar(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Row(
          children: [
            const InkWell(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 0, 15),
                child: Icon(Icons.menu),
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(
                    'images/radian_logo.svg',
                    width: 100,
                  )),
            ),
            const Spacer(),
            MainMenuButton(
              icon: 'images/lang_us.svg',
              items: const ['English', 'German'],
              route: NonCommercialPage.route,
            ),
          ],
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 900) {
      return _buildHiddenBar(context);
    }

    return _buildFullBar(context);
  }
}
