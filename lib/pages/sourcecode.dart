import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class SourceCodePage extends StatelessWidget {
  static const String route = '/sourcecode';

  const SourceCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopBar(),
        const Text('Source code'),
        Expanded(
            child: Container(
          color: Colors.white,
        ))
      ],
    );
  }
}
