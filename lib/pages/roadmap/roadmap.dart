import 'package:flutter/material.dart';

class RoadmapPage extends StatelessWidget {
  static const String title = 'Roadmap';
  static const String route = '/roadmap';

  const RoadmapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Roadmap",
        color: Colors.white,
        child: Column(
          children: [
            const Text('Roadmap'),
            Expanded(
                child: Container(
              color: Colors.orange,
            ))
          ],
        ));
  }
}
