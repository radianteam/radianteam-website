import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar/topbar.dart';

class RoadmapPage extends StatelessWidget {
  static const String route = '/roadmap';

  const RoadmapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Roadmap'),
        Expanded(
            child: Container(
          color: Colors.orange,
        ))
      ],
    );
  }
}
