import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';
import 'package:radianteam_website/widgets/landingbanner/landingbanner.dart';

class SourceCodePage extends StatelessWidget {
  static const String title = 'Source code';
  static const String route = '/sourcecode';

  const SourceCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Source code",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [
            LandingBanner(
              caption: 'Explore our source code and pre-built solutions',
              description:
                  'Follow our repositories, use it in your projects! Pull requests are welcomed!',
              buttonText: 'Goto github',
              buttonExternalLink: "https://github.com/radianteam",
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
