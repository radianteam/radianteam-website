import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radianteam_website/constants/controllers.dart';
import 'package:radianteam_website/constants/mainmenu.dart';
import 'package:radianteam_website/helpers/localnavigator.dart';
import 'package:radianteam_website/pages/main/main.dart';

import 'package:radianteam_website/widgets/mainmenu/mainmenufull.dart';

class FullLayout extends StatelessWidget {
  const FullLayout({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(children: [
      Material(
          child: Row(
        children: [
          SizedBox(
            width: screenWidth * 0.1,
          ),
          InkWell(
            onTap: () {
              navigationController.navigateTo(MainPage.title, MainPage.route);
            },
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: SvgPicture.asset(
                  'images/radian_logo.svg',
                  width: 100,
                )),
          ),
          const Spacer(),
          Flex(
              direction: Axis.horizontal,
              children: [MainMenuFull(items: mainMenuContent)]),
          InkWell(
            onTap: () {
              navigationController.navigateTo(MainPage.title, MainPage.route);
            },
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 23, horizontal: 15),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "images/lang_us.svg",
                      width: 25,
                      clipBehavior: Clip.none,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("English")
                  ],
                )),
          ),
          SizedBox(
            width: screenWidth * 0.1,
          )
        ],
      )),
      Expanded(child: localNavigator())
    ]);
  }
}
