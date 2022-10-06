import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/landingbanner/landingbanner.dart';
import 'package:radianteam_website/widgets/footer/footerfull.dart';

class MainPage extends StatelessWidget {
  static const String title = 'Radian';
  static const String route = '/';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Main",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(children: const [
          LandingBanner(
            caption: 'Cloud native framework,\nlibraries and projects',
            description:
                'Try nanoservice framework, use ready-made components,\nenjoy our projects, join our community!',
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
        ])));
  }
}
