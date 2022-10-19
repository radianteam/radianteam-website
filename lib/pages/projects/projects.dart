import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';
import 'package:radianteam_website/widgets/landingbanner/landingbanner.dart';

class ProjectsPage extends StatelessWidget {
  static const String title = 'Projects';
  static const String route = '/projects';

  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Projects",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [
            LandingBanner(
              caption: 'SaaS and self-hosted for business and education',
              description:
                  'Setup your own instance of our projects or use them as a subscription service!',
              buttonText: 'Contact us',
              picture: 'images/banner_bird.svg',
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color.fromARGB(255, 100, 161, 16),
                    Color.fromARGB(255, 77, 206, 57)
                  ])),
            ),
            FooterFull()
          ],
        )));
  }
}
