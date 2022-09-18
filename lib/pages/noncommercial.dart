import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class NonCommercialPage extends StatelessWidget {
  static const String route = '/noncommercial';

  const NonCommercialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Non-commercial'),
        Expanded(
            child: Container(
          color: Colors.brown,
        ))
      ],
    );
  }
}
