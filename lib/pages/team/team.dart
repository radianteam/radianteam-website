import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar/topbar.dart';

class TeamPage extends StatelessWidget {
  static const String route = '/team';

  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Team'),
        Expanded(
            child: Container(
          color: Colors.indigo,
        ))
      ],
    );
  }
}
