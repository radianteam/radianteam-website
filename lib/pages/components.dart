import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class ComponentsPage extends StatelessWidget {
  static const String route = '/components';

  const ComponentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Components'),
        Expanded(
            child: Container(
          color: Colors.grey,
        ))
      ],
    );
  }
}
