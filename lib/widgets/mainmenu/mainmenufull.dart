import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:radianteam_website/constants/controllers.dart';
import 'package:radianteam_website/widgets/mainmenu/mainmenuitem.dart';

class MainMenuFull extends StatelessWidget {
  final List<MainMenuItem> items;

  const MainMenuFull({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (var i = 0; i < items.length; i++)
          InkWell(
            onTap: () {
              if (items[i].route != null) {
                navigationController.navigateTo(items[i].text, items[i].route!);
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 12),
              child: (items[i].icon != null)
                  ? Row(
                      children: [
                        SvgPicture.asset(
                          items[i].icon!,
                          width: 25,
                          clipBehavior: Clip.none,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(items[i].text)
                      ],
                    )
                  : Text(items[i].text),
            ),
          )
      ],
    );
  }
}
