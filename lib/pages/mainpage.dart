import 'package:flutter/material.dart';
import 'package:radianteam_website/components/landingbanner.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class MainPage extends StatelessWidget {
  static const String route = '/';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [
      TopBar(),
      LandingBanner(
        caption: 'Cloud native framework,\nlibraries and projects',
        description:
            'Try nanoservice framework, use ready-made components,\nenjoy our projects, join our community!',
        buttonText: 'Contact us',
        picture: 'images/banner_bird.svg',
      )
    ]);
  }
}
