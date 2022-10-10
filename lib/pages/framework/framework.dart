import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/footer/footerfull.dart';
import 'package:radianteam_website/widgets/landingbanner/landingbanner.dart';

class FrameworkPage extends StatelessWidget {
  static const String title = 'Framework';
  static const String route = '/framework';

  const FrameworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: "Framework",
      child: SingleChildScrollView(
        child: Column(
          children: const [
            LandingBanner(
              caption: 'Nanoservice framework\nand ready-made solutions',
              description:
                  'Build microservices and monoliths with REPP\ninteractions and ready-made workers and adapters!',
              buttonText: 'Source code',
              buttonExternalLink: "https://github.com/radianteam/framework",
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
        ),
      ),
    );
  }
}
