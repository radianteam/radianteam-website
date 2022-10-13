import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';
import 'package:radianteam_website/widgets/landingbanner/landingbanner.dart';

class ComponentsPage extends StatelessWidget {
  static const String title = 'Components';
  static const String route = '/components';

  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Components",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [
            LandingBanner(
              caption: 'Ready-made microservices and business solutions',
              description:
                  'Powerful notifications, API gateway and headless CMS for your own projects! Free and open-source!',
              buttonText: 'Contact us',
              picture: 'images/banner_bird.svg',
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color.fromARGB(255, 101, 16, 161),
                    Color.fromARGB(255, 144, 57, 206)
                  ])),
            ),
            FooterFull()
          ],
        )));
  }
}
