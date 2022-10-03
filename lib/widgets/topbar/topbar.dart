import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/mainmenu/mainmenufull.dart';
import 'package:radianteam_website/widgets/mainmenu/mainmenumobile.dart';

import '../../helpers/responsive.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      full: MainMenuFull(),
      medium: MainMenuMobile(),
      small: MainMenuMobile(),
    );
  }
}
