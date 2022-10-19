import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';
import 'package:radianteam_website/widgets/landingbanner/landingbanner.dart';

class NonCommercialPage extends StatelessWidget {
  static const String title = 'Non-commercial';
  static const String route = '/noncommercial';

  const NonCommercialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Non-commercial",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [
            LandingBanner(
              caption: 'Useful projects for free and fun',
              description:
                  'Explore example source code, test it, deploy it, share it! Make pull requests, do your best!',
              buttonText: 'Contact us',
              picture: 'images/banner_bird.svg',
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                    Color.fromARGB(255, 16, 142, 161),
                    Color.fromARGB(255, 57, 189, 206)
                  ])),
            ),
            FooterFull()
          ],
        )));
  }
}
