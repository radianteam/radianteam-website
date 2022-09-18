import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class IdeasPage extends StatelessWidget {
  static const String route = '/ideas';

  const IdeasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Ideas'),
        Expanded(
            child: Container(
          color: Colors.orange,
        ))
      ],
    );
  }
}
