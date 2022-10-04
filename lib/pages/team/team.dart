import 'package:flutter/material.dart';

class TeamPage extends StatelessWidget {
  static const String title = 'Team';
  static const String route = '/team';

  const TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Team'),
        Expanded(
            child: Container(
          color: Colors.indigo,
        ))
      ],
    );
  }
}
