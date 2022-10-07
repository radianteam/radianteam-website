import 'package:flutter/material.dart';

import 'package:radianteam_website/widgets/footer/footerfull.dart';

class NonCommercialPage extends StatelessWidget {
  static const String title = 'Non-commercial';
  static const String route = '/noncommercial';

  const NonCommercialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Non-commercial",
        color: Colors.white,
        child: SingleChildScrollView(
            child: Column(
          children: const [Text('Non-commercial'), FooterFull()],
        )));
  }
}
