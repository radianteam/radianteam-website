import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar/topbar.dart';

class FrameworkPage extends StatelessWidget {
  static const String route = '/framework';

  const FrameworkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const TopBar(),
        Container(
            width: double.infinity,
            color: Colors.white,
            child: const Center(
                child: Text('Framework',
                    style: TextStyle(
                      backgroundColor: Colors.white,
                    )))),
        Expanded(
            child: Container(
          color: Colors.purple,
        ))
      ],
    );
  }
}
