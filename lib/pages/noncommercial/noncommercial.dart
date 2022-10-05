import 'package:flutter/material.dart';

class NonCommercialPage extends StatelessWidget {
  static const String title = 'Non-commercial';
  static const String route = '/noncommercial';

  const NonCommercialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Title(
        title: "Radian - Non-commercial",
        color: Colors.white,
        child: Column(
          children: [
            const Text('Non-commercial'),
            Expanded(
                child: Container(
              color: Colors.brown,
            ))
          ],
        ));
  }
}
