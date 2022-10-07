import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';

class SourceCodePage extends StatelessWidget {
  static const String title = 'Source code';
  static const String route = '/sourcecode';

  const SourceCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Source code",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [Text('Source code'), FooterFull()],
        )));
  }
}
