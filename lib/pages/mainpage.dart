import 'package:flutter/material.dart';
import 'package:radianteam_website/widgets/topbar.dart';

class MainPage extends StatelessWidget {
  static const String route = '/';

  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TopBar(),
      Expanded(child: Container(color: Colors.white))
    ]);
  }
}
