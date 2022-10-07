import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';

class TeamPage extends StatelessWidget {
  static const String title = 'Team';
  static const String route = '/team';

  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Team",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [Text('Team'), FooterFull()],
        )));
  }
}
