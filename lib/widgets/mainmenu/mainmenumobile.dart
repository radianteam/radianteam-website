import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:radianteam_website/components/mainmenubutton.dart';

class MainMenuMobile extends StatelessWidget {
  const MainMenuMobile({super.key});

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.all(20),
                  child: SvgPicture.asset(
                    'images/radian_logo.svg',
                    width: 100,
                  )),
            ),
            const Spacer(),
            MainMenuButton(
                icon: 'images/lang_us.svg', items: const ['English', 'German']),
          ],
        )
      ],
    ));
  }
}
