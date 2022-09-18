import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class FrameworkPage extends StatelessWidget {
  static const String route = '/framework';

  const FrameworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Framework'),
        Expanded(
            child: Container(
          color: Colors.purple,
        ))
      ],
    );
  }
}
